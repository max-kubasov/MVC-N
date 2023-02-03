//
//  CommentNetworkServices.swift
//  MVC-N
//
//  Created by Max on 03.02.2023.
//

import Foundation

class CommentNetworkServices {
    
    private init() {}
    
    static func getComments(complition: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments")
        else { return }
        
        NetworkService.shared.getData(url: url) { json in
            print(json)
        }
    }
}
