#take names of first and second player
# take input from users in the form of array number
# at every step check the array for the winning and as soon as we get a match declare the result

arr=[]
def check_3(arr,a,b,c)
    if arr[a]==arr[b] && arr[b]==arr[c] && arr[a]!=nil && arr[b]!=nil && arr[c]!=nil
        return true
    end
end

def check_win(arr)
    if arr.empty? || arr.length<5
        return false
    end
    if check_3(arr,0,1,2) || check_3(arr,0,3,6) || check_3(arr,0,4,8)
        puts "#{arr[0]} wins"
        return true
    elsif check_3(arr,2,5,8) || check_3(arr,6,7,8)
        puts "#{arr[8]} wins"
        return true
    elsif check_3(arr,2,4,6)
        puts "#{arr[4]} wins"
        return true
    end
    return false

end

puts "do you want to play a game"
check_play=gets.chomp
if check_play=="yes"
    while true
        
        puts "x's turn"
        input=gets.chomp.to_i
        arr[input]="x"
        break if(check_win(arr))
        puts "o's turn"
        input2=gets.chomp.to_i
        arr[input2]="o"
        break if(check_win(arr))
    end

end
