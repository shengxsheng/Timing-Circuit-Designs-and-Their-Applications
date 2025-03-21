def linear_function(x):
    y =  2.4 * x + 300
    return y

def find_closest_x(target):
    # Initialize the variables
    lower_bound = 0
    upper_bound = 255  # 8-bit code
    best_x = None
    closest_y = None
    min_distance = float('inf') # Initialize to positive infinity

    while lower_bound <= upper_bound:
        # Try the middle point 
        x = (lower_bound + upper_bound) // 2 
        y = linear_function(x)               

        # Calculate the distance between the current y and the target
        distance = abs(y - target)           

        if distance < min_distance:           
            min_distance = distance                           
            best_x = x                       

        # Adjust bounds for the next iteration
        if y < target:                       
            lower_bound = x + 1
        else:
            upper_bound = x - 1              

    return best_x

def main():
    # Test cases
    target1 = 550
    target2 = 800
    x1= find_closest_x(target1)
    x2= find_closest_x(target2)
    print(f"Target Value 550: x = {x1}")
    print(f"Target Value 800:   x = {x2}")

if __name__=="__main__":
    main()





