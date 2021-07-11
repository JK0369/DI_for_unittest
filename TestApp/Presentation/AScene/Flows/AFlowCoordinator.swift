//
//  AFlowCoordinator.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import UIKit

protocol ASceneFlowCoordinatorDependencies {
    func makeAViewController() -> AViewController
}

final class ACoordinator {
    private weak var navigationControlelr: UINavigationController?
    private let dependencies: ASceneFlowCoordinatorDependencies

    private weak var AViewController: AViewController?

    init(navigationController: UINavigationController,
         dependencies: ASceneFlowCoordinatorDependencies) {
        self.navigationControlelr = navigationController
        self.dependencies = dependencies
    }

    func start() {
        let vc = dependencies.makeAViewController()

    }
}
