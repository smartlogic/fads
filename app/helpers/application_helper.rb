module ApplicationHelper
  def client_options_for_user(user)
    options = user.agency.clients.inject(['', nil]) {|coll, client| coll << [client.name, client.id]}
    options << ['New Client... ', 'new']
    options_for_select(options)
  end
end
