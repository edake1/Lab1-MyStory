//
//  DetailViewController.swift
//  Lab_1
//
//  Created by Edwin Dake on 2/27/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    // Property
    var ironman: Ironman?
    
    // Outlets
    @IBOutlet weak var ironmanImageView: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = ironman?.headText
        detailsLabel.numberOfLines = 20
        
        // Do any additional setup after loading the view.
        if let ironman = ironman {
            ironmanImageView.image = ironman.image
            detailsLabel.text = ironman.text
            
        }
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
