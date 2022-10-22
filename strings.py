def disemvowel(string_):
    string = []
    string1 = []
    query = ''
    for c in range(0, len(string_)):
        string.append(string_[c])
        string1.append(string_[c])
    
    for i in range(len(string)):
        if string[i] == 'a':
            string1.remove('a')
        if string[i] == 'A':
            string1.remove('A')
        if string[i] == 'e':
            string1.remove('e')
        if string[i] == 'E':
            string1.remove('E')
        if string[i] == 'i':
            string1.remove('i')
        if string[i] == 'I':
            string1.remove('I')
        if string[i] == 'o':
            string1.remove('o')
        if string[i] == 'O':
            string1.remove('O')
        if string[i] == 'u':
            string1.remove('u')
        if string[i] == 'U':
            string1.remove('U')
    
    for z in range(0, len(string1)):
        if z == 0:
            query = string1[z]
        else:
            query += string1[z]

    return query

print(disemvowel("This website is for losers LOL!"))