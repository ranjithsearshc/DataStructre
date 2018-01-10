//
//  main.swift
//  BinarySearchTree
//
//  Created by Kumar, Ranjith (Contractor) on 1/1/18.
//  Copyright © 2018 Kumar, Ranjith (Contractor). All rights reserved.
//

import Foundation

print("Hello, World!")

class BinarySearchTree {
    var key:Int?
    var left:BinarySearchTree?
    var right:BinarySearchTree?
    
    init() {
    }
    
    func addNode(_ value:Int) {
        if self.key == nil {
            self.key = value
            return
        }
        
        if key! > value {
            if self.left != nil {
                left!.addNode(value)
            } else {
                left = BinarySearchTree()
                left?.key = value
            }
        } else {
            if self.right != nil {
                right!.addNode(value)
            } else {
                right = BinarySearchTree()
                right!.key = value
            }
        }
    }
    
    func inOrderTraveravals() {
        if self.key != nil {
            print(key!)
            left?.inOrderTraveravals()
            right?.inOrderTraveravals()
        }
    }
    
}




var root = BinarySearchTree()
root.addNode(10)
root.addNode(5)
root.addNode(15)
root.addNode(12)

root.inOrderTraveravals()








