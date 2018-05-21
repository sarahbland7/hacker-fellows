# Hacker Fellows Orientation
# 05.21.18
# Collaborator: Shawki Atassi
# Description: A simple Ruby program that generates a left-aligned list of menu items with programmatic calculation
#   of the appropriate number of periods with which to separate item from cost.

hashExample0 = {'Hamburger'=>'$10.00', 'Taco'=>'$5.50'}
hashExample1 = {'Hamburger'=>'$10.00', 'Taco'=>'$5.50', 'Lo Mein'=>'$11.50', 'Filet Mignon'=>'$21.00'}

def get_line_size(hashTable)
    largest = 0 
    sum = 0
    big_sum = 0
    
    #go through each key, value pair and check if number of characters exceeds prior maximum
    hashTable.map{ |item| (sum = item[0].size + item[1].size); 
        if sum > big_sum
            big_sum = sum
        end
    }
    #account for the 2 mandatory periods
    return big_sum + 2 
end 

def add_periods(lineSize, hashTable)
    #programmatic calculation
    hashTable.map{|item| (item[0].ljust(lineSize - item[1].size, ".")) + item[1]}
end

#print results
puts add_periods(get_line_size(hashExample0), hashExample0) 
puts " "
puts add_periods(get_line_size(hashExample1), hashExample1)
