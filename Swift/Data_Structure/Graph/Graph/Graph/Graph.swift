//
//  Graph.swift
//  Graph
//
//  Created by chethan_sp on 21/7/20.
//  Copyright © 2020 chethan_sp. All rights reserved.
//

import Foundation

class AbstractGraph<T>: CustomStringConvertible where T: Hashable {
    
    var description: String {
        fatalError("abstract property accessed")
    }
    
    required init() {
        
    }
    
    required init(fromGraph graph: AbstractGraph<T>) {
        
    }
    
    var vertices: [Vertex<T>] {
        fatalError("abstract property accessed")
    }
    
    var edges: [Edge<T>] {
        fatalError("abstract property accessed")
    }
    
    func createVertex(_ data:T) -> Vertex<T> {
        fatalError("abstract property accessed")
    }
    
    func addDirectedEdge(_ from: Vertex<T>, to: Vertex<T>, withWeight weight: Double )  {
        fatalError("abstract property accessed")
    }
    
    func addUnDirectedEdge(_ vertices:(Vertex<T>, Vertex<T>), withWeight weight : Double ) {
        fatalError("abstract property accessed")
    }
    
    func weightedFrom(_ sourceVertex: Vertex<T>, to destination: Vertex<T>) -> Double? {
        fatalError("abstract property accessed")
    }
    
    func edgesFrom(_ sourceVertex: Vertex<T>) -> [Edge<T>] {
        fatalError("abstract property accessed")
    }
}

