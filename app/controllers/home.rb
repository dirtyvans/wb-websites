SsLandingPage::App.controllers :home do
  get :index, map: "/"  do
    render "index"
  end

  post :contact, map: "/contact" do
    email(
      from: params[:email],
      to: "christo247@gmail.com",
      subject: "WBW contact from #{params[:name]}",
      body: params[:message]
    )

    # USE THEIR NAME.
    redirect_to "/" # go to thank you page
  end
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  

end
