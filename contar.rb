class Array
  def contar1183
    return size unless block_given? # guard clause

    i = 0
    counter = 0

    while size > i
      counter += 1 if yield at(i)
      i += 1
    end

    counter
  end
end



animals = %w[ape bat frog cat dog fox]

puts animals.contar1183

puts ''

f_animals = animals.contar1183 do |animal|
  animal.start_with?('f')
end

puts f_animals

# { |variable| }
