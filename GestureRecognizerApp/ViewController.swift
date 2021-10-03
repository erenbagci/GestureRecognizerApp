//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Eren on 26.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isFiesta = true

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func changePic(){
        if isFiesta == true{
        imageView.image = UIImage(named: "fiesta2")
            myLabel.text = "fiesta2"
            isFiesta = false
        } else {
            imageView.image = UIImage(named: "Fiesta")
            myLabel.text = "fiesta"
            isFiesta = true
            
        }
    }
    
}

