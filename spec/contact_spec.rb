require('rspec')
require('contact')

describe(Contact) do
  describe("#first}") do
    it("returns the first name of a contact") do
      test_contact = Contact.new({:first => "Chris", :last => "Le Compte"})
      expect(test_contact.first()).to(eq("Chris"))
    end
  end
  

end
