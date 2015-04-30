require('rspec')
require('phone')

describe(Phone) do
  describe("#phone") do
    it("returns the phone number of a contact") do
      test_phone = Phone.new({:phone => 123-4567, :area => 890, :type => "home"})
      expect(test_phone.phone()).to(eq(123-4567))
    end
  end
  describe("#area") do
    it("returns the area code of the contact") do
      test_phone = Phone.new({:phone => 123-4567, :area => 890, :type => "home"})
      expect(test_phone.area()).to(eq(890))
    end
  end
  describe("#type") do
    it("returns the number type of the contact") do
      test_phone = Phone.new({:phone => 123-4567, :area => 890, :type => "home"})
      expect(test_phone.type()).to(eq("home"))
    end
  end
end
