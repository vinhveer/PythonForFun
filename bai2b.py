def xuat_nghiem(x, k):
    for i in range(1, k + 1):
        print(x[i], end=" ")
    print()

def try_combinations(x, i, n, k):
    for j in range(x[i - 1], n - k + i):
        x[i] = j
        if i == k:
            xuat_nghiem(x, k)
        else:
            try_combinations(x, i + 1, n, k)

def main():
    MAX = 50
    x = [0] * MAX

    k = int(input("Nhap k: "))
    n = int(input("Nhap n: "))

    x[0] = 0
    try_combinations(x, 1, n, k)

if __name__ == "__main__":
    main()
