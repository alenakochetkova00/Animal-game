
import UIKit

class SecondScreen: UIViewController {
    
    // MARK: - Variable declarations
    
    @IBOutlet var header: UILabel!
    @IBOutlet var progressView: UIProgressView!
    
    @IBOutlet var labelSwim: UIButton!
    @IBOutlet var labelSleep: UIButton!
    @IBOutlet var labelCuddle: UIButton!
    @IBOutlet var labelEat: UIButton!
    
    @IBOutlet var swimText: UILabel!
    @IBOutlet var sleepText: UILabel!
    @IBOutlet var cuddleText: UILabel!
    @IBOutlet var eatText: UILabel!
    
    @IBOutlet var firstSwitch: UISwitch!
    @IBOutlet var secondSwitch: UISwitch!
    @IBOutlet var threeSwitch: UISwitch!
    @IBOutlet var fourSwitch: UISwitch!
    
    @IBOutlet var meatLabel: UIButton!
    @IBOutlet var cornLabel: UIButton!
    @IBOutlet var fishLabel: UIButton!
    @IBOutlet var carrotLabel: UIButton!
    
    @IBOutlet var meatText: UILabel!
    @IBOutlet var cornText: UILabel!
    @IBOutlet var fishText: UILabel!
    @IBOutlet var carrotText: UILabel!
    
    @IBOutlet var sliderView: UISlider!
    @IBOutlet var hateLabelSlider: UILabel!
    @IBOutlet var adoreLabelSlider: UILabel!
    
    @IBOutlet var answerButtonOne: UIButton!
    @IBOutlet var answerButtonSecond: UIButton!
    
    @IBOutlet var answerTextOne: UILabel!
    @IBOutlet var answerTextSecond: UILabel!
    
    @IBOutlet var bigViewController: UIView!
    
    var questionIndex = 0
    
