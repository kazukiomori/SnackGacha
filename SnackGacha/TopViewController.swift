import UIKit

class TopViewController: UIViewController {

    @IBOutlet weak var gachaImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addBackground(name: "background_image")
        
        self.gachaImageView.image = UIImage(named: "gacha")
        self.gachaImageView.contentMode = .scaleAspectFit
        self.gachaImageView.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(tappedGacha)))
    }

    @objc func tappedGacha() {
        /* TODO
            Gif動画を流す
            お菓子のAPIを叩く
            次のページに画面遷移する
         */
        
    }
}

