//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Leasure, Eran on 3/20/17.
//  Copyright © 2017 Bedrock Detroit. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        switch emoji {
        case "😀":
            definitionLabel.text = "Grinning Face"
            break
        case "🤔":
            definitionLabel.text = "Thinking Face"
            break
        case "💩":
            definitionLabel.text = "Pile of poo"
            break
        case "😍":
            definitionLabel.text = "Smiling face with heart-shaped eyes"
            break
        case "🖕":
            definitionLabel.text = "Reverse hand with middle finger extended"
            break
        case "⛈":
            definitionLabel.text = "Thunder cloud and rain"
            break
        default:
            definitionLabel.text = "Hi!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
