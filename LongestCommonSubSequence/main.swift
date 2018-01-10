//
//  main.swift
//  LongestCommonSubSequence
//
//  Created by Kumar, Ranjith (Contractor) on 1/3/18.
//  Copyright © 2018 Kumar, Ranjith (Contractor). All rights reserved.
//

import Foundation

func longestCommonSubsqence(_ str1:String, _ str2:String) -> Int {
    var list = [[Int]](repeating:Array(repeating:-1,count:str1.count+1),count:str2.count+1)
    let ch1 = Array(str1)
    let ch2 = Array(str2)
    for i in 0...str2.count {
        for j in 0...str1.count {
            if i == 0 || j == 0 {
                list[i][j] = 0
            } else {
                if ch1[j-1] == ch2[i-1] {
                    list[i][j] = list[i-1][j-1] + 1
                } else {
                    if list[i-1][j] > list[i][j-1] {
                        list[i][j] = list[i-1][j]
                    } else {
                        list[i][j] = list[i][j-1]
                    }
                }

            }
        
                    }
        print(list[i])
    }
    
    
    
    return list[str2.count][str1.count]
}

let str1 = "AGGTAB"
let str2 = "GXTXAYB"

print(longestCommonSubsqence(str1, str2))

