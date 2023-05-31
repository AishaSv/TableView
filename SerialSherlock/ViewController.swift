//
//  ViewController.swift
//  SerialSherlock
//
//  Created by Aisha on 19.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelNames: UILabel!
    
    @IBOutlet weak var labelSeason: UILabel!
    
    @IBOutlet weak var labelDiscription: UILabel!
    
    @IBOutlet weak var imageview: UIImageView!
    
//    var names = ""
//    var season = ""
//    var imagename = ""
    
    var serial = Serial()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelNames.text = serial.names
        labelSeason.text = serial.season
        labelDiscription.text = serial.discriptions
        imageview.image = UIImage(named: serial.imagename)
    }


}

