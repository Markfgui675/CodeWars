from random import randint

def separador(num):

    nums = []
    nums1 = []
    for c in range(0,10):
        n = randint(0,10)
        nums.append(n)
    
    nums.sort()
    
    y = len(nums)/2

    if num == nums[y]:
        return nums.index(num)
    else:    
        if num > nums[y]:
            nums1 = nums
            return nums1

print(separador(3)    )