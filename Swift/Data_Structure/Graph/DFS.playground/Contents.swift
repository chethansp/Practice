import UIKit

func depthFirstSearch(_ graph: Graph, source: Node) -> [String] {
    var visitedNodes = [source.label]
    source.isVisited = true
    
    for edge in source.neighbors {
        if !edge.neighbor.isVisited {
            print("NODE \(edge.neighbor.label)")
            visitedNodes += depthFirstSearch(graph, source: edge.neighbor)
        }
    }
    return visitedNodes
}


let graph = Graph()

let nodeA = graph.addNode("a")
let nodeB = graph.addNode("b")
let nodeC = graph.addNode("c")
let nodeD = graph.addNode("d")
let nodeE = graph.addNode("e")
let nodeF = graph.addNode("f")
let nodeG = graph.addNode("g")
let nodeH = graph.addNode("h")

graph.addEdge(nodeA, neighbor: nodeB)
graph.addEdge(nodeA, neighbor: nodeC)
graph.addEdge(nodeB, neighbor: nodeD)
graph.addEdge(nodeB, neighbor: nodeE)
graph.addEdge(nodeC, neighbor: nodeF)
graph.addEdge(nodeC, neighbor: nodeG)
graph.addEdge(nodeE, neighbor: nodeH)
graph.addEdge(nodeE, neighbor: nodeF)
graph.addEdge(nodeF, neighbor: nodeG)

let dfs = depthFirstSearch(graph, source: nodeA)
dfs.count
print(dfs)
