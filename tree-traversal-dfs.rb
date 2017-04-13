# Tree Traversal Challenge
# Depth First Search Solution

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children = nil)
    @payload = payload
    @children = children
  end
end

def depth(node, value)
  return value if node.payload == value
  node.children.each do |child|
    depth(child, value)
  end
  return nil
end

# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])

puts depth(eleventh_node, 11)