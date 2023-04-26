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
    
    private init() {}
    
    public func getTopStories(completion: @escaping (Result<[String], Error>) -> Void) {
        guard let url = Constants.topHeadlinesURL else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            }
            else if let data = data {
                
                do {
                    let result = try JSONDecoder().decode(String.self, from: data)
                }
                catch {
                    completion(.failure(error))
                }
            }
        }
    }
}
