def like(names):
    if len(names) == 0:
        return 'no one like this'
    elif len(names) == 1:
        return f'{names[0]} like this'
    elif len(names) == 2:
        return f'{names[0]} and {names[1]} like this' 
    elif len(names) == 3:
        return f'{names[0]}, {names[1]} and {names[2]} like this'
    elif len(names) > 3:
        return f'{names[0]} and {names[1]} and {(len(names)-2)} others like this'

print(like([]))
print(like(['Peter']))
print(like(['Peter', 'Jacob']))
print(like(['Peter', 'Jacob', 'Mark']))
print(like(['Peter', 'Jacob', 'Mark', 'Max']))
print(like(['Peter', 'Jacob', 'Mark', 'Max', 'Alex']))

#Desafio resolvido