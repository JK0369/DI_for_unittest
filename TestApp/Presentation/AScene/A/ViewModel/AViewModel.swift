//
//  AViewModel.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import Foundation

protocol AInput {
    func viewDidLoad()
    func didTapCenterButton()
}

protocol AOutput {
    var error: Observable<Bool> { get }
    var item: Observable<String> { get }
}

protocol AViewModel: AInput, AOutput {}

final class DefaultAViewModel: AViewModel {

    // MARK: - Output

    var error: Observable<Bool> = Observable(false)
    var item: Observable<String> = Observable("")

}

// MARK: - Input

extension DefaultAViewModel {
    func viewDidLoad() {
        print("viewDidLoad!!")
    }

    func didTapCenterButton() {
        print("didTapCenterButton!!")
    }
}
