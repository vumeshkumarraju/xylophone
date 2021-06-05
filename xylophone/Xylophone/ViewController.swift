import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func KeyPressed(_ sender: UIButton)
    {
        playSound(a:sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3)
        {
            sender.alpha = 1.0
        }
    }
    
    func playSound(a:String)
    {
        let url = Bundle.main.url(forResource: a, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

