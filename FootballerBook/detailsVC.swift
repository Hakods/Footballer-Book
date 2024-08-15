//
//  detailsVC.swift
//  FootballerBook
//
//  Created by Ahmet Hakan Altıparmak on 15.08.2024.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    var selectedFootballer : Footballer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selectedFootballer?.name
        teamLabel.text = selectedFootballer?.team
        ageLabel.text = String(selectedFootballer?.age ?? 0)
        imageView.image = selectedFootballer?.image
        // Do any additional setup after loading the view.
    }
    

    

}
