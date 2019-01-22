module Yito
  module Model
    module Finder
      #
      # @param [Hash] options
      #   
      #   :limit
      #   :offset
      #   :count
      #
      # @return [Array]
      #
      #   Returns a array with two items: The query subset and the total items which matches the query
      #
      def all_and_count(options={})
    
        query_options = {}
      
        query_options.store(:fields, options[:fields]) if options.has_key?(:fields)
        query_options.store(:limit, options[:limit] || 10)
        query_options.store(:offset, options[:offset] || 0)
        query_options.store(:order, options[:order])
        query_options.store(:conditions, options[:conditions]) if options.has_key?(:conditions)
      
        result = []
        result << all(query_options)
      
        if options[:count] || true
          result << count(options[:conditions])
        end
      
        if result.length == 1
          result = result.first
        end
      
        result
              
      end
    end
  end
end