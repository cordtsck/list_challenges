def threed(ints)
    count = 0
    ints.each do |i|
        if i == 3
            count += 1
        end
    end 

    (ints.size - 1).times do |n|
        if ints[n] == 3 && ints[n + 1] == 3
            return false
        end 
    end 

    if count  == 3 
        return true
    end
end 

#puts threed([3,1,4,3,5,3]) #true
#puts threed([3,3,3,1,2,]) #false

def gets_first_last(ints)
    length = ints.size
        if length >= 1 && ints[0] == ints[length - 1]
            return true
        end 
     return false
 end 

#puts gets_first_last([1,2,1,1]) #true
#puts gets_first_last([9,6,7]) #false

def get_sandwich(strg)
    count = 0
    x = 0
    y = 0

    (strg.size - 4).times do |i|
        if strg[i..(i+4)] == "bread" || strg[i..(i-4)] == "bread"
            if count == 0
                x = i + 5
                count += 1
            elsif count > 0
                y = i + 1
            end
        end
    end 
    if count < 2
        #  return "you need to have two pieces of bread"
    end
        return strg[x..y-2] 

end

#puts get_sandwich("breadsmilebreadteabread") #smilebrreadtea
#puts get_sandwich("breadteabreadjam") #tea
#puts get_sandwich("breadchickencheesebread")#chickencheese
#puts get_sandwich("treat,bread") 

  def can_balance(list)
     if list.size > 0
        if list.size%2 == 0
            x == (list.size/ 2)
        else
            return false
        end
    else
        return false

    end 

    sum_front = 0
    sum_back = 0

    list.each do 
        if i < x 
            sum_front = sum_front + list[i]
        elsif i >= x
            sum_back = sum_back + list[i]
        end 
        i = i +1
    end 
    if sum_front == sum_back
        return true 
    else
        return false 
    end
end 
#puts can_balance([1,2,5,6,7])

def count_code(str)
    #  puts "running count code"
    count = 0
    # puts (str.size - 2)
    (str.size - 2).times do |i|
          slice = str[i..(i+3)]
        #   puts slice 
          if slice[0] == "c" && slice[3] == "e" && slice[1] == "o"
            count += 1
          end
    end
      
        return count
      
end
      
#puts count_code("code,dose,cooe") #2

def list_1(list)
    if list.size % 2 == 1
        return list[list.size/2]
    else
        (list[list.size/2] + list[list.size / 2 - 1]) / 2.0
    end 
end

def list_2(list)
    if list.size % 2 == 1
        return list[list.size/2]
    else 
        (list[list.size/2] + list[list.size / 2 - 1]) / 2.0
    end 
end 

def mid_way(list1,list2)
    puts list_1(list1)
    puts list_2(list2)
end 
#puts mid_way([1,2,4],[4,3,6])

  
 def either_2_4(list)
    #puts "code is going"
    index = 0
    count = 0

    list.each do |i|
        if i == 2 && i ==list[index +1] || i == 4 && i ==list[index +1]
                count += 1 
        end
        index = index + 1
    end 

    if count == 1
            return true
    end  
              
        return false

end 
 #puts either_2_4([1,2,2,4,5]) #true
 #puts either_2_4([0,6,0]) #false


a = [3, 4, 6, 10, 11, 15]
b = [1, 5, 8, 12, 14, 19]
def merge_arrays(a, b)
  result = []
    if a[0] < b[0]
    result << a.shift
    else
    result << b.shift
    end

    if a.length == 0
        return result + b
    elsif b.length == 0
        return result + a
    else
       return result + merge_arrays(a, b)
    end
      
end
#print merge_arrays(a, b)

def g_happy(str)
        i = 0
        count = 0
        str.size.times do |character|
        if str[character] = "g"
            if str[character] != str[i+1]
                if str[character] != str[i-1]
                    return false
                end
            end
        else
            count += 1
        end
        i += 1
    end 
        if count == str.size
            return false
        else 
            return true 
        end
end 
#puts g_happy("can you tell?") # false
#puts g_happy("i guess the should be right gg") #true


def shift_left(list)
    list_new = list
    i = 0
    first = list[0]

    list.size.times do 
        list_new[i] = list[i +1]
        i += 1
    end 
    list_new[list.size - 1] = first

    return list_new
    
end
 #puts shift_left([1,2,5,8]) #2,5,8,1

# def max_span(list)
#         count = 0
#         list.times do 
#           list.each do |i|
#               count = i + 1
#           return count
#     end
#  end
#         #does not work
# puts max_span([4, 5, 2, 6, 7, 8, 9, 11]) # 6
# puts max_span([4, 2, 5, 6, 7]) # 3
