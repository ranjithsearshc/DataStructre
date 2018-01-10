//
//  main.swift
//  NumberOfIslands
//
//  Created by Kumar, Ranjith (Contractor) on 1/3/18.
//  Copyright © 2018 Kumar, Ranjith (Contractor). All rights reserved.
//

import Foundation

let row = 5
let column = 5

func countNumOfIslands(_ m:[[Int]]) -> Int {
    var count = 0
    var visited = [[Bool]](repeating:Array(repeating:false,count:column),count:row)
    for i in 0..<row {
        for j in 0..<column {
            if m[i][j] == 1 && visited[i][j] == false {
                dfsUtil(m, &visited, row: i, column: j)
                count += 1
            }
        }
    }
    return count
}

func dfsUtil(_ m:[[Int]],_ visited: inout [[Bool]],row r:Int,column c:Int) {
    let rowlabel = [-1,-1,-1,0,0,1,1,1]
    let columnlabel = [-1,0,1,-1,1,-1,1,0]
    
    visited[r][c] = true
    
    for i in 0..<8 {
        let ro = r+rowlabel[i]
        let co = c+columnlabel[i]
        if isSafe(m, &visited, row: ro, column: co) {
            dfsUtil(m, &visited, row: ro, column: co)
        }
    }
    
}

func isSafe (_ m:[[Int]],_ visited: inout [[Bool]],row r:Int,column c:Int) ->Bool {
    if (r >= 0 && r < row) && (c >= 0 && c < column) && (m[r][c] == 1) && (visited[r][c] == false) {
        return true
    }
    
    return false
}


let m = [[1, 1, 0, 0, 0],[0, 1, 0, 0, 1],[1, 0, 0, 1, 1],[0, 0, 0, 0, 0],[1, 0, 1, 0, 1]]

print(countNumOfIslands(m))



