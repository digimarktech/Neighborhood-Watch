//
//  PostCell.swift
//  Neighborhood Watch
//
//  Created by Marc Aupont on 1/30/16.
//  Copyright © 2016 Digimark Technical Solutions. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
    }
    
    func configureCell(post: Post) {
        
        titleLabel.text = post.title
        descLabel.text = post.postDesc
        postImg.image = DataService.instance.imageForPath(post.imagePath)
        
        
    }

    

}
