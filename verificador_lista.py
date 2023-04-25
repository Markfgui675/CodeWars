from random import randint

def lista_t():
    nums = [];
    i = 0;
    c = 0;
    while True:
        if c == 0:
            x = randint(0, 10)
            nums.append(x);
        else:
            x = randint(0,10)
            for l in range(len(nums)):
                if x != nums[l]:
                    i += 1
                if i == len(nums):
                    nums.append(x)
        

        if len(nums) == 6:
            break
        c += 1
        i = 0
    
    return nums


print(lista_t())
