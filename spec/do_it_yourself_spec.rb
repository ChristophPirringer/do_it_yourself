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


end
