def reformat_languages(old_hash)
  new_hash = {}
  old_hash.each do |style, langs|
    langs.each do |name, info|
      new_hash[name] = info
      if new_hash[name][:style] != nil
        new_hash[name][:style] << style
      end
    end
  end
  new_hash
end