import UIKit
import FirebaseCore
import FirebaseAuth

class ChatViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var messages: [Message] = [
        Message(sender: "stolenfallen1@gmail.com", body: "Hey!"),
        Message(sender: "jquizeo_ccs@uspf.edu.ph", body: "Yow!"),
        Message(sender: "stolenfallen1@gmail.com", body: "Study bro!!! you are not smart, and you are a slow learner, please just be diligent and keep griding, watch youtube, review old code. Get better!")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
//        tableView.delegate = self
        title = Constants.appTitle
        navigationItem.hidesBackButton = true
        
        tableView.register(UINib(nibName: Constants.cellNibName, bundle: nil), forCellReuseIdentifier: Constants.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
            
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
    
    
}

extension ChatViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = messages[indexPath.row].body
        return cell
    }
        
}

// THIS LINE OF CODE CAN BE USEFULL WHEN NEEDING TO DYNAMICALLY DO SOMETHING WHILE CLICKING OR PRESSING A CERTAIN ITEM IN A TABLE VIEW, BUT IN ORDER TO BE ABLE TO USE THIS YOUR TABLE VIEW CELL'S SELECTION PROPERTY HAVE TO BE SET TO 'DEFAULT' INSTEAD OF 'NONE'
//extension ChatViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//    }
//}
