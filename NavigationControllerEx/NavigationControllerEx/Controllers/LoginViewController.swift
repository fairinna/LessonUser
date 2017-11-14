import UIKit

class LoginViewController: UIViewController {
    
    private static let LOGIN = "login"
    
    @IBOutlet var userTxt: UITextField!
    @IBOutlet var passTxt: UITextField!
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == LoginViewController.LOGIN {
            return validateLogin()
        }
        
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == LoginViewController.LOGIN {
            let navi = segue.destination as! MyNavigationController
            navi.setCredentials(user: userTxt.text!, pass: passTxt.text!)
        }
        
    }
    
    private func validateLogin() -> Bool {
        let user = userTxt.text!
        let pass = passTxt.text!
        
        return !user.isEmpty && !pass.isEmpty
                && user != pass
    }
}






















