class Contact
  @@contacts = []
  attr_reader(:first, :last)

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
end
