require "neverlost/version"

module Neverlost
	module_function

  def path path , not_ignored_path = [] , url = true , separator
    full_path = path.split('/').to_a
    full_path = full_path.delete_if { |ar| ar == '' }

    original_path = path.split('/').to_a
    original_path = original_path.delete_if { |ar| ar == '' } 

    # ARRAYS
    final_path_array = Array.new
    links_path = Array.new
    final_path = Array.new
    return_path = Array.new

    final_path = not_ignored not_ignored_path, full_path, return_path

    unless final_path.nil? || final_path.kind_of?(String)
      final_path.each do |array_path| 
        if full_path.size <= 1 
          url ? final_path_array = "<a href='/#{full_path[0]}'>#{array_path}</a>" : final_path_array = "<a href='#'>#{array_path}</a>"
        else
          links_path << array_path
          url ? final_path_array.push("<a href='/#{links_path.join('/')}'> #{array_path} </a>") : final_path_array.push("<a href='#'> #{array_path} </a>")
        end
      end
    else
      url ? final_path_array = "<a href='/#{(original_path & full_path).join('/')}'>#{full_path[0]}</a>" : final_path_array = "<a href='#'>#{full_path[0]}</a>"
    end
   
    if final_path_array.kind_of?(Array)
      @link = final_path_array.to_sentence(words_connector: "#{separator}",
                                        last_word_connector: "#{separator}",
                                        two_words_connector: "#{separator}").html_safe
    else
      final_path_array.html_safe
    end
  end

  def not_ignored ignored_path, full_path, return_path
    unless ignored_path.empty?
      ignored_path.each do |ignored|
        return_path.push(full_path[ignored])
      end
    else
      return_path = full_path
    end
    return_path
  end
end
