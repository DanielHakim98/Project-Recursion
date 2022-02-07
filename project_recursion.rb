def fibs(num)
  fib_list = []
  (num + 1).times do |i|
    unless i >= 2
      fib_list.push(i == 0 ? 0 : 1)
      next
    end
    fib_list[i]= fib_list[i-1]+fib_list[i-2]
  end
  fib_list
end

def fibs_rec(num)
  return num <= 0 ? [0] : [0,1] if num < 2
  list = fibs_rec(num-1)
  list + [list[num-1]+ list[num-2]]
end
puts "With looping method: "
p fibs(6)
puts puts
puts "With Recursion method: "
p fibs_rec(6)