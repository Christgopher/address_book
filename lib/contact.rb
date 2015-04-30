class Contact
  @@contacts = []
  attr_reader(:first, :last, :phones, :emails, :addresses)

  define_method(:initialize) do |attributes|
    @first = attributes.fetch(:first)
    @last = attributes.fetch(:last)
    @phones = []
    @emails = []
    @addresses = []
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
end
