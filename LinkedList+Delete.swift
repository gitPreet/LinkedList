//
//  LinkedList+Delete.swift
//  ListSample
//
//  Created by Preetham on 23/03/17.
//  Copyright © 2017  . All rights reserved.
//

import Foundation

extension LinkedList {

    func removeFirst() {

        guard let _ = first else {
            return
        }

        do {
            try remove(at: 0)
        } catch {
            print("Unable to perform")
        }
    }

    func removeLast() {

        guard let _ = first else {
            return
        }

        do {
            try remove(at: count-1)
        } catch {
            print("Unable to perform")
        }
    }

    func removeAll() {
        head = nil
    }

    func remove(at index: Int) throws {

        if count == 1 {
            head = nil
            return
        }

        if index < 0 || index > count {
            throw LinkedListError.invalidIndex
        }

        //If there are more than one nodes
        var prevNode = first

        if index == 0 {
            head = prevNode?.next
            prevNode = nil
            return
        }

        do {
           prevNode = try node(at: index - 1)
        } catch {
            throw LinkedListError.invalidIndex
        }

        var nodeToDelete = prevNode?.next

        if let nextNode = nodeToDelete?.next {
            prevNode?.next = nextNode
        } else {
            prevNode?.next = nil
        }

        nodeToDelete = nil
    }
}
