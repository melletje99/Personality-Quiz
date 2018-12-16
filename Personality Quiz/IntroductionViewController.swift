//
//  ViewController.swift
//  Personality Quiz
//
//  Created by Wessel Mel on 12/11/2018.
//

import UIKit

class IntroductionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var gamePickerData: [String] = [String]()
    var gameChosen: String = "Which Device Are You?"

    @IBOutlet weak var lu: UILabel!
    @IBOutlet weak var ru: UILabel!
    @IBOutlet weak var ll: UILabel!
    @IBOutlet weak var rl: UILabel!
    @IBOutlet weak var quizLabel: UILabel!
    
    @IBOutlet weak var gamePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gamePicker.delegate = self
        gamePicker.dataSource = self
        quizLabel.text = "Which Device Are You?"
        gamePickerData = ["Which Device Are You?", "Which Animal Are You?"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func unwindToQuizIntroduction(segue:
    UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startQuizSegue" {
            let nc = segue.destination as! UINavigationController
            let vc = nc.topViewController as! QuestionViewController
            vc.gamechosen = gameChosen
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gamePickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return gamePickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        gameChosen = gamePickerData[row]
        quizLabel.text = gameChosen
        if gameChosen == "Which Device Are You?" {
            lu.text = "📱"
            ru.text = "⌚️"
            ll.text = "💻"
            rl.text =  "🖥"
        } else {
            lu.text = "🐶"
            ru.text = "🐱"
            ll.text = "🐰"
            rl.text = "🐢"
        }
    }
}

