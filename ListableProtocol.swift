//
//  ListableProtocol.swift
//  ListSample
//
//  Created by Preetham on 24/03/17.
//  Copyright © 2017  . All rights reserved.
//

import Foundation

protocol Listable {

    associatedtype type
    var head: Node? { get set }
}

extension Listable {

    func node(at index: Int) throws -> Node? {
 
        if index > count && index < 0 {
            throw LinkedListError.invalidIndex
        }

        var currentIndex = 0

        if var tempNode = first {
            while case let node? = tempNode.next, currentIndex < index {
                tempNode = node
                currentIndex = currentIndex + 1
            }
            return tempNode
        } else {
            return nil
        }
    }

    var first: Node? {
        return head
    }

    var last: Node? {

        if var temp = head {
            while case let node? = temp.next {
                temp = node
            }
            return temp
        } else {
            return nil
        }
    }

    var isEmpty: Bool {
        return head == nil
    }

    var count: Int {
        var total = 0
        if var tempNode = first {
            total = 1
            while case let node? = tempNode.next {
                total = total + 1
                tempNode = node
            }
        }
        return total
    }

}
