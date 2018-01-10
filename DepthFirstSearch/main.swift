//
//  main.swift
//  DepthFirstSearch
//
//  Created by Kumar, Ranjith (Contractor) on 1/2/18.
//  Copyright © 2018 Kumar, Ranjith (Contractor). All rights reserved.
//

import Foundation

print("Hello, World!")

class Graph {
    var graph:[Int:[Int]]!
    var numberOfVerticts:Int!
    init(num:Int) {
        self.numberOfVerticts = num
        graph = [Int:[Int]]()
    }
    
    func addEdge(_ source:Int,_ destination:Int) {
        if let _ = graph[source] {
            var values = graph[source]!
            values.append(destination)
            graph.updateValue(values, forKey: source)
        } else {
            graph[source] = [destination]
        }
    }
    
    func dfs(startIndex:Int) {
        var visited = [Bool](repeating:false, count:numberOfVerticts)
        dfsUtilties(startIndex, &visited)
    }
    
    func dfsUtilties(_ index:Int,_ visited:inout [Bool]) {
        visited[index] = true
        print("  \(index)  ")
        if let values = graph[index] {
            for i in values {
                if visited[i] == false {
                    dfsUtilties(i, &visited)
                }
            }
        }
        
    }
    
    
    func printAll() {
        print(graph)
    }
}

var g = Graph(num: 4)
g.addEdge(0, 1);
g.addEdge(0, 2);
g.addEdge(1, 2);
g.addEdge(2, 0);
g.addEdge(2, 3);
g.addEdge(3, 3);
g.printAll()
g.dfs(startIndex: 2)

