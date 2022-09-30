require "byebug"
class PolyTreeNode

    attr_reader :parent, :children, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_parent=nil)
        # old_parent = @parent

        # @parent = nil if new_parent.nil?# || old_parent.nil?

debugger
        if new_parent && !new_parent.children.include?(self)
            debugger
            new_parent.children << self
            # old_parent.children.delete_at(old_parent.children.index(self))
        end
        if @parent != nil
            @parent.children.delete(self)

        end

        @parent = new_parent

    end


end