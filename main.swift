//
//  main.swift
//  ListSample
//
//  Created by Preetham on 23/03/17.
//  Copyright © 2017  . All rights reserved.
//

import Foundation

var list = LinkedList()

list.append(1)
print(list)
list.removeLast()
print(list)

list.append(2)
list.append(3)
list.append(4)

print(list)

list.insertFirst(value: 15)
list.insertLast(value: 25)
print(list)


list.insertFirst(value: 35)
list.insertLast(value: 45)
print(list)


print("Count of elements \(list.count)")

try list.insert(value: 10, at: 0)

print(list)
//list.removeFirst()
//list.removeFirst()
print(list)

list.removeLast()
print(list)

list.removeFirst()
print(list)

try list.remove(at: 4)

//list.removeAll()
print(list)
