//
//  BirdsViewController.swift
//  TaiwanBird
//
//  Created by BRAVO iDEAS on 2021/5/12.
//

import UIKit

class BirdsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var birdsArray = Bird.birds
    @IBOutlet weak var birdListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(birdsArray)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        birdsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let birdCell = tableView.dequeueReusableCell(withIdentifier: "\(BirdTableViewCell.self)") as? BirdTableViewCell else { return UITableViewCell() }
        
        let info = birdsArray[indexPath.row]
        birdCell.updateUI(with: info)
        return birdCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.estimatedRowHeight
        
    }
    @IBSegueAction func pusgSegue(_ coder: NSCoder) -> IntroduceViewController? {
        
        guard let selectedRow =  birdListTableView.indexPathForSelectedRow?.row else {
            return  nil }
        
        return IntroduceViewController(corder: coder, birds: birdsArray[selectedRow])
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
