module ApplicationHelper
  def client_options_for_user(user)
    options = user.agency.clients.inject([[nil, nil]]) {|coll, client| coll << [client.name, client.id]}
    options << ['New Client... ', nil]
    selected = client ? client.id : nil
    options_for_select(options, selected)
  end
end
