//
//  NewsViewModel.swift
//  AleksiTask28News
//
//  Created by Alex on 08.06.21.
//

import Foundation

struct NewsViewModel {
    
    private var news: News
    
    init(news: News) {
        self.news = news
    }
    
    var author: String {
        news.authorName ?? ""
    }
    
    var shortDescription: String {
        news.shortDescription ?? ""
    }
    
    var pictureUrl: URL? {
        URL(string: news.pictureUrl ?? "")
    }
    
    var date: String {
        news.date ?? ""
    }
}
