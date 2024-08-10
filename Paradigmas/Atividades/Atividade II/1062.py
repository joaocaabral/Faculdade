while True:
    n = int(input())
    if n == 0:
        break
    
    while True:
        j = 1
        flag = 0
        flag1 = 0
        pilha = []
        
        nums = list(map(int, input().split()))
        if nums[0] == 0:
            flag = 1
            print()
            break
        
        i = 0
        while True:
            if i >= n:
                break
            
            if flag1 == 1 or flag1 == 1:
                break
            
            while True:
                if len(pilha) > 0 and pilha[-1] == nums[i]:
                    pilha.pop()
                    break
                elif j <= n:
                    pilha.append(j)
                    j += 1
                    if pilha[-1] == nums[i]:
                        pilha.pop()
                        break
                else:
                    flag1 = 1
                    break
            
            i += 1
        
        if flag == 1:
            break
        
        if not pilha:
            print("Yes")
        else:
            print("No")