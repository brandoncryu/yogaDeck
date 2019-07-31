//
//  ViewController.swift
//  yogaDeck
//
//  Created by Brandon Ryu on 5/27/19.
//  Copyright © 2019 Brandon Ryu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var randomYogaIndex : Int = 0
    var isImage : Int = 0
    
    let imageArray = ["2 image", "2a image", "3 image", "4 image", "5 image", "6 image"]
    let textArray = ["2 text", "2a text", "3 text", "4 text", "5 text", "6 text"]


    @IBOutlet weak var yogaImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateYogaCard()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        yogaImageView.isUserInteractionEnabled = true
        yogaImageView.addGestureRecognizer(tapGestureRecognizer)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func shuffleCardsPressed(_ sender: UIButton) {
        updateYogaCard()
    }


    
    @IBAction func cardPressed(_ sender: UIButton) {
    }
    
    func updateYogaCard () {
        randomYogaIndex = Int(arc4random_uniform(6))
        
        yogaImageView.image = UIImage(named: imageArray[randomYogaIndex])
        isImage = 1
        
        print (isImage)
        
    }
    
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer){
        _ = tapGestureRecognizer.view as! UIImageView
        if isImage == 1 {
        yogaImageView.image = UIImage(named: textArray[randomYogaIndex])
            isImage = 0}
        else {
            yogaImageView.image = UIImage(named: imageArray[randomYogaIndex])
            isImage = 1}
            
        print(isImage)

   }

}


