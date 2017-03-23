//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Leasure, Eran on 3/19/17.
//  Copyright © 2017 Bedrock Detroit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainTableView: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
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
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2009
        emoji1.category = "Smileys & People"
        emoji1.definition = "Grinning face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤔"
        emoji2.birthYear = 2011
        emoji2.category = "Smileys & People"
        emoji2.definition = "Thinking face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "👓"
        emoji3.birthYear = 2010
        emoji3.category = "Smileys & People"
        emoji3.definition = "Eyeglasses"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😍"
        emoji4.birthYear = 2009
        emoji4.category = "Smileys & People"
        emoji4.definition = "Smiling face with heart-shaped eyes"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🖕"
        emoji5.birthYear = 2012
        emoji5.category = "Smileys & People"
        emoji5.definition = "Reverse hand with middle-finger extended"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "⛈"
        emoji6.birthYear = 2011
        emoji6.category = "Animals & Nature"
        emoji6.definition = "Thunder cloud and rain"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }

}

