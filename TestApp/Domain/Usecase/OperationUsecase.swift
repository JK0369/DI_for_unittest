//
//  OperationUsecase.swift
//  TestApp
//
//  Created by 김종권 on 2021/07/14.
//

import Foundation

protocol AddUsecase {
    func execute(a: Int, b: Int) -> Int
}

class DefaultAddUsecase: AddUsecase {
    func execute(a: Int, b: Int) -> Int {
        return a + b
    }
}
