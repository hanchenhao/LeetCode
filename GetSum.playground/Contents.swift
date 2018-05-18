//: Playground - noun: a place where people can play

import Cocoa


/*
 
 不使用运算符 + 和-，计算两整数a 、b之和。
 
 示例：
 若 a = 1 ，b = 2，返回 3。
 
 */

func getSum(_ a: Int, _ b: Int) -> Int {
    if (b == 0) { return a } //当没有进位时
    let sum = a^b
    let carry = (a & b) << 1 //进位
    return getSum(sum, carry)
}

print(getSum(3, 40))
