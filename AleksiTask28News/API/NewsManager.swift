//
//  NewsManager.swift
//  AleksiTask28News
//
//  Created by Alex on 08.06.21.
//

import Foundation

protocol NewsManagerProtocol: AnyObject {
    func fetchNews(completion: @escaping (([News]) -> Void))
}

class NewsManager: NewsManagerProtocol {

    func fetchNews(completion: @escaping (([News]) -> Void)) {
        let url = "https://newsapi.org/v2/everything?q=tesla&from=2021-05-08&sortBy=publishedAt&apiKey=4e25fe9839b84d95a8b7d6cb340cd236"
        NetworkManager.shared.get(url: url) { (result: Result<NewsResponse, Error>) in
            switch result {
            case .success(let response):
                completion(response.newsList)
            case .failure(let error):
                print(error)
            }
        }
    }
}
