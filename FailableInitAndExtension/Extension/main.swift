//
//  main.swift
//  FailableInitAndExtension
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

print("Hello, World!")

var s1: Student

s1 = Student()

var s2: Student?
s2 = Student(sid: 10, snm: "jagmeetKaur", email: "j@jagmeethhhhh.com")

if let s = s2{
    print("Student Object Created")
    s.printData()
}
s2?.printData()


struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")
// Prints "six times three is 18"
