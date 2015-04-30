require('rspec')
require('contact')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe("#first}") do
    it("returns the first name of a contact") do
      test_contact = Contact.new({:first => "Chris", :last => "Le Compte"})
      expect(test_contact.first()).to(eq("Chris"))
    end
  end
  describe("#last") do
    it("returns the last name of the contact") do
      test_contact = Contact.new({:first => "Chris", :last => "Le Compte"})
      expect(test_contact.last()).to(eq("Le Compte"))
    end
  end
  describe(".all") do
    it("makes it empty first") do
      expect(Contact.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("saves a contact to the array") do
      test_contact = Contact.new({:first => "Chris", :last => "Le Compte"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end
  describe(".clear") do
    it("clears the saved contacts from the contacts array") do
      test_contact = Contact.new({:first => "Chris", :last => "Le Compte"})
      test_contact.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end
end
