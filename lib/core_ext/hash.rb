#
# Extends the Hash core class to add functionality
#
class ::Hash
   #
   # Return a Hash with the keys symbolized
   #
   # @return [Hash] The keys symbolized
   #
   def symbolize_keys
     inject({}) do |result, item| 
        key = item.first
        key = key.to_sym if key.is_a?String
        value = item.last
        value = value.symbolize_keys if value.is_a?Hash
        if value.is_a?Array
          value = value.map do |item| 
                    if item.is_a?Hash
                      item.symbolize_keys
                    else
                      item
                    end
                  end
        end
        result.store(key, value)
        result    
     end
   end
   
   #
   # Symbolizes the keys of a Hash
   #
   def symbolize_keys!
      replace(self.symbolize_keys)
   end

end