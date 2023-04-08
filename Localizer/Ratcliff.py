import difflib

def ratcliff_obershelp_similarity(a, b):
    # calculate Ratcliff-Obershelp similarity
    s = difflib.SequenceMatcher(None, a, b)
    return s.ratio()

string1 = "%stack_var_-262 = alloca i32, align 4"
string2 = "%stack_var_-259 = alloca i32, align 4"
d = ratcliff_obershelp_similarity(string1, string2)
print(d)