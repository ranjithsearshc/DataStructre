//
//  main.swift
//  MinCostPath
//
//  Created by Kumar, Ranjith (Contractor) on 1/3/18.
//  Copyright © 2018 Kumar, Ranjith (Contractor). All rights reserved.
//

import Foundation

func min(_ a:Int,_ b:Int, _ c:Int) -> Int {
    if a > b {
        if b > c {
            return c
        } else {
            return b
        }
    } else {
        if a > c {
            return c
        } else {
            return a
        }
    }
}

func minCostPath(_ arr:[[Int]]) -> Int {
    var tot = [[Int]](repeating:Array(repeating:-1,count:arr[0].count),count:arr.count)
    
    tot[0][0] = arr[0][0]
    for i in 1..<arr[0].count {
        tot[0][i] = tot[0][i-1] + arr[0][i]
    }
    print(tot[0])
    for i in 1..<arr.count {
        tot[i][0] = tot[i-1][0] + arr[i][0]
    }
    
    
    for i in 1..<arr.count {
        for j in 1..<arr.count {
            tot[i][j] = min(tot[i-1][j-1], tot[i-1][j], tot[i][j-1]) + arr[i][j]
        }
        print(tot[i])
    }
    
    return tot[arr[0].count-1][arr.count-1]
}

let arr = [[1,2,3],[4,8,2],[1,5,3]]
print(minCostPath(arr))

