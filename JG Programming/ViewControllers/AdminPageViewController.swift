//
//  AdminViewController.swift
//  JG Programming
//
//  Created by Xchel Alonso Carranza De La O on 15/07/20.
//  Copyright © 2020 Xchel Alonso Carranza De La O. All rights reserved.
//

import UIKit

class AdminPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = adminControllersList.firstIndex(of: viewController)
        if(index == 0){
            return adminControllersList.last!
        }else{
            return adminControllersList.first!
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
       let index = adminControllersList.firstIndex(of: viewController)
       if(index == 0){
           return adminControllersList.last!
       }else{
           return adminControllersList.first!
       }
    }
    
    
    private let GYM_CODE = "gymVC"
    private let CROSSFIT_CODE = "crossFitVC"
    
    
    private var adminControllersList: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        let gymVC = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(identifier: GYM_CODE)
        let crossFitVC = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(identifier: CROSSFIT_CODE)
        
        adminControllersList.append(gymVC)
        adminControllersList.append(crossFitVC)
        setViewControllers([gymVC], direction: .forward, animated: true, completion: nil)
        dataSource = self
        
    }
  
    
    private func getPageController(viewController: UIViewController)-> UIViewController{
        let index = adminControllersList.firstIndex(of: viewController)
        if(index == 0){
            return adminControllersList.last!
        }else{
            return adminControllersList.first!
        }
    }
    //Saved
}
