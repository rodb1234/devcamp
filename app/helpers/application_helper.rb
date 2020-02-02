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

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About '
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: portfolios_path,
        title: 'Portfolios'
      }
    ]
  end

  def nav_helper(style, tag_type)
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end

  def active?(path)
    'active' if current_page? path
  end
end
