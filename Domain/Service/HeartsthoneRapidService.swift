//
//  HeartsthoneRapidService.swift
//  hearthstoneCards (iOS)
//
//  Created by Carlos alves on 03/04/24.
//

import Alamofire
import Foundation
import PromiseKit

protocol BaseService {
    func get(url: String) -> Promise<Data>
}

class HeartsthoneRapidService: BaseService {
    internal func get(url: String) -> Promise<Data> {
        return Promise { resolve in
            AF.request(url, method: .get,
                       parameters: Parameters(dictionaryLiteral: ("locale", "ptBR")),
                       headers: HTTPHeaders(UrlConstant.headers)) { $0.timeoutInterval = 280 }
                .responseData(completionHandler: { response in
                switch response.result {
                case .success(let data):
                    resolve.resolve(data, nil)
                case .failure(let error):
                    resolve.reject(error)
                }
            })
        }
    }
}
