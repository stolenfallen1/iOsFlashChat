import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    // Creating the Typing animation with CLTypingLabel external package
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "⚡️FlashChat"
        
        
// Custom Typing animation using - LOOP
//        titleLabel.text = ""
//        var charIndex = 0.0
//        
//        let titleText = "⚡️FlashChat"
//        for letter in titleText {
//            Timer.scheduledTimer(withTimeInterval: 0.125 * charIndex, repeats: false) { (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//        }
    }
}
