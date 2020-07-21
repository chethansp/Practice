//
//  AdjacencyList.swift
//  Graph
//
//  Created by chethan_sp on 21/7/20.
//  Copyright © 2020 chethan_sp. All rights reserved.
//

import Foundation

//Adjacency list
class EdgeList<T> where T: Equatable, T:Hashable {
    var vertex: Vertex<T>
    var edges: [Edge<T>]? = nil
    
    init(vertex: Vertex<T>) {
        self.vertex = vertex
    }
    
    func addEdge(edge: Edge<T>) {
        edges?.append(edge)
    }
}

class AdjacencyListGraph<T>: AbstractGraph<T> where T: Hashable {
    
    var adjacencyList: [EdgeList<T>] = []
    
    required init() {
        super.init()
    }
    
    required init(fromGraph graph: AbstractGraph<T>) {
        super.init(fromGraph: graph)
    }
    
    override var vertices: [Vertex<T>] {
        var vertices = [Vertex<T>]()
        
        for edgeList in adjacencyList {
            vertices.append(edgeList.vertex)
        }
        return vertices
    }
    
    override var edges: [Edge<T>] {
        var allEdges = Set<Edge<T>>()
        
        for edgeList in adjacencyList {
            
            guard let edges = edgeList.edges else {
                continue
            }
            
            for edge in edges {
                allEdges.insert(edge)
            }
        }
        return Array(allEdges)
    }
    
    override func createVertex(_ data: T) -> Vertex<T> {
        let matchingVertex = vertices.filter { (vertex) -> Bool in
            return vertex.data == data
        }
        
        if matchingVertex.count > 0 {
            return matchingVertex.last!
        }
        
        let vertex = Vertex(data: data, index: adjacencyList.count)
        adjacencyList.append(EdgeList(vertex: vertex))
        return vertex
    }
    
    override func addDirectedEdge(_ from: Vertex<T>, to: Vertex<T>, withWeight weight: Double )  {
        
        let edge = Edge(from: from, to: to, weight:  weight)
        let edgeList = adjacencyList[from.index]
        
        if edgeList.edges != nil {
            edgeList.edges?.append(edge)
        } else {
            edgeList.edges = [edge]
        }
    }
    
    override func addUnDirectedEdge(_ vertices:(Vertex<T>, Vertex<T>), withWeight weight : Double ) {
        addDirectedEdge(vertices.0, to: vertices.1, withWeight: weight)
        addDirectedEdge(vertices.1, to: vertices.0, withWeight: weight)
    }
    
    override func weightedFrom(_ sourceVertex: Vertex<T>, to destination: Vertex<T>) -> Double? {
        
        guard let edges = adjacencyList[sourceVertex.index].edges else {
            return nil
        }
        
        for edge: Edge<T> in edges {
            if edge.to == destination {
                return edge.weight
            }
        }
        return nil
    }
    
    override func edgesFrom(_ sourceVertex: Vertex<T>) -> [Edge<T>] {
        guard let edges = adjacencyList[sourceVertex.index].edges else {
            return []
        }
        return edges
    }
    
    open override var description: String {
      var rows = [String]()
      for edgeList in adjacencyList {

        guard let edges = edgeList.edges else {
          continue
        }

        var row = [String]()
        for edge in edges {
          var value = "\(edge.to.data)"
          if edge.weight != nil {
            value = "(\(value): \(edge.weight!))"
          }
          row.append(value)
        }

        rows.append("\(edgeList.vertex.data) -> [\(row.joined(separator: ", "))]")
      }

      return rows.joined(separator: "\n")
    }
}
