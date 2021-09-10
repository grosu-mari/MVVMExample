//
//  Coordinator.swift
//  MVVMExample
//
//  Created by Маша on 10.09.2021.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get }
    func start()
}

final class AppCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        let listCoordinator = ListCoordinator(navigationController: navigationController)
        listCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
