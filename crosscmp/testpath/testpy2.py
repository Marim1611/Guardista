import testpy


def fun (name):
    res = testpy.addTwo (name, "ayman")
    print (res)


x = input("enter anything\n")

fun(x)



arr = []

for i in range(10):
    arr.append(input("\nenter a new number to the array\n"))


print("your array is : ")
print(arr)

testpy.quickSort(arr, 0, len(arr)-1)


print("array after sorting is: ")
print(arr)




y = input("\n press anything to close")