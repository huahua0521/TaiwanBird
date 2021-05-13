//
//  BirdTableViewCell.swift
//  TaiwanBird
//
//  Created by BRAVO iDEAS on 2021/5/12.
//

import UIKit

class BirdTableViewCell: UITableViewCell {

    @IBOutlet weak var birdImageView: UIImageView!
    @IBOutlet weak var birdTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateUI(with info:Bird){
        birdTitleLabel.text = info.name
        self.birdImageView.image = nil
        if let url = URL(string: info.imageUrl) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        self.birdImageView.image = image
                    }
                }
            }.resume()
        }
    }
}
