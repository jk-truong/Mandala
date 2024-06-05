//
//  Mood.swift
//  Mandala
//
//  Created by Joshua Truong on 6/5/24.
//

import UIKit

struct Mood {
    var name: String
    var image: UIImage
    var color: UIColor
}

extension Mood {
    
    static let angry = Mood(name: "angry",
                            image: UIImage(resource: ImageResource1.angry),
                            color: UIColor.angry)

    static let confused = Mood(name: "confused",
                               image: UIImage(resource: ImageResource1.confused),
                               color: UIColor.confused)

    static let crying = Mood(name: "crying",
                             image: UIImage(resource: ImageResource1.crying),
                             color: UIColor.crying)

    static let goofy = Mood(name: "goofy",
                            image: UIImage(resource: ImageResource1.goofy),
                            color: UIColor.goofy)

    static let happy = Mood(name: "happy",
                            image: UIImage(resource: ImageResource1.happy),
                            color: UIColor.happy)

    static let meh = Mood(name: "meh",
                          image: UIImage(resource: ImageResource1.meh),
                          color: UIColor.meh)

    static let sad = Mood(name: "sad",
                          image: UIImage(resource: ImageResource1.sad),
                          color: UIColor.sad)

    static let sleepy = Mood(name: "sleepy",
                             image: UIImage(resource: ImageResource1.sleepy),
                             color: UIColor.sleepy)
    
}
