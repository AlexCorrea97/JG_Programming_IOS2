//
//  YoutubeViewController.swift
//  JG Programming
//
//  Created by Xchel Alonso Carranza De La O on 17/07/20.
//  Copyright © 2020 Xchel Alonso Carranza De La O. All rights reserved.
//

import UIKit

class YoutubeViewController: UIViewController {
    
    var id:String?
    //saved

    @IBOutlet weak var dialogView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToYTButton(_ sender: UIButton) {
        let youtubeId = id!
        var youtubeUrl = NSURL(string:"youtube://\(youtubeId)")!
        if UIApplication.shared.canOpenURL(youtubeUrl as URL){
            UIApplication.shared.open(youtubeUrl as URL)
        } else{
                youtubeUrl = NSURL(string:"https://www.youtube.com/watch?v=\(youtubeId)")!
            UIApplication.shared.open(youtubeUrl as URL, options: [:], completionHandler: nil)
        }
    }
    

}
