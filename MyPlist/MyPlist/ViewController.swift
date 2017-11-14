import UIKit

class ViewController: UIViewController {

    @IBOutlet var ttl: UILabel!
    
    private let bundle = Bundle.main
    var themes: [String: [String: [CGFloat]]] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Example 1
        ex1()
        
        //Example 2
        ex2()
    }
    
    func ex1(){
        let path = bundle.path(forResource: "students", ofType: "plist")!
        print(path)
        
        let students = NSArray(contentsOfFile: path) as! [String]
        
        for s in students {
            print(s)
        }
    }
    
    func ex2() {
        let path = bundle.path(forResource: "themes", ofType: "plist")!
        themes = NSDictionary(contentsOfFile: path) as! Dictionary
        
        let cs = themes["Groot"]!["bgColor"]!
        view.backgroundColor = UIColor(red: cs[0], green: cs[1], blue: cs[2], alpha: cs[3])//[1, 1, 0, 1]
    }
    
    @IBAction func reTheme(_ sender: UIButton) {
        let theme = themes[sender.currentTitle!]!
        let bgColor = theme["bgColor"]!,
            txtColor = theme["txtColor"]!
        
        ttl.backgroundColor = UIColor(red: bgColor[0], green: bgColor[1], blue: bgColor[2], alpha: bgColor[3])
        ttl.textColor = UIColor(red: txtColor[0], green: txtColor[1], blue: txtColor[2], alpha: txtColor[3])
    }
    
}
















