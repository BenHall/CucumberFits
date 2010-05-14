def url_for(page)
  case page
    when /home/i
      '/'
    else
      raise("No url for #{page} mapped")
  end
end