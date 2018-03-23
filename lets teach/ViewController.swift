//

//  ViewController.swift
//  Lets Teach
//
//  Created by MacBook Air on 1/26/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseAuth

class ViewController: UIViewController
{
    
    @IBOutlet weak var signinbutton: UIButton!
    
    @IBOutlet weak var SigninSelector: UISegmentedControl!
    
    @IBOutlet weak var EmailText: UITextField!
    
    @IBOutlet weak var passText: UITextField!
    
    var issignin:Bool = true
    
    @IBAction func signinchange(_ sender: UISegmentedControl)
    {
        issignin = !issignin
        
        if issignin
        {
            signinbutton.setTitle("Sign In", for: .normal)
        }
        else
        {
            signinbutton.setTitle("Register", for: .normal)
        }
    }
    
    
    
    
    @IBAction func subButton(_ sender: Any)
    {
        
        if let email = EmailText.text, let pass = passText.text{
            if issignin
            {
                Auth.auth().signIn(withEmail: email, password: pass ) { (user, error) in
                    if user != nil
                    {
                        //go to home
                        self.performSegue(withIdentifier: "gotohome", sender: self)
                    }
                    else
                    {
                        //error
                    }
                } }
            
            
        else
        {
            Auth.auth().createUser(withEmail: email, password: pass) { (user, error) in
                    if user != nil
                    {
                        //go to home
                        self.performSegue(withIdentifier: "gotohome", sender: self)
                    }
                    else
                    {
                        //error
                    }
                }
            }
    }

        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        // Do any additional setup after loading the view.
    }
    
}

