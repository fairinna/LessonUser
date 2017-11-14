import UIKit

class MyNavigationController: UINavigationController {

    private var user, pass: String!
    
    public func setCredentials(user: String, pass: String){
        self.user = user
        self.pass = pass
    }
    
    public func getCredentials() -> (user: String, pass: String){
        return (user, pass)
    }
    
}
