//
//  AbstractionController.swift
//  BenPratt_CSP
//
//  Created by Pratt, Benjamin on 10/26/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class AbstractionController: UIPageViewController, UIPageViewControllerDataSource {

    private (set) lazy var orderedAbstractionViews: [UIViewController] = {
        return [
            self.newAbstractionViewController(abstractionLevel: "Block"),
            self.newAbstractionViewController(abstractionLevel: "Java"),
            self.newAbstractionViewController(abstractionLevel: "ByteCode"),
            self.newAbstractionViewController(abstractionLevel: "Binary"),
            self.newAbstractionViewController(abstractionLevel: "AndGate")
        ]
    }()
    
    private func newAbstractionViewController(abstractionLevel: String)-> UIViewController{
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Abstractions-\(abstractionLevel)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataSource = self
        
        if let firstViewController = orderedAbstractionViews.first{
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else{
                return nil
        }
        let previousIndex = viewControllerIndex - 1
        guard previousIndex >= 0
        else{
            return orderedAbstractionViews.last
        }
        guard orderedAbstractionViews.count > previousIndex
        else{
                return nil
        }
        return orderedAbstractionViews[previousIndex]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else{
                return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex >= 0
            else{
                return nil
        }
        guard orderedAbstractionViews.count > nextIndex
            else{
                return orderedAbstractionViews.first
        }
        return orderedAbstractionViews[nextIndex]
    }

    public func presentationCount(for pageViewController: UIPageViewController) -> Int{
        return orderedAbstractionViews.count
    }
    public func presentationIndex(for pageViewController: UIPageViewController) -> Int{
        guard let firstViewController = viewControllers?.first, let firstViewControllerIndex = orderedAbstractionViews.index(of: firstViewController)
        else{
                return 0
        }
        return firstViewControllerIndex
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
