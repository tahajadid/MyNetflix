//
//  APICaller.swift
//  My Netflix
//
//  Created by taha_jadid on 8/5/2022.
//

import Foundation

struct Constants {
    static let AP_KEY = "6c134967a90569d3dcea0346a1238c82"
    static let baseURL = "https://api.themoviedb.org"
}

class APICaller {
    static let shared = APICaller()

    func getTrendingMovies(completion: @escaping (String) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day.api_key=\(Constants.AP_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONSerialization.jsonObject(with: data,options: .fragmentsAllowed)
                                                  
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()

        
    }
}
