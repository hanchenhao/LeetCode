//: Playground - noun: a place where people can play

import Cocoa

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var res = [0,0]
    
    for (i,v) in nums.enumerated() {
        for j in i..<nums.count {
            if v + nums[j] == target , i != j {
                res = [i,j]
            }
        }
    }
    
    return res
}

print(twoSum([3,3], 6))
