//
//  ViewController.swift
//  Animation PH
//
//  Created by Evgeniy Ryshkov on 17/12/2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tap: UIButton!
    
    var imageView: UIImageView!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = CGPoint(x: 512, y: 384)
        
        view.addSubview(imageView)
    }

    @IBAction func tapped(_ sender: UIButton) {
        
        tap.isHidden = true
        
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: {[unowned self] in
            switch self.currentAnimation {
            case 0:
                break
            default:
                break
            }
        }) {[unowned self] (finished: Bool) in
            self.tap.isHidden = false
        }
        
        currentAnimation += 1
        if currentAnimation > 7 {
            currentAnimation = 0
        }
    }
    
}

