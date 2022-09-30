class PolyTreeNode

    attr_reader :parent, :children, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_value=nil)
        old_parent = @parent
        @parent = new_value

        return nil if @parent.nil? || old_parent.nil?

        # if old_parent == nil
        #     return nil 
        # else
        #     old_parent.children.delete_at(old_parent.children.index(self))
        # end

        if !new_value.children.include?(self)
            new_value.children << self
            old_parent.children.delete_at(old_parent.children.index(self))
        end
    end


end