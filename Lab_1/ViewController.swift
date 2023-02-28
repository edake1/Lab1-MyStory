//
//  ViewController.swift
//  Lab_1
//
//  Created by Edwin Dake on 2/26/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let backstory = Ironman(image: UIImage(named: "ironman1")!,headText: "My Back Story", text: "Tony Stark, a brilliant inventor and CEO of Stark Industries, was kidnapped by terrorists and forced to build a weapon. Instead, he created a suit of armor with advanced technology that allowed him to escape. Realizing the potential of his creation, he refined it and became the superhero known as Iron Man, protecting the world with his genius and daring.")
    
    let avengers = Ironman(image: UIImage(named: "founding")!, headText: "Founding The Avengers", text: "Tony Stark, as Iron Man, played a pivotal role in the formation of the Avengers, a team of superheroes who came together to protect the world from threats too big for any one hero. Using his resources and connections, Stark recruited other heroes to join him, and together they became one of the most iconic teams in comic book history")
    
    let endgame = Ironman(image: UIImage(named: "endgame2")!,
        headText: "The Endgame", text: "In Avengers: Endgame, Tony Stark sacrifices himself to defeat the villainous Thanos and save the universe. Using his intelligence and ingenuity, he creates a weapon that allows the Avengers to gain the upper hand in battle, but the effort proves fatal. His death is mourned by his friends and fellow heroes, but his legacy lives on as a symbol of heroism and sacrifice.")

    // array for facts
    var details: [Ironman] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // imageView.layer.masksToBounds = true
        // imageView.layer.cornerRadius = imageView.frame.height / 2
        
        // imageView.clipsToBounds = true
        // imageView.layer.cornerRadius = imageView.frame.width / 2
        details = [backstory, avengers, endgame]
       
        
    }

    // Handle Segue Transition
    @IBAction func didTapButtonGesture(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    @IBAction func didTapPhoto(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "photoSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.ironman = details[0]
            } else if tappedView.tag == 1 {
                detailViewController.ironman = details[1]
            } else if tappedView.tag == 2 {
                detailViewController.ironman = details[2]
            } else {
                print("No button was tapped!.")
            }
        }
    }
    
    
}

