//
//  ViewController.swift
//  AnimationsDemo
//
//  Created by Mayank on 30/08/17.
//  Copyright © 2017 Mayank. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var button1Constraint: NSLayoutConstraint!
    @IBOutlet weak var button2Constraint: NSLayoutConstraint!
    @IBOutlet weak var shakeText: ShakeTextView!
    var animationPerformed :Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.button1Constraint.constant -= view.bounds.width
        self.button2Constraint.constant -= view.bounds.width
        shakeText.delegate = self
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        shakeText.shake()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if !animationPerformed{
            UIView.animate(withDuration: 0.9, delay: 0, options: .curveEaseOut, animations: {
                self.button1Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
            
            UIView.animate(withDuration: 0.9, delay: 1, options: .curveEaseOut, animations: {
                self.button2Constraint.constant += self.view.bounds.width
                self.view.layoutIfNeeded()
            }, completion: nil)
        }
        animationPerformed = true
    }

    @IBAction func moveToButtonController(_ sender: UIButton) {
        
        let VC1 = self.storyboard?.instantiateViewController(withIdentifier: "buttonviewcontroller")
        self.navigationController?.pushViewController(VC1!, animated: true)
    }
    
    @IBAction func moveToTableView(_ sender: UIButton) {
        let VC1 = self.storyboard?.instantiateViewController(withIdentifier: "tableViewController")
        self.navigationController?.pushViewController(VC1!, animated: true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

