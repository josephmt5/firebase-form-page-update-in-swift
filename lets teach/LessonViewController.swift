//
//  LessonViewController.swift
//  Lets Teach
//
//  Created by MacBook Air on 1/29/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit
import FirebaseDatabase
import Firebase

class LessonViewController: UIViewController {
    var ref:DatabaseReference?
    var refa:DatabaseReference?
    @IBOutlet weak var titleText: UILabel!
    
    
    
    @IBOutlet weak var desText: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
self.navigationController?.setNavigationBarHidden(false, animated: true)
   
    
   let ref = Database.database().reference().child("lesson").child("title")
    
    ref.observeSingleEvent(of: .value, with: { (snapshot) in
    
    if let income = snapshot.value as? String {
    
    self.titleText.text = income
    }
    })
       
        let refa = Database.database().reference().child("lesson").child("description")
        
        refa.observeSingleEvent(of: .value, with: { (snapshot) in
            
            if let incomea = snapshot.value as? String {
                
                self.desText.text = incomea
            }
        })
    

    }
}
