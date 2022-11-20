import UIKit
import SwiftGifOrigin

class TopViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var gachaImageView: UIImageView!
    @IBOutlet weak var gifImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addBackground(name: "background_image")
        
        gifImageView.isHidden = true
        gachaImageView.image = UIImage(named: "gacha")
        gachaImageView.contentMode = .scaleAspectFit
        gachaImageView.isUserInteractionEnabled = true
        gachaImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedGacha(_:))))
        
    }

    @objc func tappedGacha(_ sender: UITapGestureRecognizer) {
        print("tappedGacha")
        /* TODO
            Gif動画を流す
            お菓子のAPIを叩く
            次のページに画面遷移する
         */
        self.gachaAnimation()
        
    }
    
    func gachaAnimation() {
        gifImageView.isHidden = false
        gifImageView.loadGif(name: "capcelgif")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.75) {
            self.gifImageView.loadGif(name: "capcelgif2")
        }
    }
    
    
}

