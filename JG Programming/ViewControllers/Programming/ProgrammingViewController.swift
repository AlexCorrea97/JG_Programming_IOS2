//
//  ProgrammingViewController.swift
//  JG Programming
//
//  Created by Xchel Alonso Carranza De La O on 15/07/20.
//  Copyright © 2020 Xchel Alonso Carranza De La O. All rights reserved.
//

import UIKit

class ProgrammingViewController: UIViewController{
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let days:[String] = ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"]
    private let DAY_COLLECTION_VIEW:String = "DayProgrammingCollectionViewCell"
    private let DAY_VIEW:String = "dayView"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: DAY_COLLECTION_VIEW, bundle:nil), forCellWithReuseIdentifier:DAY_VIEW)
    }
    
    @IBAction func commentsButton(_ sender: UIButton) {
        
    }
    
}

extension ProgrammingViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DAY_VIEW, for: indexPath) as? DayProgrammingCollectionViewCell
        cell!.daysOFWeek.text = days[indexPath.row]
        return cell!
    }
}

extension ProgrammingViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: collectionView.bounds.height)
    }
}
