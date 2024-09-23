import math
def cp(points):
    mindistance=float('inf')
    pair=0
    for i in range(0,len(points)):
        for j in range(i+1,len(points)):
            distance=math.sqrt((points[j][0]-points[i][0])*2-(points[j][1]-points[i][1])*2)
            if distance<mindistance:
                mindistance=distance
                pair=((points[i],points[j]))
    return pair
points=[(1,2),(4,5),(6,7),(3,4)]
print(cp(points))
