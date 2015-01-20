#############################################
# How to take a block as an arguement #######
#############################################
def apply_method(x, &cb)
  cb.call(x)
end

apply_method(1) do |v|
  puts v
end

def apply_method2(x)
  yield(x)
end


apply_method2(1) do |v|
  puts v
end

#############################################
# Proc's are referenced Blocks ##############
#############################################
square = Proc.new do |v|
  p v * v
end

apply_method2 2, &square
def reduceAdd(arr)
  val = 0
  i = 0
  while i < arr.length
    val = val + arr[i]
    i += 1
  end
  val
end

x = reduceAdd([1,2,3])
puts x

def reduce(arr)
  val = arr[0]
  i = 1
  while i < arr.length
    val = yield(val, arr[i])
    i += 1
  end
  val
end

y =reduce([1,2,3]) do |memo, x|
  memo + x
end

puts y
