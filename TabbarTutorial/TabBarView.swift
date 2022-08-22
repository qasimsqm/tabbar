//
//  TabbarView.swift
//  Kram
//
//  Created by Syed Qasim on 21/12/2018.
//  Copyright © 2018 eeGames Studio Private Limited. All rights reserved.
//

import UIKit


class TabBarView: UIView {

    @IBOutlet weak var imgNewJob: UIImageView!
    @IBOutlet weak var imgActiveJob: UIImageView!
    @IBOutlet weak var imgNotifications: UIImageView!

    var selectedtab = 0
    
    
//    var appDelegate: AppDelegate {
//        return UIApplication.shared.delegate as! AppDelegate
//    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
//    override func draw(_ rect: CGRect) {
//
//    }
 
    @IBAction func selecTab(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
//        setEveryThingUnselected()
        for button in self.subviews {
            if button is UIButton {
                let interactiveButton = button as! UIButton
                if sender.tag == button.tag {
                    interactiveButton.isSelected = true
                }
                if button.tag != sender.tag {
                    interactiveButton.isSelected = false
                }
            }
        }
        switch sender.tag {
        case 0:
            imgNewJob.tintColor = UIColor.white
            imgActiveJob.tintColor = UIColor.gray
            imgNotifications.tintColor = UIColor.gray
            break
        case 1:
            imgNewJob.tintColor = UIColor.gray
            imgActiveJob.tintColor = UIColor.white
            imgNotifications.tintColor = UIColor.gray
            break
        case 2:
            imgNewJob.tintColor = UIColor.gray
            imgActiveJob.tintColor = UIColor.gray
            imgNotifications.tintColor = UIColor.white
            break
        default:
            break
        }
        UIView.animate(withDuration: 0.5, animations: {
            self.layoutIfNeeded()
        }) { (completed) in
            
        }
        if let delegate = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate {
            // ... access anything needed in delegate
            delegate.tabbarVC.selectedIndex = sender.tag
        }

//        appDelegate.tabbarVC.selectedIndex = sender.tag
        
    }

    
    
}


