import sqlparse
from tqdm import tqdm

def parse_sql(file_path):
    with open(file_path, 'r') as file:
        sql = file.read()
    return sqlparse.parse(sql)

def convert_to_dbdiagram(parsed_sql):
    dbdiagram_str = ""
    
    for statement in tqdm(parsed_sql, desc="Converting SQL to dbdiagram", unit="statement"):
        if statement.get_type() == 'CREATE':
            tokens = statement.tokens
            table_name = ""
            columns = []
            constraints = []
            
            for token in tokens:
                if token.ttype is None and token.get_real_name() is not None:
                    table_name = token.get_real_name()
                
                if token.ttype is None and token.get_real_name() is None:
                    if "PRIMARY KEY" in token.value or "FOREIGN KEY" in token.value:
                        constraints.append(token.value)
                    else:
                        columns.append(token.value)
            
            if table_name:
                dbdiagram_str += f"Table {table_name} {{\n"
                for column in columns:
                    dbdiagram_str += f"  {column.strip()},\n"
                for constraint in constraints:
                    dbdiagram_str += f"  {constraint.strip()},\n"
                dbdiagram_str += "}\n\n"
    
    return dbdiagram_str

def save_to_file(output_path, content):
    with open(output_path, 'w') as file:
        file.write(content)

def main():
    input_file = 'tonghop.sql'
    output_file = 'output.dbml'
    
    parsed_sql = parse_sql(input_file)
    dbdiagram_content = convert_to_dbdiagram(parsed_sql)
    save_to_file(output_file, dbdiagram_content)

if __name__ == "__main__":
    main()
