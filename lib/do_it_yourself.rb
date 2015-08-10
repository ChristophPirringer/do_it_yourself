require ('pry')

class MyHash
  define_method(:initialize) do
    @hash=[]
  end

  define_method(:myStore) do |key, value|
    @hash.push([key, value])
  end

  define_method(:myFetch) do |key|
    value = nil
    @hash.each() do |pair|
      if pair[0] == key
        value = pair[1]
      end
    end
    value
  end

end
