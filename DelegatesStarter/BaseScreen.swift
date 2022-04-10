//
//  BaseScreen.swift
//  DelegatesStarter
//
//  Created by Özgün Yildiz on 10.04.22.
//

import UIKit

import UIKit

class BaseScreen: UIViewController, SideSelectionDelegate {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height/2
        chooseButton.addTarget(self, action: #selector(goToSelectionScreen), for: .touchUpInside)
    }
    
    @objc func goToSelectionScreen() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        vc.modalPresentationStyle = .fullScreen
        vc.sideSelectionDelegate = self
        present(vc, animated: true, completion: nil)
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func setProperties(name: String, image: UIImage, color: UIColor) {
        self.nameLabel.text = name
        self.mainImageView.image = image
        self.view.backgroundColor = color
    }
}

