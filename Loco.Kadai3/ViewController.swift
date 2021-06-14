import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var inputTextFieldLeft: UITextField!
    @IBOutlet private weak var inputTextFieldRight: UITextField!
    @IBOutlet private weak var changeLeftSwitch: UISwitch!
    @IBOutlet private weak var changeRightSwitch: UISwitch!
    @IBOutlet private weak var leftNumberLabel: UILabel!
    @IBOutlet private weak var rightNumberLabel: UILabel!
    @IBOutlet private weak var calculateDisplayLabel: UILabel!

    private func calculateAndDisplay() {
        let leftFieldNum = Int(inputTextFieldLeft.text!) ?? 0
        let rightFieldNum = Int(inputTextFieldRight.text!) ?? 0

        let calculateNumberLeft = changeLeftSwitch.isOn ? leftFieldNum * -1 : leftFieldNum
        let calculateNumberRight = changeRightSwitch.isOn ? rightFieldNum * -1 : rightFieldNum

        leftNumberLabel.text = String(calculateNumberLeft)
        rightNumberLabel.text = String(calculateNumberRight)
        calculateDisplayLabel.text = String(calculateNumberLeft + calculateNumberRight)
    }

    @IBAction private func calculateButton(_ sender: Any) {
        calculateAndDisplay()
    }
}
