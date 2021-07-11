//
//  AppConfiguration.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import Foundation

final class AppConfiguration {
    lazy var apiKey: String = {
        return "123"
    }()

    lazy var apiBaseURL: String = {
        return "456"
    }()
}
