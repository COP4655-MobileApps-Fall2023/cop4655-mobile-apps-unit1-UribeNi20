//
//  DetailViewController.swift
//  HW 1
//
//  Created by Nicolas Uribe on 9/5/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    var labelText: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        // Set the label's text
        myLabel.text = labelText
        
        // Set the image
        if let name = imageName {
            myImage.image = UIImage(named: name)
        }
    }
    

    @IBOutlet weak var myImage: UIImageView!
    var imageName: String?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
