//
//  ViewController.swift
//  Story
//
//  Created by Jamie on 2020/06/16.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

var storyBrain = StoryBrain()

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var choice1Label: UIButton!
    
    @IBOutlet weak var choice2Label: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UpdateUI()
        
    }

    @IBAction func answerButton(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice : sender.currentTitle!)
        
        UpdateUI()
        
    }
    
    func UpdateUI() {
        
        textLabel.text = storyBrain.getStoryTitle()
        choice1Label.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Label.setTitle(storyBrain.getChoice2(), for: .normal)
        
        
        
    }
    
}

