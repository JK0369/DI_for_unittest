//
//  AppFlowCoordinator.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import Foundation
import UIKit

final class AppFlowCoordinator {
    var navigationController: UINavigationController
    private let appDIContainer: AppDIContainer

    init(navigationController: UINavigationController,
         appDIContainer: AppDIContainer) {
        self.navigationController = navigationController
        self.appDIContainer = appDIContainer
    }

    func start() {
        let aSceneDIContainer = appDIContainer.makeADIContainer()
        let flow = aSceneDIContainer.makeAFlowCoordinator(navigationController: navigationController)
        flow.start()
    }
}
