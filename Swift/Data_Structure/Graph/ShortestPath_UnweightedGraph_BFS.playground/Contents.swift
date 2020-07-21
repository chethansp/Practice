import UIKit

func breadthFirstSearchShortestPath(graph: Graph, source: Node) -> Graph {

    let shortestPathGraph = graph.duplicate()

    var queue = Queue<Node>()
    let sourceInShortestPathsGraph = shortestPathGraph.findNodeWithLabel(source.label)

    queue.enqueue(sourceInShortestPathsGraph)
    sourceInShortestPathsGraph.distance = 0

    while let current =  queue.dequeue() {
        for edge in current.neighbors {
            let neighbor = edge.neighbor
            if !neighbor.hasDistance {
                queue.enqueue(neighbor)
                neighbor.distance = current.distance! + 1
            }
        }
    }
    return shortestPathGraph
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

let shortestPathGraph = breadthFirstSearchShortestPath(graph: graph, source: nodeA)
print(shortestPathGraph.nodes)
