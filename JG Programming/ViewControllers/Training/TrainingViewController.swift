//
//  TrainingViewController.swift
//  JG Programming
//
//  Created by Xchel Alonso Carranza De La O on 15/07/20.
//  Copyright © 2020 Xchel Alonso Carranza De La O. All rights reserved.
//

import UIKit

class TrainingViewController: UIViewController {
    
    let recoveryId:String = "4YhnexGbTPg"
    let warmUpId:String = "I6nFMGgNP7Q"
    
    private let recoverySegue:String = "recoveryVideo"
    private let warmUpSegue:String = "warmUpVideo"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case recoverySegue:
            if let youtubeView = segue.destination as? YoutubeViewController{
                youtubeView.id = recoveryId
            }
            break
        case warmUpSegue:
            if let youtubeView = segue.destination as? YoutubeViewController{
                youtubeView.id = warmUpId
            }
            break
        default: break
        }
    }
    
    @IBAction func infoButton(_ sender: UIButton) {
        
    }
    
}

