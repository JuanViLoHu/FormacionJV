module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/	
      #'/'
      home_index_path

    when /^la pagina de juegos$/
      juegos_path

    when /^la pagina de mostrar juego$/
      juego_path	

    when /^la pagina de editar juego$/
      edit_juego_path

    when /^la pagina de nuevo juego$/
      new_juego_path

    #when /^la web INFO 3DJuegos$/
      #'http://www.3djuegos.com'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
