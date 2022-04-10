//
//  SelectionScreen.swift
//  DelegatesStarter
//
//  Created by Özgün Yildiz on 10.04.22.
//

import UIKit

protocol SideSelectionDelegate {
    func setProperties(name: String, image: UIImage, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    var sideSelectionDelegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func dbzButtonTapped(_ sender: UIButton) {
        sideSelectionDelegate.setProperties(name: Constants.SON_GOKU, image: UIImage(named: Constants.SON_GOKU_IMAGE)!, color: .red)
        dismiss(animated: true, completion: nil)
    }

    @IBAction func opmButtonTapped(_ sender: UIButton) {
        sideSelectionDelegate.setProperties(name: Constants.SAITAMA, image: UIImage(named: Constants.SAITAMA_IMAGE)!, color: .cyan)
        dismiss(animated: true, completion: nil)
    }
}
