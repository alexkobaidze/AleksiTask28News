//
//  NewsCell.swift
//  AleksiTask28News
//
//  Created by Alex on 08.06.21.
//
import UIKit
import Kingfisher

class NewsCell: UITableViewCell {

    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with item: NewsViewModel) {
        
        authorLabel.text = item.author
        descriptionLabel.text = item.shortDescription
        dateLabel.text = item.date
        coverImage.kf.setImage(with: item.pictureUrl)
  
    }
    
}
