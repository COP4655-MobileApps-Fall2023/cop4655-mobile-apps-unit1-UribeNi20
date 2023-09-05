//
//  ViewController.swift
//  HW 1
//
//  Created by Nicolas Uribe on 9/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var babyPhoto: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
//        babyPhoto.layer.cornerRadius = babyPhoto.frame.size.width / 2
//        babyPhoto.clipsToBounds = true
//        babyPhoto.layer.borderColor = UIColor.black.cgColor
//        babyPhoto.layer.borderWidth = 4
    }
    
    @IBAction func didTapQuestion(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            if let nextVC = segue.destination as? DetailViewController,
               let tappedView = sender as? UIView {
                switch tappedView.tag {
                case 1:
                    nextVC.labelText = "He is currently trying to figure that out. Obviously a high paying paying job would be a good start. Working for a MAANG company is the ultimate goal to him. He just wants to be someone that is a reliable coder. To some, these might not be accomplishments, but to him they are."
                case 2:
                    nextVC.labelText = "Q 2"
                // ... and so on for other cases
                default:
                    nextVC.labelText = "His name is Nicolas Uribe. He is currently getting a BA in Computer Science at Florida Atlantic University. He watches sports like football and basketball. When he's feeling producitve he will do some coding on the side."
                }
            }
        }
    }
    
    
    
}

