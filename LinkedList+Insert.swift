//
//  LinkedList+Insert.swift
//  ListSample
//
//  Created by Preetham on 23/03/17.
//  Copyright © 2017  . All rights reserved.
//

import Foundation

extension LinkedList {

    func append(_ value: T) {

        let newNode = Node(value: value)
        newNode.next = nil

        if let lastNode = last {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }

    func insert(value: T, at index: Int) throws {

        if index > count || index < 0 {
            throw LinkedListError.invalidIndex
        }

        let newNode = Node(value: value)
        if index == 0 {
            if let firstNode = first {
                newNode.next = firstNode
            }
            head = newNode
            return
        }

        if let nodeAtIndex = try self.node(at: index-1) {
            if let nextNode = nodeAtIndex.next {
                nodeAtIndex.next = newNode
                newNode.next = nextNode
            } else {
                nodeAtIndex.next = newNode
            }
        }
    }

    func insertFirst(value: T) {

        let newNode = Node(value: value)

        if let firstNode = first {
            newNode.next = firstNode
        }

        head = newNode
    }

    func insertLast(value: T) {

        let newNode = Node(value: value)
        if let lastNode = last {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
}
