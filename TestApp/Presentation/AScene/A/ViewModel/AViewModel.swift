//
//  AViewModel.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/12.
//

import Foundation

protocol AInput {
    func viewDidLoad()
}

protocol AOutput {
    var calculatedValue: Observable<Int> { get }
}

protocol AViewModel: AInput, AOutput {}

final class DefaultAViewModel: AViewModel {

    var a: Int
    var b: Int
    let addUsecase: AddUsecase

    // MARK: - Output

    var calculatedValue: Observable<Int> = Observable(0)

    init(addUsecase: AddUsecase, a: Int, b: Int) {
        self.addUsecase = addUsecase
        self.a = a
        self.b = b
    }
}

// MARK: - Input

extension DefaultAViewModel {
    func viewDidLoad() {
        let resultValue = addUsecase.execute(a: a, b: b)
        calculatedValue.value = resultValue
    }
}
