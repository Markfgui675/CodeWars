def disemvowel(string_):
    string = []
    for c in range(0, len(string_)):
        string.append(string_[c])
    
    for i in range(len(string)):
        if string[i] == 'a':
            string.pop(i)
        if string[i] == 'e':
            string.pop(i)
        if string[i] == 'i':
            string.pop(i)
        if string[i] == 'o':
            string.pop(i)
        if string[i] == 'u':
            string.pop(i)

    return len(string)

print(disemvowel('This website is for losers LOL!'))