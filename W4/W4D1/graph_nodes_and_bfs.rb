class GraphNode
    attr_accessor :val, :neighbors

    def initialize(value)
        self.val = value
        self.neighbors = []
    end

    def bfs(starting_node, target_value)
        nodes = [starting_node]
        visited = Set.new()
        
        while nodes_visited.length > 0 
            node = nodes.shift 
            if !visited.include?(node)
                if node.val == target_value 
                    return node.val 
                end
                visited.add(node)
                node.neighbors.each {|node| nodes << node}
            end
        end
        return nil 
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

dfs(a, "b")