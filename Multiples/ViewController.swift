//
//  ViewController.swift
//  Multiples
//
//  Created by Alexander Besson on 2015-10-30.
//  Copyright © 2015 Alexander Besson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberEntered = Int()

    @IBOutlet weak var lblMultiples: UIImageView!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var txtEnterNumber: UITextField!
    @IBOutlet weak var lblHitAdd: UILabel!
    @IBOutlet weak var btnAdd: UIButton!
    
    @IBOutlet weak var lblPleaseEnter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureInitialView()
    }
    
    func configureInitialView() {
        btnAdd.hidden = true
        lblHitAdd.hidden = true
        lblPleaseEnter.hidden = true
    }
    
    @IBAction func playButtonClicked(sender: AnyObject) {
        
        
        if Int(txtEnterNumber.text!) != nil {
            numberEntered = Int(txtEnterNumber.text!)!
            
            btnAdd.hidden = false
            btnPlay.hidden = true
            lblHitAdd.hidden = false
            txtEnterNumber.hidden = true
            lblPleaseEnter.hidden = true
        } else {
            lblPleaseEnter.hidden = false
        }
    }
    
    var counter = 0
    
    @IBAction func addButtonClicked(sender: AnyObject) {
        counter++
        let result = numberEntered * counter
        
        lblHitAdd.text = "\(numberEntered) + \(result) = \(numberEntered + result)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

