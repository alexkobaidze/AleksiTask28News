//
//  NewsViewModel.swift
//  AleksiTask28News
//
//  Created by Alex on 08.06.21.
//

import UIKit

protocol NewsListViewModelProtocol: AnyObject {
    func fetchNewses(completion: @escaping (([NewsViewModel]) -> Void))
    func proceedToDetails(using newsViewModel: NewsViewModel)
    
    init(with newsManager: NewsManagerProtocol, navigationController: UINavigationController?)
}

final class NewsListViewModel: NewsListViewModelProtocol {
    
    private var newsManager: NewsManagerProtocol
    private var navigationController: UINavigationController?
    
    init(with newsManager: NewsManagerProtocol, navigationController: UINavigationController?) {
        self.newsManager = newsManager
        self.navigationController = navigationController
    }
    
    func fetchNewses(completion: @escaping (([NewsViewModel]) -> Void)) {
        newsManager.fetchNews { newsList in
            completion(newsList.map { NewsViewModel(news: $0) })
        }
    }
    
    func proceedToDetails(using newsViewModel: NewsViewModel) {

    }
}
