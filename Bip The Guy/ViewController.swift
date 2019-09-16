//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Morgan Glover on 9/16/19.
//  Copyright © 2019 Morgan Glover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func libraryPressed(_ sender: UIButton) {
        print("Image Library pressed")
    }
    @IBAction func cameraPressed(_ sender: UIButton) {
        print("Take Picture pressed")
    }
    @IBAction func imagePressed(_ sender: UITapGestureRecognizer) {
        print("Image pressed")
    }
    
}

