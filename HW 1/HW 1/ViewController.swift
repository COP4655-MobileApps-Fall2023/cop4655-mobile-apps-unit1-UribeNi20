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
       
        babyPhoto.layer.cornerRadius = babyPhoto.frame.size.width / 2
        babyPhoto.clipsToBounds = true
        babyPhoto.layer.borderColor = UIColor.black.cgColor
        babyPhoto.layer.borderWidth = 4
    }


}

