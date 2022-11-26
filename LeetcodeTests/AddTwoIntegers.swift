//
//  LeetcodeTests.swift
//  LeetcodeTests
//
//  Created by Admin on 25/11/2022.
//

// MARK: - Task Link
//https://leetcode.com/problems/add-two-integers/

import XCTest

class Solution {
    
    func sum(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
}

final class LeetcodeTests: XCTestCase {
    
    func test() {
        
        let solution = Solution()
        
        let num1 = 10
        let num2 = 10
        let result = num1 + num2
        let resultWithFunction = solution.sum(num1, num2)
        
        XCTAssertEqual(result, resultWithFunction)
    }
}
