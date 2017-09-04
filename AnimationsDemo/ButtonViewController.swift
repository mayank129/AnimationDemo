//
//  ButtonViewController.swift
//  AnimationsDemo
//
//  Created by Mayank on 30/08/17.
//  Copyright © 2017 Mayank. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var done = false
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func bounceBack(_ sender: UIButton) {
        
        let bounds = sender.bounds
        
        UIView.animate(withDuration: 1,
                       delay: 0,
                       usingSpringWithDamping:0.3,
                       initialSpringVelocity: 10,
                       options: .curveEaseOut,
                       animations: {
                        sender.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height )
        }){(success: Bool) in
            if success {
                UIView.animate(withDuration: 0.5, animations: {
                    sender.bounds = bounds
                })
                
            }
            
        }
        if !done
        {
            done = true
            UIView.animate(withDuration: 1, animations: {
                self.imageView.transform = CGAffineTransform(rotationAngle:CGFloat( M_PI))
                
            })
        }
        else{
            done = false
            UIView.animate(withDuration: 1, animations: {
                self.imageView.transform = CGAffineTransform.identity
                
            })
        }
        print(done)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
