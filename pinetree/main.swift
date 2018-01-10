//
//  main.swift
//  pinetree
//
//  Created by Kumar, Ranjith (Contractor) on 1/9/18.
//  Copyright © 2018 Kumar, Ranjith (Contractor). All rights reserved.
//

import Foundation

/*
 
 Write a method that produces images of a pine tree (with a stand) as output.
 
 The method should take two parameters: one for the number of segments in the tree and one for the height of each segment. For example, a tree with 3 segments of height 4 would look like this:
 
 *
 ***
 *****
 *******
 ***
 *****
 *******
 *********
 *****
 *******
 *********
 ***********
 *
 *
 *********
 
 
 *
 ***
 *****
 *******
 *
 *
 *********
 
 */

/*
 1 3 5 7 9......n
 1 2 3 4 5
 
 1+(n-1)2 + 2*k
 
 1+(5-1)2
 
 1+(3-1)2 + 2*3
 
 k
 seg
 
 (seg-k)+p+4
 
 
 */



import Foundation

func pintree(_ segNumber:Int,_ level:Int) {
    
    var firstOneSpaces = 0
    var constastSpaces = 0
    var lastSpaces = 0
    
    if segNumber < 2 {
        
        constastSpaces = 1
    }
    
    
    for i in 1...segNumber {
        
        for k in 0..<level {
            
            let numberStars = 1+(i-1)*2+2*k
            
            //print("number \(numberStars)")
            let spaces = segNumber - i - k + (level-1) + constastSpaces
            
            if numberStars == 9 && segNumber >= 2 {
                lastSpaces = spaces
            }
            
            if k == 0 && i == 1 {
                firstOneSpaces = spaces
            }
            if spaces != 0 {
                
                for _ in 1...spaces {
                    
                    print(" ",terminator:"")
                }
            }
            
            
            for _ in 1...numberStars {
                
                
                
                print("*",terminator:"")
                
            }
            print("")
            
            
        }
        
        
    }
    
    for _ in 1...2{
        
        
        for _ in 1...firstOneSpaces {
            print(" ",terminator:"")
        }
        print("*")
        
    }
    
    for _ in 0..<lastSpaces {
        print(" ",terminator:"")
    }
    for _ in 1...9 {
        print("*",terminator:"")
    }
    
    
}

pintree(1,5)


