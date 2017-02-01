 //
 //  DefinitionViewController.swift
 //  emojiDictionary
 //
 //  Created by Gabriella Gonzalez on 1/31/17.
 //  Copyright © 2017 Gaby G. All rights reserved.
 //
 
 import UIKit
 
 class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinition: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "💩" {
            emojiDefinition.text = "something gross"
        }else if emoji == "😎"{
            emojiDefinition.text = "a cool person"
        }else if emoji == "😈" {
            emojiDefinition.text = "a happy evil person"
        }else if emoji == "😂" {
            emojiDefinition.text = "a person in tears from laughing too hard"
        }else if emoji == "😘" {
            emojiDefinition.text = "a person blowing a kiss"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
 }
