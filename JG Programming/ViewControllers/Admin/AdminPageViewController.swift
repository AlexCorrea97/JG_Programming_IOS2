//
//  AdminViewController.swift
//  JG Programming
//
//  Created by Xchel Alonso Carranza De La O on 15/07/20.
//  Copyright © 2020 Xchel Alonso Carranza De La O. All rights reserved.
//

import UIKit

class AdminPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        getPageController(viewController: viewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        getPageController(viewController: viewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool){
        let pageContentViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = adminControllersList.firstIndex(of: pageContentViewController)!
        
    }
    
    
    private let GYM_CODE = "gymVC"
    private let CROSSFIT_CODE = "crossFitVC"
    private let MAIN_CODE = "Main"
    
    private var adminControllersList: [UIViewController] = []
    
    private var pageControl = UIPageControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        let gymVC = UIStoryboard(name:MAIN_CODE, bundle: nil).instantiateViewController(identifier: GYM_CODE)
        let crossFitVC = UIStoryboard(name:MAIN_CODE, bundle: nil).instantiateViewController(identifier: CROSSFIT_CODE)
        
        setPageViewControllers(gymVC: gymVC, crossFitVC: crossFitVC)
        configurePageControl()
    }
  
    private func configurePageControl(){
        pageControl = UIPageControl(frame: CGRect(x: 0, y: UIScreen.main.bounds.maxY - 50, width: UIScreen.main.bounds.width, height: 50))
        pageControl.numberOfPages = adminControllersList.count
        pageControl.currentPage = 0
        pageControl.tintColor = Extra.getUIColor(hex: Extra.UIColorYellow)
        pageControl.pageIndicatorTintColor = Extra.getUIColor(hex: Extra.UIColorWhiteTransparent60)//white
        pageControl.currentPageIndicatorTintColor = Extra.getUIColor(hex: Extra.UIColorYellow)
        self.view.addSubview(pageControl)
    }
    
    private func getPageController(viewController: UIViewController)-> UIViewController{
        let index = adminControllersList.firstIndex(of: viewController)
        if(index == 0){
            return adminControllersList.last!
        }else{
            return adminControllersList.first!
        }
    }
    
    private func setPageViewControllers(gymVC: UIViewController, crossFitVC: UIViewController){
        adminControllersList.append(gymVC)
        adminControllersList.append(crossFitVC)
        setViewControllers([gymVC], direction: .forward, animated: true, completion: nil)
        dataSource = self
        self.delegate = self
    }
}
