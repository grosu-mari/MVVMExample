//
//  Model.swift
//  MVVMExample
//
//  Created by Маша on 10.09.2021.
//

import Foundation

struct MVVMModel {
    let firstName: String
    let lastName: String
    let skillLevel: SkillLavle
    let age: Int
}

enum SkillLavle: String {
    case senior = "Продвинутый"
    case junior = "Начинающий"
    case middle = "Средний"
}
