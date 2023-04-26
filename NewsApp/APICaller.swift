//
//  APICaller.swift
//  NewsApp
//
//  Created by user on 26.04.2023.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    struct Constants {
        static let topHeadlinesURL = URL(string:
                                            "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=API_KEY")
    }
    
    private init() {
        
    }
}
