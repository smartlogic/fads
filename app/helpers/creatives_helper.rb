module CreativesHelper
  def subnav(selected)
    render :partial => 'subnav', :locals => { :selected => selected }
  end
end
