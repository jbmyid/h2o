require "h20/version"

module H20
  class H2o
    def initialize(params)
      if params.kind_of?(Hash)
        @attributes = params #.deep_symbolize_keys
        hash_to_methods
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

    # private
    def hash_to_methods
      @attributes.each do |k,v|
        self.class.class_eval do
          define_method k do
            if v.kind_of?(Hash)
              H2o.new(v)
            elsif v.kind_of?(Array)
              v.map{|e| H2o.new(e)}
            else
              v
            end
          end
        end
      end
    end
  end 
end
