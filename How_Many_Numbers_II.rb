def max_sumDig(nmax, maxsm)
    list_numbers = []
    range = (1000..nmax).to_a
    range.each do |number_to_split|
      splitted_number = number_to_split.to_s.split("")
      flag = true
      for n in 0..(splitted_number.size - 4)
        if flag == true
          sum = 0
          for array_index in 0+n..3+n
            if flag == true
              sum += splitted_number[array_index].to_i
              flag = false if sum > maxsm
           end
          end
        end
      end
      list_numbers << splitted_number if flag == true
    end
    sum = 0
    list_numbers.each do |number|
      sum += number.join("").to_i
    end
    average = sum.to_f/list_numbers.size
    delta = []
    list_numbers.each do |number|
      delta << (average - number.join("").to_i).abs
    end
    delta << delta.min
    close_to_mean = list_numbers[0] if delta.count(delta.min) > 1
    close_to_mean = list_numbers[delta.index(delta.min)].join("").to_i
    return list_numbers.size, close_to_mean, sum
end

max_sumDig(2000, 3)
