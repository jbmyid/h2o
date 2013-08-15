require "h20/version"
require "json"

module H20
  class H2o
    def initialize(params)
      if params.kind_of?(Hash)
        @attributes = params #.deep_symbolize_keys
        # hash_to_methods
      else
        @attributes = params
      end
    end

    def to_json
      @attributes.to_json
    end

    def to_hash
      @attributes
    end

    def method_missing(m)
    	if @attributes.map{|k,v| k}.include?(m)
	    	value = @attributes[m]
	    	r_value = nil
	    	if value.kind_of?(Hash)
	    		r_value = H2o.new(value)
	    	elsif value.kind_of?(Array)
	    		r_value = value.map { |e| H2o.new(e)  }
	    	else
	    		r_value = value
	    	end
	    	r_value
	    else
	    	super
	    end
    end
  end 
end
