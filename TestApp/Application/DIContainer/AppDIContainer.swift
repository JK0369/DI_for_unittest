//
//  AppDIContainer.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import Foundation

final class AppDIContainer {
    lazy var appConfiguration = AppConfiguration()

    func makeADIContainer() -> ASceneDIContainer {
        let dependencies = ASceneDIContainer.Dependencies()
        return ASceneDIContainer(dependencies: dependencies)
    }
}
