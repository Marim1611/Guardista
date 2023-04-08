def jaccard_distance(a, b):
    # convert to set
    a = set(a)
    b = set(b)
    # calculate jaccard distance
    d = 1 - float(len(a.intersection(b))) / len(a.union(b))
    return d


sentence1 = "%stack_var_-262 = alloca i32, align 4"
sentence2 = "%stack_var_-259 = alloca i32, align 4"
d= jaccard_distance(sentence1.split(), sentence2.split())
print(d)