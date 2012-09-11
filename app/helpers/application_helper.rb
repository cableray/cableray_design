module ApplicationHelper
  def split_title(title, as_html=true)
    title, subtitle = title.split(' - ', 2)
    if as_html then 
      html=::ERB::Util.html_escape(title)
      html+=" <small>#{::ERB::Util.html_escape(subtitle)}</small>".html_safe if subtitle
      html
    else 
      [title, subtitle] 
    end
  end
  
  def only_title(title)
    split_title(title,false)[0]
  end
  
  def only_subtitle(title)
    split_title(title,false)[1]
  end
  
end
