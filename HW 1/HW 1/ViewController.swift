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
                    nextVC.labelText = "He is trying to figure that out. Obviously a high paying paying job would be a good start. Working for a MAANG company is the ultimate goal to him. He also wants an internship first. He just wants to be someone that is a reliable coder at the end of the day."
                        nextVC.imageName = "Who"
                case 2:
                    nextVC.labelText = "For some reason he wants to end up in the North East. Whether thats Boston or NY, who knows. He is not completely opposed to other states like California or certain parts of North Carolina. By then, I think he hopes to have accomplished a few things. He really hopes to get an internship. That seems like a must in his field."
                        nextVC.imageName = "What"
                // ... and so on for other cases
                default:
                    nextVC.labelText = "His name is Nicolas Uribe and is 21 years old. He is currently getting a BA in Computer Science at Florida Atlantic University. He watches sports like football and basketball. When he's feeling producitve he will do some coding on the side. He has ADHD and OCD and is currently learning to cook."
                    nextVC.imageName = "Where"
                }
            }
        }
    }
    
    
    
}

