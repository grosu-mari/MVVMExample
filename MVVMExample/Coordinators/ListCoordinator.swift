//
//  ListCoordinator.swift
//  MVVMExample
//
//  Created by Маша on 10.09.2021.
//

import Foundation
import UIKit

enum EvenT {
    case cellTapped
}

class ListCoordinator: Coordinator {
    var navigationController: UINavigationController?
    private(set) var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func eventOccurred(with type: EvenT) {
        switch type {
        case .cellTapped:
            let viewController: UIViewController = InfoViewController()
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func start() {
        let listViewModel = ViewModelData()
        listViewModel.coordinator = self
        let firstController = ListViewController()
        firstController.viewModel = listViewModel
        navigationController?.setViewControllers([firstController], animated: true)
    }
}


