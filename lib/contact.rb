class Contact
  @@contacts = []
  attr_reader(:first, :last, :phones, :emails, :addresses, :id)

  define_method(:initialize) do |attributes|
    @first = attributes.fetch(:first)
    @last = attributes.fetch(:last)
    @phones = []
    @emails = []
    @addresses = []
    @id = @@contacts.length().+(1)
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:add_phone) do |phone|
    @phones.push(phone)
  end

  define_method(:add_email) do |email|
    @emails.push(email)
  end

  define_method(:add_address) do |address|
    @addresses.push(address)
  end

  define_singleton_method(:find) do |id|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id().eql?(id)
        found_contact = contact
      end
    end
    found_contact
  end
end
