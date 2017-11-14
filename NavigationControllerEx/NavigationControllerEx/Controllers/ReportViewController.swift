
import UIKit

class ReportViewController: UIViewController {

    private var data: [String:String]!
    
    @IBOutlet var reportTextView: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        var report = ""
        for (k, v) in data {
            report += "\(k): \(v)\n"
        }
        reportTextView.text = report
    }

    public func passData(_ data: [String:String]){
        self.data = data
    }
    
    @IBAction func back() {
        navigationController!.popToRootViewController(animated: true)
    }
}















