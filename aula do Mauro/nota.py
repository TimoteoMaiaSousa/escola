B = int(input())
T = int(input())

area_corte = (160 - T) * (70 - (T - B))

area_total = 160 * 70

if area_corte > area_total / 2:
    print(2)  
elif area_corte < area_total / 2:
    print(1)  
else:
    print(0)