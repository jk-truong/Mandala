//
//  ViewController.swift
//  Mandala
//
//  Created by Joshua Truong on 6/5/24.
//

import UIKit

class MoodSelectionViewController: UIViewController {
    
    @IBOutlet var moodSelector: ImageSelector!
    @IBOutlet var addMoodButton: UIButton!
    
    @IBAction func addMoodTapped(_ sender: Any) {
        guard let currentMood = currentMood else {
            return
        }

        let newMoodEntry = MoodEntry(mood: currentMood, timestamp: Date())
        moodsConfigurable.add(newMoodEntry)
    }
    
    var moods: [Mood] = [] {
        didSet {
            currentMood = moods.first
            moodSelector.images = moods.map { $0.image }
        }
    }
    
    var currentMood: Mood? {
        // Updates the current moood when the control selection changes
        didSet {
            guard let currentMood = currentMood else {
                addMoodButton?.setTitle(nil, for: .normal)
                addMoodButton?.backgroundColor = nil
                return
            }
            
            addMoodButton?.setTitle("I'm \(currentMood.name)", for: .normal)
            addMoodButton?.backgroundColor = currentMood.color
        }
    }
    
    var moodsConfigurable: MoodsConfigurable!
    
    @IBAction private func moodSelectionChanged(_ sender: ImageSelector) {
        let selectedIndex = sender.selectedIndex
        
        currentMood = moods[selectedIndex]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        moods = [.happy, .sad, .angry, .goofy, .crying, .confused, .sleepy, .meh]
        
        addMoodButton.layer.cornerRadius = addMoodButton.bounds.height / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "embedContainerViewController"?:
            guard let moodsConfigurable = segue.destination as? MoodsConfigurable else {
                preconditionFailure("View controller expected to conform to MoodsConfigurable")
            }
            self.moodsConfigurable = moodsConfigurable
            segue.destination.additionalSafeAreaInsets =
                                    UIEdgeInsets(top: 0, left: 0, bottom: 160, right: 0)
            // If this happens, you need to set the "embedContainerViewController" identifier value for the segue in the storyboard
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }

}

