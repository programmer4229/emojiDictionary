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
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "BirthYear = \(emoji.birthYear)"
        categoryLabel.text = "Category = \(emoji.category)"
        emojiDefinition.text = emoji.definition 
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        
 }
