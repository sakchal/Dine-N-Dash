//
//  DiningDetailsViewController.swift
//  Dining Waiting Time Tracker
//
//  Created by Ayushi Rajpoot on 10/23/21.
//

import UIKit
import Cosmos

class DiningDetailsViewController: UIViewController {
    
    static var ratingSums = [
        "west_village": 0.0,
        "north_avenue": 0.0,
        "brittain": 0.0
    ]
    


    static var ratingCounts = [
        "west_village": 0.0,
        "north_avenue": 0.0,
        "brittain": 0.0
    ]
    
    @IBOutlet weak var reviewComments: UILabel!
    static var reviewComments = [String]()
    
    @IBOutlet weak var WaitTimeLabel: UILabel!
    
    
    var diningHall = "gfdsgdfs"
    @IBOutlet weak var ratingView: CosmosView!
    @IBOutlet weak var averageLabel: UILabel!
    @IBOutlet weak var commentsField: UITextField!
    @IBOutlet weak var reviewLabel: UILabel!
    
    @IBAction func ReturnButton(_ sender: Any) {
        DiningDetailsViewController.ratingSums["west_village"]! += ratingView.rating
        DiningDetailsViewController.ratingCounts["west_village"]! += 1.0
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    @IBAction func EnterReview(_ sender: Any) {
        let input = String(commentsField.text!)
        print(input)
        DiningDetailsViewController.reviewComments.append(input)
        
        var arrayString = ""
        for comment in DiningDetailsViewController.reviewComments {
            arrayString = arrayString + "\(comment)" + "\n"
            //(reviewLabel.text ?? "") +
        }
        
        print(arrayString)
        
        reviewLabel.text = arrayString

        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        averageLabel.text = String(DiningDetailsViewController.ratingSums[diningHall]!/DiningDetailsViewController.ratingCounts[diningHall]!)

        reviewLabel.text = "Check Here for Reviews"
        reviewLabel.numberOfLines = 0
        
        //var value = 100
        //num was set to 100 for purpose of demonstration
        var waitTime = pow(1.0055,100.0) + 5
        WaitTimeLabel.text = String(waitTime)
        
    
    }
}
