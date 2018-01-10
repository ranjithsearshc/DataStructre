//
//  main.swift
//  LongestIncreasingSubsequence
//
//  Created by Kumar, Ranjith (Contractor) on 1/3/18.
//  Copyright © 2018 Kumar, Ranjith (Contractor). All rights reserved.
//

import Foundation


func max(_ a:Int,_ b:Int) -> Int {
    if a > b {
        return a
    }
    return b
}

func longestIncreasingSubsequence(_ arr:[Int]) -> Int {
    
    var res = [Int](repeating:1,count:arr.count)
    
    for i in 0..<arr.count {
        for j in 0..<i {
            if arr[i] > arr[j]  {
                res[i] = max(res[i], res[j]+1)
            }
        }
        print(res)
    }
    
    var maxvalue = 0
    for i in 0..<arr.count {
        if res[i] > maxvalue {
            maxvalue = res[i]
        }
    }
    
    return maxvalue
}


let arr = [10, 22, 9, 33, 21, 50, 41, 60]
print(longestIncreasingSubsequence(arr))
