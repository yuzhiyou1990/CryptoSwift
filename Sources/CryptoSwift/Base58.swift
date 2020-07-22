//
//  File.swift
//  
//
//  Created by Yuzhiyou on 2020/7/22.
//

import Foundation
import Base58Swift

public extension Data {
    var base58: String {
        return Base58.base58Encode(bytes)
    }
    var base58Check: String {
        return Base58.base58CheckEncode(bytes)
    }
}
