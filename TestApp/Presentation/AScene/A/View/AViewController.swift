//
//  AViewController.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import UIKit

class AViewController: UIViewController {

    private var viewModel: AViewModel!

    static func create(with viewModel: AViewModel) -> AViewController {
        let view = AViewController()
        view.viewModel = viewModel
        return view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
}
