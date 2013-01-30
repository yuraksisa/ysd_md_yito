#
# Extends the Hash core class to add functionality
#
class ::Hash
   #
   # @return [Hash] The keys symbolized
   #
   def symbolize_keys
     inject({}) do |result, item| 
        key = item.first
        key = key.to_sym if key.is_a?String
        value = item.last
        value = value.symbolize_keys if value.is_a?Hash
        result.store(key, value)
        result    
     end
   end
end