import UIKit

class Details2ViewController: UIViewController {
    private var data: [String : String]!
    
    //when we are done with editing
    @IBAction func changeText(_ sender: UITextField) {
        if let text = sender.text {
            data[sender.placeholder!] = text
        }
    }
    
    @IBAction func changeColor(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        data["color"] = sender.titleForSegment(at: index)
    }
    
    public func passData(_ data:[String:String]){
        self.data = data
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "report" {
            view.endEditing(true)
            let report = segue.destination as! ReportViewController
            report.passData(data)
        }
    }
}
















