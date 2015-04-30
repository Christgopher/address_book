class Phone
  attr_reader(:phone, :area, :type)

  define_method(:initialize) do |attributes|
    @phone = attributes.fetch(:phone)
    @area = attributes.fetch(:area)
    @type = attributes.fetch(:type)
  end
end
