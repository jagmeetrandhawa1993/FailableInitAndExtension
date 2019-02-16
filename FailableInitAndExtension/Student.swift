//
//  Student.swift
//  FailableInitAndExtension
//
//  Created by MacStudent on 2019-02-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

/*extension String{
    
    func isValidEmail() -> Bool{
        let emailRegEx = "[A-Z0-9a-z._%+-]{2,64}"
        let emailTest = NSPredicate(fomat:" self)
        
    }
 }
 */

class Student
{
    var sid: Int!
    var snm: String!
    var email: String!
    
    init() {
        self.sid = 0
        self.snm = String()
        self.email = String()
    }
    
    init?(sid: Int, snm: String, email: String) {
       if sid < 0
       {
        print("Student ID must be >= 0")
        return nil
        }
        
        if snm.count < 10
        {
            print("Student name must be >= 10")
            return nil
        }
        if email.count < 15
        {
            print("Student Email ID must be >= 15 length")
            return nil
        }
        
        self.sid = sid
        self.snm = snm
        self.email = email
    }
    
    func printData()
    {
        print("Student ID : \(String(describing: self.sid))")
        print("Student Name : \(String(describing: self.snm))")
         print("Student Email : \(String(describing: self.email))")
    }
}
