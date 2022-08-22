//
//  HomeTabbarVC.swift
//  RealEstate
//
//  Created by Syed Qasim on 23/04/2019.
//  Copyright © 2019 Syed Qasim. All rights reserved.
//

import UIKit

class HomeTabbarVC: UITabBarController {
    class func homeTabbarVC() -> HomeTabbarVC {
        let storyboard = UIStoryboard(name: "HomeVC", bundle: nil)
        let me = storyboard.instantiateViewController(withIdentifier: "HomeTabbarVC") as! HomeTabbarVC
//        let me: HomeTabbarVC = HomeTabbarVC(nibName: String(describing: HomeTabbarVC.self), bundle: nil)
        return me
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true
        self.setupAndAddTabbarView()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - UITabbarController delegate
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        debugPrint(viewController)
    }
    // MARK: - UITabbarController delegate
    func setupAndAddTabbarView() {
        let array = Bundle.main.loadNibNamed("TabBarView", owner: self, options: nil)
        let tabbarView = array?[0] as! UIView
        
        let window = UIApplication.shared.windows.first
//            let topPadding = window?.safeAreaInsets.top
            let bottomPadding = window?.safeAreaInsets.bottom // you can minus this from Y if you want to show tabbar above safe area otherwise just leave it as it is
        
        tabbarView.frame = CGRect(x: 0, y: UIScreen.main.bounds.size.height-110-(bottomPadding ?? 0), width: UIScreen.main.bounds.size.width, height: 110)
        self.view.addSubview(tabbarView)
        self.tabBarController?.selectedIndex = 1
    }
}
