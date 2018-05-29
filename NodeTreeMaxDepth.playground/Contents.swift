//: Playground - noun: a place where people can play

import Cocoa

/*
 
 给定一个二叉树，找出其最大深度。
 
 二叉树的深度为根节点到最远叶子节点的最长路径上的节点数。
 
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


func maxDepth(_ root: TreeNode?) -> Int {
    
    guard root != nil else {
        return 0
    }
    
    let ldepth = maxDepth(root?.left)
    let rdepth = maxDepth(root?.right)
    
    return max(ldepth, rdepth) + 1
}


let root = TreeNode(3)
let node1 = TreeNode(9)
let node2 = TreeNode(20)
root.left = node1
root.right = node2
let node3 = TreeNode(15)
let node4 = TreeNode(7)
node2.left = node3
node2.right = node4


print(maxDepth(root))
