
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cKeyPressed(_ sender: UIButton) {
        playSound(input: sender.titleLabel!.text!)
      //  print(sender.titleLabel!.text!)
    }
    
    func playSound(input: String) {
        let url = Bundle.main.url(forResource: input, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

