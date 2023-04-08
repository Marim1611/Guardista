from pyjarowinkler import distance

def jaro_winkler_similarity(a, b):
    # calculate Jaro-Winkler similarity
    s = distance.get_jaro_distance(a, b)
    return s

string1 = "morning"
string2 = "evening"
d = jaro_winkler_similarity(string1, string2)
print(d)