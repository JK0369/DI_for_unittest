//
//  ASceneDIContainer.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import UIKit

final class ASceneDIContainer {

    struct Dependencies {
    }

    private let dependencies: Dependencies

    init(dependencies: Dependencies) {
        self.dependencies = dependencies
    }

    func makeAViewController() -> AViewController {
        return AViewController.create(with: makeAViewModel())
    }

    private func makeAViewModel() -> AViewModel {
        return DefaultAViewModel()
    }

    func makeAFlowCoordinator(navigationController: UINavigationController) -> AFlowCoordinator {
        return AFlowCoordinator(navigationController: navigationController,
                                dependencies: self)
    }

}

extension ASceneDIContainer: AFlowCoordinatorDependencies {}
