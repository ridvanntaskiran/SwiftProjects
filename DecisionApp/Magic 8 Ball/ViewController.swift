import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var decisionImage: UIImageView!
    
    let ballArray = [UIImage(imageLiteralResourceName: "ball1"), UIImage(imageLiteralResourceName: "ball2"), UIImage(imageLiteralResourceName: "ball3"), UIImage(imageLiteralResourceName: "ball4"), UIImage(imageLiteralResourceName: "ball5")]



    @IBAction func DesicionButtonPressed(_ sender: UIButton) {
        
        decisionImage.image = ballArray.randomElement()
        
    }
    
}

