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

import difflib

def ratcliff_obershelp_similarity(a, b):
    # calculate Ratcliff-Obershelp similarity
    s = difflib.SequenceMatcher(None, a, b)
    return s.ratio()
  
  
def trigram_similarity(a, b):
    # convert to set of trigrams
    a = set([a[i:i+3] for i in range(len(a)-2)])
    b = set([b[i:i+3] for i in range(len(b)-2)])
    # calculate trigram similarity
    s = float(len(a.intersection(b))) / len(a.union(b))
    return s


def sorensen_dice_similarity(a, b):
    # convert to set of bigrams
    a = set([a[i:i+2] for i in range(len(a)-1)])
    b = set([b[i:i+2] for i in range(len(b)-1)])
    # calculate Sorensen-Dice similarity
    s = 2 * float(len(a.intersection(b))) / (len(a) + len(b))
    return s


def jaccard_distance(a, b):
    # convert to set
    a = set(a)
    b = set(b)
    # calculate jaccard distance
    d = 1 - float(len(a.intersection(b))) / len(a.union(b))
    return d