import UIKit

class Details1ViewController: UIViewController {

    private var data: [String : String] = [:]
    @IBOutlet var ageLbl: UILabel!
    
    @IBAction func slideAge(_ sender: UISlider) {
        let age = "\(Int(sender.value))"
        
        data["age"] = age
        ageLbl.text = "Age: \(age)"
    }
    
    @IBAction func next() {
        let navi = navigationController as! MyNavigationController
        let next = storyboard!.instantiateViewController(withIdentifier: "details2") as! Details2ViewController
        
        let cred = navi.getCredentials()
        
        data["user"] = cred.user
        data["pass"] = cred.pass
        
        next.passData(data)
        
        //show(next, sender: self)
        navigationController!.pushViewController(next, animated: true)
    }
}


















