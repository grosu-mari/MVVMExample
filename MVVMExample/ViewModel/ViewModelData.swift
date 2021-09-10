//
//  ViewModelData.swift
//  MVVMExample
//
//  Created by Маша on 10.09.2021.
//

import Foundation

protocol ViewModel {
    var modelsData: [ViewModelCell] { get set }
    
    func tappedCell()
}


final class ViewModelData: ViewModel {
    var coordinator: ListCoordinator?
    
    var modelsData =
        [ViewModelCell(firstName: "Ваня", lastName: "Иванов", skillLevel: .junior, age: 28),
         ViewModelCell(firstName: "Петя", lastName: "Петров", skillLevel: .middle, age: 35),
         ViewModelCell(firstName: "Вася", lastName: "Диков", skillLevel: .senior, age: 39),
         ViewModelCell(firstName: "Рита", lastName: "Ора", skillLevel: .middle, age: 18),
         ViewModelCell(firstName: "Миша", lastName: "Мишин", skillLevel: .junior, age: 32),
        ]
    
    public func tappedCell() {
        coordinator?.eventOccurred(with: .cellTapped)
    }
}
