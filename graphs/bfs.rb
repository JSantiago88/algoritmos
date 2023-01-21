
class Graph
  
  attr_accessor :adjacency_list
  
  def initialize
    @adjacency_list = {}
  end
  
  def add_vertex vertex
    adjacency_list[vertex] ||= []
  end

  def add_edge v1, v2
    adjacency_list[v1] << v2
    adjacency_list[v2] << v1
  end

  def dfs start_node
    return if start_node.nil?
    queue = [start_node]
    result = []
    visited = {}
    visited[start_node] = true
    while queue.size > 0
      current_vertex = queue.shift
      result.push(current_vertex)

      adjacency_list[current_vertex].each do |neighbor|
         if visited[neighbor].nil?
           visited[neighbor] = true
           queue.push(neighbor)
         end
      end
    end
    result
  end
end

graph = Graph.new
graph.add_vertex("A")
graph.add_vertex("B")
graph.add_vertex("C")
graph.add_vertex("D")
graph.add_vertex("E")
graph.add_vertex("F")

graph.add_edge("A", "B")
graph.add_edge("A", "C")
graph.add_edge("B", "D")
graph.add_edge("C", "E")
graph.add_edge("D", "E")
graph.add_edge("D", "F")
graph.add_edge("E", "F")

puts graph.dfs("A")
