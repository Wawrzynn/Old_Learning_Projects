import cs50


while True:
    height = cs50.get_int("Height: ")
    if height >= 1 and height <= 8:
        break

for i in range(height):
    for j in range(height):
        if i + j >= height - 1:
            print("#", end="")
        else:
            print(" ", end="")
    print()

