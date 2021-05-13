//
//  IntroduceViewController.swift
//  TaiwanBird
//
//  Created by BRAVO iDEAS on 2021/5/12.
//

import UIKit
import AVKit
import AVFoundation

class IntroduceViewController: UIViewController {
    let selectBird : Bird
    
    @IBOutlet weak var birdImageView: UIImageView!
    @IBOutlet weak var birdTitleLabel: UILabel!
    @IBOutlet weak var engNameLabel: UILabel!
    @IBOutlet weak var scienceNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var soundDescLabel: UILabel!
    
    init?(corder:NSCoder ,birds:Bird){
        self.selectBird = birds
        super.init(coder: corder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageUrl = URL(string: selectBird.imageUrl){
            URLSession.shared.dataTask(with: imageUrl) { (data, response, error) in
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        self.birdImageView.image = image
                    }
                }
            }.resume()
        }
        birdTitleLabel.text = selectBird.name
        engNameLabel.text = selectBird.engName
        scienceNameLabel.text = selectBird.scientificName
        descriptionLabel.text = selectBird.description
        soundDescLabel.text = selectBird.sound
    }
    
    @IBAction func back(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    let player = AVPlayer()
    
    @IBAction func playSound(_ sender: UIButton) {

        let url = URL(string: selectBird.voiceUrl!)!
        let playerItem = AVPlayerItem(url: url)
        player.replaceCurrentItem(with: playerItem)
        player.play()
    }
    



}
