require('rspec')
require('do_it_yourself')

describe(MyHash) do

  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end

    it("retrieves the correct value even if another is added") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("cat", "less_cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end

  describe("#has_key?") do
    it("returns 'true' for a key that exists in the hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.has_key?("kitten")).to(eq(true))
    end

    it("returns 'false' for a key that does not exist in the hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.has_key?("dog")).to(eq(false))
    end
  end

  describe("#has_value?") do
    it("returns 'true' for a value that exists in the hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.has_value?("cute")).to(eq(true))
    end
  end

  describe("#what_length") do
    it("returns the number of key/value-pairs in the hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "cuter")
      test_hash.myStore("ancient gold wyrm", "cutest")
      expect(test_hash.what_length()).to(eq(3))
    end
  end

  describe("#myMerge") do
    it("creates a new object with both the entries of the object and those of the argument cued after it") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash_two = MyHash.new()
      test_hash_two.myStore("dog", "cuter")
      expect(test_hash.myMerge(test_hash_two.value)).to(eq([ ["kitten","cute"],["dog", "cuter"] ]))
    end
  end

end
