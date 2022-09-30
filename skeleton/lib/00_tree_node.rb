class PolyTreeNode

    attr_reader :parent, :children, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_value=nil)
        
        @parent = new_value
        if new_value.nil?
            return nil
        else !new_value.children.include?(self)
            new_value.children << self
        end
    end


end