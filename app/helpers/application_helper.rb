module ApplicationHelper
  def login_helper(style = '')
    if current_user.is_a?(User)
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    else
      %(
        #{link_to 'Register', new_user_registration_path, method: :get, class: style}
        #{link_to 'Login', new_user_session_path, method: :get, class: style}
      ).html_safe
    end
  end

  def sample_helper
    content_tag(:div, 'My Content', class: 'my-class')
  end

  def source_helper
    greeting = "Thanks for visiting me from #{session[:source]}"
    content_tag(:p, greeting, class: 'source-greeting') if session[:source]
  end

  def nav_helper style, tag_type
nav_links = <<NAV
<#{tag_type}><a href="#{root_path}" class="#{style}">Home</a></#{tag_type}>
<#{tag_type}><a href="#{about_path}" class="#{style}">About me</a></#{tag_type}>
<#{tag_type}><a href="#{contact_path}" class="#{style}">Contact</a></#{tag_type}>
<#{tag_type}><a href="#{portfolios_path}" class="#{style}">Portfolios</a></#{tag_type}>
NAV


    nav_links.html_safe
  end

end
