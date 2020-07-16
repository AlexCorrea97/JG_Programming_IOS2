//
//  AdminViewController.swift
//  JG Programming
//
//  Created by Xchel Alonso Carranza De La O on 15/07/20.
//  Copyright © 2020 Xchel Alonso Carranza De La O. All rights reserved.
//

import UIKit

class AdminPageViewController: UIPageViewController {
    
    private let GYM_CODE = "gymVC"
    private let CROSSFIT_CODE = "crossFitVC"
    
    private let gymVC = UIStoryBoard(name:"Main", bundle: nil).instantiateViewController(identifier: GYM_CODE)
    private let crossFitVC = UIStoryBoard(name:"Main", bundle: nil).instantiateViewController(identifier: CROSSFIT_CODE)
    
    private var adminControllersList: [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        adminControllersList.append(gymVC)
        adminControllersList.append(crossFitVC)
        setViewController([gymVC], direction: .forward, animated: true, completion: nil)
        dataSource = self
    }
    
    extension PageViewController: UIPageViewControllerDataSource{
        func PageViewController(_ PageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
            getPageController()
        }
        func PageViewController(_ PageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
            getPageController()
        }
    }
    
    private func getPageController(){
        let index = adminControllersList.firstIndex(of: viewController)
        if(index == 0){
            return adminControllersList.last
        }else{
            return adminControllersList.first
        }
    }
}
