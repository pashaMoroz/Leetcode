//
//  Root Equals Sum of Children.swift
//  LeetcodeTests
//
//  Created by Admin on 25/11/2022.
//

// MARK: - Task Link
//https://leetcode.com/problems/root-equals-sum-of-children/

import XCTest

 public class TreeNode {
      var val: Int
      var left: TreeNode?
      var right: TreeNode?
      init() { self.val = 0; self.left = nil; self.right = nil; }
      init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
     }
 }

class SolutionTreeNode {
    
    func checkTree(_ root: TreeNode?) -> Bool {
        guard let root = root else { return false }
        guard let rootLeftVal = root.left?.val else { return false }
        guard let rootRightVal = root.right?.val else { return false }
        
        return root.val == (rootLeftVal + rootRightVal)
    }
}

final class Root_Equals_Sum_of_Children: XCTestCase {
    
    func test() {
        
        let leftTreeNode = TreeNode(4)
        let rightTreeNode = TreeNode(6)
    
        let root = TreeNode(10, leftTreeNode, rightTreeNode)
        let solutionTreeNode = SolutionTreeNode()
        
        XCTAssertTrue(solutionTreeNode.checkTree(root))
    }
}
