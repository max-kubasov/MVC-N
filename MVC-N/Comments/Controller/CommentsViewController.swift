//
//  ViewController.swift
//  MVC-N
//
//  Created by Max on 01.02.2023.
//

import UIKit

class CommentsViewController: UIViewController {
    
    let url = "https://jsonplaceholder.typicode.com/posts/1/comments"

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CommentNetworkServices.getComments {
            
        }
    }
}

extension CommentsViewController: UITableViewDelegate {
    
}

extension CommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
}

