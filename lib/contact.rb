class Contact

  attr_reader(:first, :last)

  define_method(:initialize) do |attributes|
    @first = attributes.fetch(:first)
    @last = attributes.fetch(:last)
  end
end
