class Contact
  @@contacts = []
  attr_reader(:first, :last, :phones, :emails)

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
end
