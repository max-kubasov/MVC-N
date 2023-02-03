//
//  CommentCell.swift
//  MVC-N
//
//  Created by Max on 01.02.2023.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    
    func configure(with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body 
    }
}
