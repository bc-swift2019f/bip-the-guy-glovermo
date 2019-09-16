//
//  ViewController.swift
//  Bip The Guy
//
//  Created by Morgan Glover on 9/16/19.
//  Copyright © 2019 Morgan Glover. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Functions
    func animateImage(){
        let bounds = self.imageToPunch.bounds
        let shrinkValue: CGFloat = 60
        
        //shrink imageToPunch by 60
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.minX + shrinkValue, y: self.imageToPunch.bounds.minY + shrinkValue, width: self.imageToPunch.bounds.size.width - shrinkValue, height: self.imageToPunch.bounds.size.height - shrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds }, completion: nil)
    }
    
    //MARK: Actions
    @IBAction func libraryPressed(_ sender: UIButton) {
        print("Image Library pressed")
    }
    @IBAction func cameraPressed(_ sender: UIButton) {
        print("Take Picture pressed")
    }
    @IBAction func imagePressed(_ sender: UITapGestureRecognizer) {
        animateImage()
    }
    
}

