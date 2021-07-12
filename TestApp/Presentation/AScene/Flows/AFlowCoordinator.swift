//
//  AFlowCoordinator.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import UIKit

protocol AFlowCoordinatorDependencies {
    func makeAViewController() -> AViewController
}

final class AFlowCoordinator {
    private weak var navigationControlelr: UINavigationController?
    private let dependencies: AFlowCoordinatorDependencies

    private weak var aViewController: AViewController?

    init(navigationController: UINavigationController,
         dependencies: AFlowCoordinatorDependencies) {
        self.navigationControlelr = navigationController
        self.dependencies = dependencies
    }

    func start() {
        let vc = dependencies.makeAViewController()
        navigationControlelr?.pushViewController(vc, animated: false)
        aViewController = vc
    }
}
