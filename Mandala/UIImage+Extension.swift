// 
//  Copyright © 2020 Big Nerd Ranch
//

import UIKit

enum ImageResource1: String {
    case angry
    case confused
    case crying
    case goofy
    case happy
    case meh
    case sad
    case sleepy
}

extension UIImage {
    
    convenience init(resource: ImageResource1) {
        self.init(named: resource.rawValue)!
    }
    
}
