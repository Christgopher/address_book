class Address
  attr_reader(:address, :city, :state, :zip)

  define_method(:initialize) do |attributes|
    @address = attributes.fetch(:address)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end
end
