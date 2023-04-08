def sorensen_dice_similarity(a, b):
    # convert to set of bigrams
    a = set([a[i:i+2] for i in range(len(a)-1)])
    b = set([b[i:i+2] for i in range(len(b)-1)])
    # calculate Sorensen-Dice similarity
    s = 2 * float(len(a.intersection(b))) / (len(a) + len(b))
    return s

string1 = "%stack_var_-262 = alloca i32, align 4"
string2 = "%stack_var_-259 = alloca i32, align 4"

d = sorensen_dice_similarity(string1, string2)
print(d)