//
//  HomeViewController.swift
//  TaiwanBird
//
//  Created by BRAVO iDEAS on 2021/5/12.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var mainImageView: UIImageView!
    static let imageUrl = "https://loremflickr.com/300/300/bird"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchRandomImage()
    }
    func fetchRandomImage() {
        
        if let url = URL(string: HomeViewController.imageUrl) {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        self.mainImageView.image = image
                    }
                }
            }.resume()
        }
    }
    
    @IBAction func randomButtonTouched(_ sender: UIButton) {
        
        fetchRandomImage()
    }
    


}