    let questions = [
        "What food do you prefer?",
        "What do you like more?",
        "Do you love car trips?" ]
    
    
    let answersFirstQuestion = [
        "meat",
        "corn",
        "fish",
        "carrot" ]
    
    
    let answersSecondQuestion = [
        "swim",
        "sleep",
        "cuddle",
        "eat" ]
    
    
    let answersThirdQuestion = [
        "hate",
        "nervous",
        "calm",
        "love" ]
    
    
    var userData: [String] = []
    
    
    // MARK: - View Didload
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideElements()
        firstQuestion()
    }
    
    
    // MARK: - Main functions
    func hideElements() {
        for hide in [swimText, sleepText, cuddleText, eatText, meatText, cornText, fishText, carrotText, answerTextSecond, meatLabel, cornLabel, fishLabel, carrotLabel, labelSwim, labelSleep, labelCuddle, labelEat, firstSwitch, secondSwitch, threeSwitch, fourSwitch, sliderView, hateLabelSlider, adoreLabelSlider, answerTextOne, answerButtonOne, answerButtonSecond] {
            hide?.isHidden = true
        }
    }
    
    func outputArray() {
        for _ in userData {
        }
    }
    
    
    // MARK: - Layout of the first test
    func firstQuestion() {
        let i = 0
        
        for hideOn in [answerTextSecond, answerTextOne, answerButtonOne, answerButtonSecond] {
            hideOn?.isHidden = true
        }
        
        for hideOff in [meatText,cornText,fishText, carrotText, meatLabel, cornLabel, fishLabel, carrotLabel] {
            hideOff?.isHidden = false
            
            if hideOff?.isHidden == false {
                header.text = questions[i]
                bigViewController.backgroundColor = .systemOrange
                progressView.setProgress(0, animated: true)
            }
        }
    }
    
    
    
    
    // MARK: - Layout of the second test
    @IBAction func meatButton(_ sender: Any) {
        
        let i = 0
        userData.append(answersFirstQuestion[i])
        
        for hideOn in [meatText,cornText,fishText, carrotText, meatLabel, cornLabel, fishLabel, carrotLabel, answerButtonSecond, answerTextSecond] {
            hideOn?.isHidden = true
            
            for hideOff in [swimText, sleepText, cuddleText, eatText, labelSwim, labelSleep, labelCuddle, labelEat, firstSwitch, secondSwitch, threeSwitch, fourSwitch, answerButtonOne, answerTextOne] {
                hideOff?.isHidden = false
                
                if hideOff?.isHidden == false {
                    header.text = questions[i+1]
                    bigViewController.backgroundColor = .tertiarySystemBackground
                    
                    progressView.setProgress(0.33, animated: true)
                    
                }
            }
        }
        outputArray()
    }
    
    
    
    @IBAction func cornButton(_ sender: Any) {
        
        let i = 0
        userData.append(answersFirstQuestion[i+1])
        
        for hideOn in [meatText, cornText, fishText, carrotText, meatLabel, cornLabel, fishLabel, carrotLabel, answerButtonSecond, answerTextSecond] {
            hideOn?.isHidden = true
            
            for hideOff in [swimText, sleepText, cuddleText, eatText, labelSwim, labelSleep, labelCuddle, labelEat, firstSwitch, secondSwitch, threeSwitch, fourSwitch, answerButtonOne, answerTextOne] {
                hideOff?.isHidden = false
                
                if hideOff?.isHidden == false {
                    header.text = questions[i+1]
                    bigViewController.backgroundColor = .tertiarySystemBackground
                    
                    progressView.setProgress(0.33, animated: true)
                }
            }
        }
        outputArray()
    }
    
    
    @IBAction func fishButton(_ sender: Any) {
        
        let i = 0
        userData.append(answersFirstQuestion[i+2])
        
        for hideOn in [meatText, cornText, fishText, carrotText, meatLabel, cornLabel, fishLabel, carrotLabel, answerButtonSecond, answerTextSecond] {
            hideOn?.isHidden = true
            
            for hideOff in [swimText, sleepText, cuddleText, eatText, labelSwim, labelSleep, labelCuddle, labelEat, firstSwitch, secondSwitch, threeSwitch, fourSwitch, answerButtonOne, answerTextOne] {
                hideOff?.isHidden = false
                
                if hideOff?.isHidden == false {
                    header.text = questions[i+1]
                    bigViewController.backgroundColor = .tertiarySystemBackground
                    
                    progressView.setProgress(0.33, animated: true)
                }
            }
        }
        outputArray()
    }
    
    
    
    @IBAction func carrotButton(_ sender: Any) {
        
        let i = 0
        userData.append(answersFirstQuestion[i+3])
        
        for hideOn in [meatText, cornText, fishText, carrotText, meatLabel, cornLabel, fishLabel, carrotLabel, answerButtonSecond, answerTextSecond] {
            hideOn?.isHidden = true
            
            for hideOff in [swimText, sleepText, cuddleText, eatText, labelSwim, labelSleep, labelCuddle, labelEat, firstSwitch, secondSwitch, threeSwitch, fourSwitch, answerButtonOne, answerTextOne] {
                hideOff?.isHidden = false
                
                if hideOff?.isHidden == false {
                    header.text = questions[i+1]
                    bigViewController.backgroundColor = .tertiarySystemBackground
                    
                    progressView.setProgress(0.33, animated: true)
                }
            }
        }
        outputArray()
    }
    
    
    
    // MARK: - Layout of the third test
    @IBAction func answerOneButtonClick(_ sender: Any) {
        let i = 0
        
        if firstSwitch.isOn == true {
            userData.append(answersSecondQuestion[i])
        }
        
        if secondSwitch.isOn == true {
            userData.append(answersSecondQuestion[i+1])
        }
        
        if threeSwitch.isOn == true {
            userData.append(answersSecondQuestion[i+2])
        }
        
        if fourSwitch.isOn == true {
            userData.append(answersSecondQuestion[i+3])
        }
        
        for hideOnOne in [meatText,cornText,fishText, carrotText, meatLabel, cornLabel, fishLabel, carrotLabel] {
            hideOnOne?.isHidden = true
            
            for hideOnTwo in [swimText, sleepText, cuddleText, eatText, labelSwim, labelSleep, labelCuddle, labelEat, firstSwitch, secondSwitch, threeSwitch, fourSwitch, answerButtonOne, answerTextOne] {
                hideOnTwo?.isHidden = true
                
                for hideOff in [sliderView, hateLabelSlider, adoreLabelSlider, answerButtonSecond, answerTextSecond] {
                    hideOff?.isHidden = false
                    
                    if hideOff?.isHidden == false {
                        header.text = questions[i+2]
                        bigViewController.backgroundColor = .systemOrange
                        
                        progressView.setProgress(0.66, animated: true)
                    }
                }
            }
        }
        outputArray()
    }
    
    
@IBAction func answerSecondButtonClick(_ sender: Any) {
    
    let i = 0
        
        if sliderView.value <= 0.25 {
            userData.append(answersThirdQuestion[i])
        } else if sliderView.value <= 0.50 {
            userData.append(answersThirdQuestion[i+1])
        } else if sliderView.value <= 0.75 {
            userData.append(answersThirdQuestion[i+2])
        } else if sliderView.value <= 1 {
            userData.append(answersThirdQuestion[i+3])
        }
        outputArray()
    }
        
        
        // MARK: - Navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let result = segue.destination as! ResultProgram
            result.outputUserData = userData
            result.answersFirstTest = answersFirstQuestion
            result.answersSecondTest = answersSecondQuestion
        }
}

