//
//  LinkedList+Display.swift
//  ListSample
//
//  Created by Preetham on 23/03/17.
//  Copyright © 2017  . All rights reserved.
//

import Foundation

extension LinkedList: CustomStringConvertible {

    public var description: String {
        var s = "["
        var node = head
        while node != nil {
            s += "\(node!.value)"
            node = node!.next
            if node != nil { s += " -> " }
        }
        return s + "]"
    }
}
