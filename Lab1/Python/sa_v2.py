def linear_function(x):
    y =  2.4 * x + 300
    return y

def find_closest_x(target):
    # Initialize the variables
    x = 128
    x_temp = 64
    # Completed using hardware concepts
    for i in range(9):
        y = linear_function(x)
        if (i<=7):      
            if y==target:
                x = x
            elif y < target:                       
                x = x + x_temp
            else:
                x = x - x_temp 

            if (x_temp != 1):        
                x_temp = x_temp/2
            else:
                x_temp = 1
        else:
            min_distance = abs(y-target)
            if (min_distance > 1.2):
                if (y>target):
                    x = x-1
                elif (y<target):
                    x = x+1
    return x

def main():
    # Test cases
    target1 = 550
    target2 = 800
    x1= find_closest_x(target1)
    x2= find_closest_x(target2)
    print(f"Target Value 550: x = {x1}")
    print(f"Target Value 800: x = {x2}")

if __name__=="__main__":
    main()





