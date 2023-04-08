def trigram_similarity(a, b):
    # convert to set of trigrams
    a = set([a[i:i+3] for i in range(len(a)-2)])
    b = set([b[i:i+3] for i in range(len(b)-2)])
    # calculate trigram similarity
    s = float(len(a.intersection(b))) / len(a.union(b))
    return s

string1 = "%stack_var_-262 = alloca i32, align 4"
string2 = "%stack_var_-259 = alloca i32, align 4"
d = trigram_similarity(string1, string2)
print(d)