require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('./lib/phone')
require('./lib/email')
require('./lib/address')

get('/') do
  erb(:index)
end

get('/contacts/new') do
  erb(:contact_form)
end

get('/contacts') do
  @contacts = Contact.all()
  erb(:contacts)
end

post('/contacts') do
  first_name = params.fetch('first')
  last_name = params.fetch('last')
  @contact = Contact.new(:first => first_name, :last => last_name)
  @contact.save()
  @contacts = Contact.all
  erb(:success)
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:contact)
end

post('/information') do
  contact = Contact.find(params.fetch('contact_id').to_i())
  phone_number = params.fetch('phone_number')
  area_code = params.fetch('area_code')
  phone_type = params.fetch('phone_type')
  phone = Phone.new(:phone => phone_number, :area => area_code, :type => phone_type)
  contact.add_phone(phone)
  email_address = params.fetch('email_address')
  email_type = params.fetch('email_type')
  email = Email.new(:address => email_address, :type => email_type)
  contact.add_email(email)
  address_number = params.fetch('address_number')
  city = params.fetch('city')
  state = params.fetch('state')
  zip = params.fetch('zip_code')
  address_type = params.fetch('address_type')
  address = Address.new(:address => address_number, :city => city, :state => state, :zip => zip, :type => address_type)
  contact.add_address(address)

  erb(:success)
end
