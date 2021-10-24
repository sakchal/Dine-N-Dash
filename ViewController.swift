//
//  ViewController.swift
//  Dining Waiting Time Tracker
//
//  Created by Ayushi Rajpoot on 10/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func westVillageButton(_ sender: Any) {
        let controller = makeDiningDetailsViewController()
        controller.diningHall = "west_village"
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func northAve(_ sender: Any) {
        let controller = makeDiningDetailsViewController()
        controller.diningHall = "north_avenue"
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func brittainButton(_ sender: Any) {
        let controller = makeDiningDetailsViewController()
        controller.diningHall = "brittain"
        present(controller, animated: true, completion: nil)
    }
    
    private func makeDiningDetailsViewController() -> DiningDetailsViewController {
        return storyboard!.instantiateViewController(withIdentifier: "DiningDetailsViewController") as! DiningDetailsViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

