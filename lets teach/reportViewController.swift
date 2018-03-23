//
//  reportViewController.swift
//  Lets Teach
//
//  Created by MacBook Air on 1/27/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit
import FirebaseDatabase

class reportViewController: UIViewController {
    
    var ref:DatabaseReference?
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var familyText: UITextField!
    @IBOutlet weak var dateText: UIDatePicker!
    @IBOutlet weak var otherText: UITextField!
    
    @IBAction func subButton(_ sender: UIButton) {
        
        //   ref?.child("reports").child("name").setValue(nameText.text)
        
        let name = nameText.text
        
        
        let dateformatter = DateFormatter()
        
        dateformatter.dateStyle = DateFormatter.Style.short
        
        
        
        let now = dateformatter.string(from: NSDate() as Date)
        
        
        
        if(familyText.text != "")
        {
            ref?.child("reports").child(name!).child("family").setValue(familyText.text);
        }
       
            
            
            
        if (nameText.text != "")
        {
            ref?.child("reports").child(name!).child("name").setValue(nameText.text);
            
        }
       
            
            
        if (otherText.text != "")
        {
            ref?.child("reports").child(name!).child("other").setValue(otherText.text);
        }
        
      
        if (familyText.text == "")
       {
            
            let alertsheet = UIAlertController(
                title:"Must complete all fields",
                message: "Enter your Car Interest",
                preferredStyle : .alert)
            
            
            alertsheet.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                print("confirm")
            }))
            
            present(alertsheet, animated: true, completion: nil)
            
       }
            
            
            
       else if (nameText.text == "")
    {
            let alertsheet = UIAlertController(
                title:"Must complete all fields",
                message: "Enter your Name",
                preferredStyle : .alert)
            
            
            alertsheet.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                print("confirm")
            }))
            
            present(alertsheet, animated: true, completion: nil)
        }
        
        else if ( otherText.text == "")
        {
            let alertsheet = UIAlertController(
                title:"Must complete all fields",
                message: "Please enter a Comment",
                preferredStyle : .alert)
            
            
            alertsheet.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                print("confirm")
            }))
            
            present(alertsheet, animated: true, completion: nil)
        }
 
        
        if (otherText.text != "" && familyText.text != "" && nameText.text != "")
        {
            ref?.child("reports").child(name!).child("date").setValue(now);
            self.performSegue(withIdentifier: "subbutton", sender: nil)
            
        }
        
    
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref =  Database.database().reference()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
}
