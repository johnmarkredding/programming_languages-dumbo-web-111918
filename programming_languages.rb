def reformat_languages(old_hash)
  new_hash = {}
  old_hash.each do |style, langs|
    langs.each do |name, info|
      new_hash[name] = info
      new_hash[name][:style] = style
    end
  end
  new_hash
end
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
  }
}