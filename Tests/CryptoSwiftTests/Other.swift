//
//  File.swift
//  
//
//  Created by Yuzhiyou on 2020/7/22.
//

import XCTest
@testable import CryptoSwift

class TestOtherExample: XCTestCase  {
    func testCryptoExample() {
        let data: Data = Data(hex: "0102030405060708ff")
        print(Data(secRandomCount: 16)!.toHexString())
        print(data.base58)
        print(data.base58Check)
        print(data.sha256().toHexString())
        print(data.sha256_2().toHexString())
        print(data.keccak256().toHexString())
    }

    static let allTests = [
      ("testCryptoExample", testCryptoExample),
    ]
}
