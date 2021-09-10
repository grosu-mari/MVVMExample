//
//  ViewModelCell.swift
//  MVVMExample
//
//  Created by Маша on 10.09.2021.
//

import Foundation

class ViewModelCell {
    let firstName: String
    let lastName: String
    let skillLevel: SkillLavle
    let age: Int
    
    init(firstName: String, lastName: String, skillLevel: SkillLavle, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.skillLevel = skillLevel
        self.age = age
    }
}
