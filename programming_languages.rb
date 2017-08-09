
=begin
def reformat_languages(languages)

  new_hash = {}
  new_language = nil
  new_type = nil
  style_name = nil

  languages.each do |style, language_name|
    style_name = style
    new_language = language_name
      language_name.each do |languages, type|
        new_type = type
        end
      end
      new_hash[:key] = new_language.to_s
      new_hash[:key][:type] = new_type.to_s
      new_hash[:key][:style] = style_name.to_a
  puts new_hash
  new_hash
end

=end

def reformat_languages(languages)
  results_hash = {}
    languages.each do |language_type,language_hash|
      language_hash.each do |language_name, type_hash|
        type_hash.each do |type_key, type_value|

                    if !results_hash[language_name]
                      results_hash[language_name] = {type_key => type_value, :style => [language_type]}
                    else
                      results_hash[language_name][:style] << language_type
          end
        end
      end
    end
  results_hash
end
