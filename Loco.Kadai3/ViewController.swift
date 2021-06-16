import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var leftInputTextField: UITextField!
    @IBOutlet private weak var rightInputTextField: UITextField!
    @IBOutlet private weak var changeLeftSwitch: UISwitch!
    @IBOutlet private weak var changeRightSwitch: UISwitch!
    @IBOutlet private weak var leftNumberLabel: UILabel!
    @IBOutlet private weak var rightNumberLabel: UILabel!
    @IBOutlet private weak var calculateDisplayLabel: UILabel!

    private func calculateAndDisplay() {
        let leftFieldNum = Int(leftInputTextField.text!) ?? 0
        let rightFieldNum = Int(rightInputTextField.text!) ?? 0
        let leftSignedNumber = changeLeftSwitch.isOn ? -leftFieldNum : leftFieldNum
        let rightSingedNumber = changeRightSwitch.isOn ? -rightFieldNum : rightFieldNum

        leftNumberLabel.text = String(leftSignedNumber)
        rightNumberLabel.text = String(rightSingedNumber)
        calculateDisplayLabel.text = String(leftSignedNumber + rightSingedNumber)
    }

    @IBAction private func calculateButton(_ sender: Any) {
        calculateAndDisplay()
    }
}
