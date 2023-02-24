//
//  KeyChainManager.swift
//  CocktailsHW
//
//  Created by zalkarbek on 24/2/23.
//

import Foundation

class KeyChainManager {
    
    static let shared = KeyChainManager()
    
    private init() {}
    
    func save(_ email: String, data: Data, address: String) {
        let query = [
            kSecValueData: data,
            kSecClass: kSecClassGenericPassword,
            kSecAttrServer: email,
            kSecAttrAccount: address
        ] as CFDictionary
        
        let status = SecItemAdd(query, nil)
        print(status)
    }
}
