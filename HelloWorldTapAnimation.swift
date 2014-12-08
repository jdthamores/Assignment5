//
//  ViewController.swift
//  SwiftApp
//
//  Created by Judith Amores
//  Copyright (c) 2014 Judith Amores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 1. Declare ivars
    var textLabel: UILabel!
    var iphoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println("Hello World");
        
        // Create labels
        textLabel = UILabel();
        iphoneLabel = UILabel();
        
        // Setting labels
        addLabels();
        
        // Add Gestures
        var tapGesture = UITapGestureRecognizer(target: self, action: Selector("handleTapGesture:"))
        view.addGestureRecognizer(tapGesture);
    }
    
    func handleTapGesture(tapGesture: UITapGestureRecognizer){
        
        println("Tap");
        addLabels();
    
    }
    
    func addLabels (){
        
        // --------------- TEXT LABEL -----------------------
        
        // Setting "text" label
        textLabel.text = "Hello";
        textLabel.font = UIFont.systemFontOfSize(36);
        
        // Setting the "text" label one to fit
        textLabel.sizeToFit();
        textLabel.center = CGPoint(x: 100, y: 40);
        view.addSubview(textLabel);
        
        // Animation "text" label
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.0, options: nil, animations: {
            
            self.textLabel.center = CGPoint(x: 100, y:40 + 200);
            
            }, completion: nil)
        
        
        // --------------- IPHONE LABEL -----------------------
        
        // Setting "iphone" label
        iphoneLabel.text = "World";
        iphoneLabel.font = UIFont.boldSystemFontOfSize(48);
        
        // Setting the "iphone" label one to fit
        iphoneLabel.sizeToFit();
        iphoneLabel.center = CGPoint(x:200, y: 200);
        view.addSubview(iphoneLabel);
        
        iphoneLabel.alpha = 1; //Hidden = 1
        
        // Animation "iphone" label
        UIView.animateWithDuration(2.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: nil, animations:{
            
            self.iphoneLabel.center = CGPoint(x: 200, y: 90 + 200);
            self.iphoneLabel.alpha = 1; //Visible = 1
            
            }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

