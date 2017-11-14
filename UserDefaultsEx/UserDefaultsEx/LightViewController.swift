import UIKit

class LightViewController: UIViewController {

    @IBOutlet var sw: UISwitch!
    let prefs = UserDefaults.standard
    
    override func viewWillAppear(_ animated: Bool) {
        let b = prefs.bool(forKey: "light")
        sw.setOn(b, animated: false)
        lightSwitch(sw)
    }
    
    @IBAction func lightSwitch(_ sender: UISwitch) {
        prefs.set(sender.isOn, forKey: "light")
        view.backgroundColor = sender.isOn ? UIColor.yellow : UIColor.blue
    }
    
    @IBAction func done(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
