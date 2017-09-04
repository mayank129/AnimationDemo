//
//  CombineViewController.swift
//  AnimationsDemo
//
//  Created by Mayank on 01/09/17.
//  Copyright © 2017 Mayank. All rights reserved.
//

import UIKit

class CombineViewController: UIViewController {

    @IBOutlet weak var menuView: UIView!
    @IBOutlet weak var darkView: UIView!
    @IBOutlet weak var toggleButton: UIButton!

    @IBOutlet weak var fadeButton: UIButton!
    @IBOutlet weak var fadeButton2: UIButton!
    @IBOutlet weak var fadeButton3: UIButton!
    @IBOutlet weak var fadeButton4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        darkView.layer.cornerRadius = 22
        fadeButton.layer.cornerRadius = 25
        fadeButton2.layer.cornerRadius = 25
        fadeButton3.layer.cornerRadius = 25
        fadeButton4.layer.cornerRadius = 25
        
        fadeButton.alpha = 0
        fadeButton2.alpha = 0
        fadeButton3.alpha = 0
        fadeButton4.alpha = 0

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toggleMenuButton(_ sender: UIButton) {
        
        if darkView.transform == CGAffineTransform.identity{
            
            UIView.animate(withDuration: 1, animations: {
                self.darkView.transform = CGAffineTransform(scaleX: 22, y: 22)
                self.menuView.transform = CGAffineTransform(translationX: 0, y:-78)
                self.toggleButton.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
            }){(true) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.fadeButton.alpha = 1
                    self.fadeButton2.alpha = 1
                    self.fadeButton3.alpha = 1
                    self.fadeButton4.alpha = 1
                })
            }
        }
        else{
            UIView.animate(withDuration: 1, animations: {
                self.darkView.transform = CGAffineTransform.identity
                self.menuView.transform = CGAffineTransform.identity
                self.toggleButton.transform = CGAffineTransform.identity
                UIView.animate(withDuration: 0.5, animations: {
                    self.fadeButton.alpha = 0
                    self.fadeButton2.alpha = 0
                    self.fadeButton3.alpha = 0
                    self.fadeButton4.alpha = 0
                    
                })
            })
        }
        
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
