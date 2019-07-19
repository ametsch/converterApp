//
//  model.swift
//  IOSConverter
//
//  Created by Camper on 7/17/19.
//  Copyright © 2019 Sci - Tech. All rights reserved.
//

import Foundation


struct Exchange: Codable {
    var base: String
    
    var rates: [String: Double]
    
    var date: String
}

class LoadRates {
    
    private init() { }
    
    private static let decoder = JSONDecoder()
    
    static func load(completion: @escaping (Exchange?) -> Void) {
        DispatchQueue.global(qos: .userInitiated).async {
            guard let url = URL(string: "https://api.ratesapi.io/api/latest?base=USD") else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                guard let data = data, error == nil else {
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                    return
                }
                
                do {
                    let eRates = try decoder.decode(Exchange.self, from: data)
                    DispatchQueue.main.async {
                        completion(eRates)
                    }
                } catch {
                    print(error)
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                }
                
            }.resume()
            
        }
    }
    
}

/*
 let exchange: Exchange!

if let usd = exchange["CNY"] {
    print(usd)
}
*/
