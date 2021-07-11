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

}
