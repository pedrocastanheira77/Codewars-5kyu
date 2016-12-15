def split_hash_by_key(hash, *args)

  for i in 0...args.size
   return raise "raises an exception" if hash.has_key?(args[i]) == false
  end

  split_index = [0]
  for i in 0...args.size
    for j in 0... hash.size
      break j if hash.keys[j] == args[i]
    end
    split_index << j
  end
  split_index << (hash.size)

  result = []
  for num_hashes in 0...split_index.size-1
    new_hash = {}
    for i in split_index[num_hashes]...(split_index[num_hashes+1])
      new_hash[hash.keys[i]] = hash.values[i]
    end
    result << new_hash if !new_hash.empty?
  end
  result
end
