//
//  ViewController.swift
//  emojiDictionary
//
//  Created by Gabriella Gonzalez on 1/30/17.
//  Copyright © 2017 Gaby G. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var emojiTable: UITableView!
    
    var emojis: [Emoji]  = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        emojiTable.dataSource = self
        emojiTable.delegate = self
        emojis = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji 
            
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.birthYear = 2011
        emoji1.category = "Smiley"
        emoji1.definition = "a cool person"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "💩"
        emoji2.birthYear = 2015
        emoji2.category = "Smiley"
        emoji2.definition = "a pile of poop"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐼"
        emoji3.birthYear = 2010
        emoji3.category = "Animal"
        emoji3.definition = "panda face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😂"
        emoji4.birthYear = 2008
        emoji4.category = "Smiley"
        emoji4.definition = "a person in tears from laughing too hard"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "📱"
        emoji5.birthYear = 2014
        emoji5.category = "Thing"
        emoji5.definition = "a phone"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5]
        
    }

}

