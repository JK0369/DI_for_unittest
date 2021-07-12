//
//  AppAppearance.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import UIKit

final class AppAppearance {
    static func setupAppearance() {
//        UINavigationBar.appearance().barTintColor = .black
//        UINavigationBar.appearance().tintColor = .white
//        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}

extension UINavigationController {
    @objc open override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
