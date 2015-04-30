require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')

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
  @contact = Contact.find(params.fetch('id'))
  erb(:contact)
end
