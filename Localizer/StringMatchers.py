def trigram_similarity(a, b):
    # convert to set of trigrams
    a = set([a[i:i+3] for i in range(len(a)-2)])
    b = set([b[i:i+3] for i in range(len(b)-2)])
    # calculate trigram similarity
    s = float(len(a.intersection(b))) / len(a.union(b))
    return s


import difflib

def ratcliff_obershelp_similarity(a, b):
    # calculate Ratcliff-Obershelp similarity
    s = difflib.SequenceMatcher(None, a, b)
    return s.ratio()

import Levenshtein

def levenshtein_similarity(a, b):
    # calculate Levenshtein similarity
    d = Levenshtein.distance(a, b)
    s = 1 - d / max(len(a), len(b))
    return s


from pyjarowinkler import distance

def jaro_winkler_similarity(a, b):
    # calculate Jaro-Winkler similarity
    s = distance.get_jaro_distance(a, b)
    return s



def jaccard_distance(a, b):
    # convert to set
    a = set(a)
    b = set(b)
    # calculate jaccard distance
    d = 1 - float(len(a.intersection(b))) / len(a.union(b))
    return d



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
print(f"Sorensen-Dice: {d}")





sentence1 = "%stack_var_-262 = alloca i32, align 4"
sentence2 = "%stack_var_-259 = alloca i32, align 4"
d= jaccard_distance(sentence1.split(), sentence2.split())
print(f"Jaccard: {d}")




string1 = "morning"
string2 = "evening"
d = jaro_winkler_similarity(string1, string2)
print(f"Jaro-Winkler: {d}")




sentence1 = "I love dogs"
sentence2 = "I love cats"
d = levenshtein_similarity(sentence1, sentence2)
print(f"Levenstein Matcher: {d}")


string1 = "%stack_var_-262 = alloca i32, align 4"
string2 = "%stack_var_-259 = alloca i32, align 4"
d = trigram_similarity(string1, string2)
print(f"Trigram Matcher: {d}")




string1 = "%stack_var_-262 = alloca i32, align 4"
string2 = "%stack_var_-259 = alloca i32, align 4"
d = ratcliff_obershelp_similarity(string1, string2)
print(f"Ratcliff-Obershelp: {d}")

