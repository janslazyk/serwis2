module ApplicationHelper
  def title(title = nil)
    if title.present?
      content_for :title, title
    else
      content_for?(:title) ? APP_CONFIG['default_title'] + ' | ' + content_for(:title) : APP_CONFIG['default_title']
    end
  end
  
  def custom_meta_tags
    if protect_against_forgery?
      [
        tag('meta', :name => 'viewport', :content => APP_CONFIG['meta_viewport']),
        tag('meta', :name => 'robots', :content => APP_CONFIG['meta_robots']),
        tag('meta', :name => 'keywords', :content => APP_CONFIG['meta_keywords']),
        tag('meta', :name => 'rights', :content => APP_CONFIG['meta_rights']),
      ].join("\n").html_safe
    end
  end

  def custom_favicon_link_tag
    favicon_link_tag 'favicon.ico', rel: 'apple-touch-icon', type: 'image/vnd.microsoft.icon'
  end
end
