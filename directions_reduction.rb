@index = 0

def conditions(arr, pair, pair_number, i)
  flag = (pair[pair_number].include? arr[i]) && (pair[pair_number].include? arr[i+1]) && (arr[i+1] != arr[i])
  return true if flag == true
  return false if pair_number+1 == pair.size  # stop criterion
  pair_number += 1 if pair_number+1 < pair.size
  conditions(arr, pair, pair_number, i)
end

def dirReduc(arr)
  pair = [["SOUTH", "NORTH"], ["EAST", "WEST"]]
  if conditions(arr, pair, pair_number=0, @index)
    2.times{arr.delete_at(@index)}
    @index = 0
  else
    @index += 1
  end
  dirReduc(arr) if @index < arr.size
  return arr if @index >= arr.size  # stop criterion
  arr
end
