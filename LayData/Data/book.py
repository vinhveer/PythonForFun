import csv

def csv_to_sql_insert(csv_file):
    with open(csv_file, mode='r', encoding='utf-8') as file:
        reader = csv.DictReader(file)
        for row in reader:
            book_name = row['Book Name']
            authors = row['Authors']
            info = row['Info']
            image_url = row['Image URL']

            # Split info into separate fields
            info_dict = eval(info)

            # Ensure 'Format' key exists in info_dict
            book_format = info_dict.get('Format', '')

            # Ensure 'Release Date' key exists and not empty in info_dict
            release_date = info_dict.get('Release Date', '')
            publication_year = release_date.split()[-1] if release_date else ''

            book_language = info_dict.get('Language', '')
            book_ISBN = info_dict.get('ISBN', '')
            packaging_size = info_dict.get('Dimensions', '')

            # Assuming you have the book_category_id, book_language_id, and book_publisher_id
            # You can replace them with appropriate values
            # This is just an example
            book_category_id = 1
            book_language_id = 1
            book_publisher_id = 1

            # Generate SQL insert statement
            sql_insert = f"INSERT INTO books (book_name, book_category_id, book_description, book_language_id, book_publication_year, book_packaging_size, book_format, book_ISBN, book_publisher_id) VALUES ('{book_name}', {book_category_id}, '{authors}', {book_language_id}, {publication_year}, '{packaging_size}', '{book_format}', '{book_ISBN}', {book_publisher_id});"
            print(sql_insert)

# Replace 'Leaders & Notable People.csv' with the path to your CSV file
csv_to_sql_insert('Leaders & Notable People.csv')
