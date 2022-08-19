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
    @IBOutlet weak var imgOffers: UIImageView!


    var selectedtab = 0
    
    
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
         
    }
 
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
            imgOffers.tintColor = UIColor.gray
            break
        case 1:
            imgNewJob.tintColor = UIColor.gray
            imgActiveJob.tintColor = UIColor.white
            imgNotifications.tintColor = UIColor.gray
            imgOffers.tintColor = UIColor.gray
            break
        case 2:
            imgNewJob.tintColor = UIColor.gray
            imgActiveJob.tintColor = UIColor.gray
            imgNotifications.tintColor = UIColor.white
            imgOffers.tintColor = UIColor.gray
            break
        case 3:
            imgNewJob.tintColor = UIColor.gray
            imgActiveJob.tintColor = UIColor.gray
            imgNotifications.tintColor = UIColor.gray
            imgOffers.tintColor = UIColor.white
            break
        default:
            break
        }
        UIView.animate(withDuration: 0.5, animations: {
            self.layoutIfNeeded()
        }) { (completed) in
            
        }
//        AppDelegate.shared().tabbarVC().selectedIndex = sender.tag
        appDelegate.tabbarVC.selectedIndex = sender.tag
        
    }
//    func setEveryThingUnselected() {
//        self.imgEdit.updateImageColor(color: .clear)
//        self.imgFlag.updateImageColor(color: .clear)
//        self.imgSpeech.updateImageColor(color: .clear)
//        self.imgHome.updateImageColor(color: .clear)
//    }
//    func setFlagSelected() {
//        self.imgFlag.updateImageColor(color: UIColor(red: 103.0/255.0, green: 178.0/255.0, blue: 178.0/255.0, alpha: 1))
//    }
//    func setSpeechSelected() {
//        self.imgSpeech.updateImageColor(color: UIColor(red: 103.0/255.0, green: 178.0/255.0, blue: 178.0/255.0, alpha: 1))
//    }
//    func setHomeSelected() {
//        self.imgHome.updateImageColor(color: UIColor(red: 103.0/255.0, green: 178.0/255.0, blue: 178.0/255.0, alpha: 1))
//    }
//    func setEditSelected() {
//        self.imgEdit.updateImageColor(color: UIColor(red: 103.0/255.0, green: 178.0/255.0, blue: 178.0/255.0, alpha: 1))
//    }
    
    
}
extension UIImageView{
    func updateImageColor(color:UIColor)
    {
        self.image = self.image!.withRenderingMode(.alwaysTemplate)
        self.tintColor = color
    }
}
extension UIViewController {
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
