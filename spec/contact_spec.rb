require('rspec')
require('contact')
require('phone')
require('email')

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
  describe("#add_phone") do
    it("adds the phone number to the contact") do
      test_phone = Phone.new({:phone => 1234567, :area => 890, :type => "home"})
      test_contact = Contact.new({:first => "Chris", :last => "Le Compte"})
      test_contact.add_phone(test_phone)
      expect(test_contact.phones()).to(eq([test_phone]))
    end
  end
  describe("#add_email") do
    it("adds the email to the contact") do
      test_email = Email.new({:address => "bob@bob.com", :type => "Personal"})
      test_contact = Contact.new({:first => "Chris", :last => "Le Compte"})
      test_contact.add_email(test_email)
      expect(test_contact.emails()).to(eq([test_email]))
    end
  end
end
