import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    // Creating the Typing animation with CLTypingLabel external package
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = Constants.appTitle
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }
}
