//
//  LinkedList.swift
//  ListSample
//
//  Created by Preetham on 23/03/17.
//  Copyright © 2017  . All rights reserved.
//

import Foundation

enum LinkedListError: Error {
    case invalidIndex
    case invalidOperation
}

class LinkedListNode <T> {

    var value: T
    var next: LinkedListNode?

    init(value: T) {
        self.value = value
    }
}

typealias Node = LinkedListNode<Any>

class LinkedList<T>: Listable {
    typealias type = T
    var head: Node?
}
