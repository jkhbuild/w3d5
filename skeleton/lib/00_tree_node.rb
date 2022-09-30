require "byebug"
class PolyTreeNode

    attr_reader :parent, :children, :value
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_parent=nil)
        return if self.parent == new_parent

        if new_parent && !new_parent.children.include?(self)
            new_parent.children << self
            # old_parent.children.delete_at(old_parent.children.index(self))
        end
        if self.parent != nil
            self.parent.children.delete(self)

        end

        @parent = new_parent
    end

    def add_child(child_node)
        child_node.parent = self
    end

    def remove_child(child_node)
        raise "not a child" if !self.children.include?(child_node)
        child_node.parent = nil
    end

    def dfs(target)
        return self if self.value == target
        self.children.each do |child|
            # debugger
            return child if !child.dfs(target).nil?
        end
        nil
    end


end