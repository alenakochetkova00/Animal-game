
import UIKit

class ResultProgram: UIViewController {
    
    // MARK: - Variable declarations
    @IBOutlet var pictureAnimal: UILabel!
    @IBOutlet var textAnimal: UILabel!
    
    let animalType = [
        "🐶",
        "🐢",
        "🐈",
        "🐰" ]
    
    let descriptionAnimal = [
        "You like being with friends. You surround yourself with people you like and are always ready to help",
        
        "Your strength is in wisdom. Slow and thoughtful wins over long distances",
        
        " You are on your mind. Love to walk on your own. You value solitude ",
        
        "You like everything soft. You are healthy and full of energy"
    ]
    
    var outputUserData: [String] = []
    var answersFirstTest: [String] = []
    var answersSecondTest: [String] = []
   
    
    // MARK: - View Didload
    override func viewDidLoad() {
        super.viewDidLoad()
        slideConclusion()
    }
    
    
    // MARK: - Main functions
    func slideConclusion() {
        
        let n = 0
        
        for _ in outputUserData {
            
            if outputUserData.contains("meat") && (outputUserData.contains("cuddle") || outputUserData.contains("eat") || outputUserData.contains("swim")) && (outputUserData.contains("calm") || outputUserData.contains("love")) {
                pictureAnimal?.text = animalType[n]
                textAnimal.text = descriptionAnimal[n]
                
            } else if outputUserData.contains("corn") && (outputUserData.contains("swim") || outputUserData.contains("sleep") || outputUserData.contains("eat")) && (outputUserData.contains("hate") || outputUserData.contains("nervous") || outputUserData.contains("calm") || outputUserData.contains("love")) {
                pictureAnimal?.text = animalType[n+1]
                textAnimal.text = descriptionAnimal[n+1]
                
            } else if outputUserData.contains("fish") && (outputUserData.contains("sleep") ||  outputUserData.contains("eat") || outputUserData.contains("cuddle")) && (outputUserData.contains("hate") || outputUserData.contains("nervous")) {
                pictureAnimal?.text = animalType[n+2]
                textAnimal.text = descriptionAnimal[n+2]
                
            } else if outputUserData.contains("carrot") && (outputUserData.contains("eat") || outputUserData.contains("sleep")) && (outputUserData.contains("hate") || outputUserData.contains("nervous")) {
                pictureAnimal?.text = animalType[n+3]
                textAnimal.text = descriptionAnimal[n+3]
            } else {
                pictureAnimal?.text = "❌"
                textAnimal.text = "You have selected incompatible options"
            }
        }
    }
}


    // MARK: - Label corner rounding
extension UIView {
    
    @IBInspectable var cornerRadiusV: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidthV: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColorV: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
