//: Playground - noun: a place where people can play

import Cocoa


/*
 
 两个整数之间的汉明距离指的是这两个数字对应二进制位不同的位置的数目。
 
 给出两个整数 x 和 y，计算它们之间的汉明距离。
 
 示例:
 
 输入: x = 1, y = 4
 
 输出: 2
 
 解释:
 1   (0 0 0 1)
 4   (0 1 0 0)
 ↑   ↑
 
 上面的箭头指出了对应二进制位不同的位置。
 
 */


func hammingDistance(_ x: Int, _ y: Int) -> Int {
    
    var x = String(x,radix:2)
    var y = String(y,radix:2)
    
    var count = 0
    
    for _ in 0..<abs(x.count - y.count){
        if x.count > y.count {
            y = "0" + y
        } else {
            x = "0" + x
        }
    }
    
    while x.count > 0 , y.count > 0 {
        if x.last != y.last {
            count += 1
        }
        x.removeLast()
        y.removeLast()
    }
    
    return count
}



print(hammingDistance(1, 4))
