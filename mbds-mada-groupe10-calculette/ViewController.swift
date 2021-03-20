//
//  ViewController.swift
//  mbds-mada-groupe10-calculette
//
//  Created by mbdse on 19/03/2021.
//  Copyright © 2021 com.mbds.madagascar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombre1: UITextField!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // calcul
    var calcul: String = ""
    // fonction pour ajouter un calcul
    func addCalcul(val: String) {
        calcul = calcul + val
        nombre1.text = calcul
    }

    @IBAction func onClick(_ sender: Any) {
        calcul=""
        nombre1.text=calcul
    }
    @IBAction func devideTap(_ sender: Any) {
        addCalcul(val: "/")
    }
    @IBAction func equalTap(_ sender: Any) {
        let stringWithMathematicalOperation: String = calcul // Example
        let exp: NSExpression = NSExpression(format: stringWithMathematicalOperation)
        let result: Double = exp.expressionValue(with:nil, context: nil) as! Double
        label.text = "\(result)"
    }
    @IBAction func zeroTap(_ sender: Any) {
        addCalcul(val: "0")
    }
    @IBAction func dotTap(_ sender: Any) {
        addCalcul(val: ".")
    }
    @IBAction func twoTap(_ sender: Any) {
        addCalcul(val: "2")
    }
    @IBAction func timesTap(_ sender: Any) {
        addCalcul(val: "*")
    }
    @IBAction func oneTap(_ sender: Any) {
        addCalcul(val: "1")
    }
    @IBAction func threeTap(_ sender: Any) {
        addCalcul(val: "3")
    }
    @IBAction func minusTap(_ sender: Any) {
        addCalcul(val: "-")
    }
    @IBAction func sixTap(_ sender: Any) {
        addCalcul(val: "6")
    }
    @IBAction func fiveTap(_ sender: Any) {
        addCalcul(val: "5")
    }
    @IBAction func fourTap(_ sender: Any) {
        addCalcul(val: "4")
    }
    @IBAction func plusTap(_ sender: Any) {
        addCalcul(val: "+")
    }
    @IBAction func eigthTap(_ sender: Any) {
        addCalcul(val: "8")
    }
    @IBAction func nineTap(_ sender: Any) {
        addCalcul(val: "9")
    }
    @IBAction func sevenTap(_ sender: Any) {
        addCalcul(val: "7")
    }
    
}

