//
//  GlobalFunction.swift
//  Thai-For-Beginer
//
//  Created by Waleerat Gottlieb on 2020-11-02.
//

import Foundation
import UIKit
import AVFoundation
import SCLAlertView

class GlobalFunction {
    
    var player: AVAudioPlayer?
    
    let appearance = SCLAlertView.SCLAppearance(
        showCloseButton: false
    )
    
    func PlaySound(currentPlay: String!){
        let url = Bundle.main.url(forResource: currentPlay, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
    }
    
    func setButtonBgImage(Bnt: UIButton , UIImageNamed : String) {
        Bnt.setBackgroundImage(UIImage(named: UIImageNamed), for: .normal)
        Bnt.backgroundColor = .clear
        Bnt.layer.cornerRadius = 10
        Bnt.layer.borderWidth = 7
        Bnt.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
    }
    
    func setButtonBoderCorrect(Bnt: UIButton) {
        Bnt.layer.borderColor =  UIColor.green.cgColor
    }
    
    func setButtonBoderIncorrect(Bnt: UIButton) {
        Bnt.layer.borderColor =  UIColor.red.cgColor
    }
    
    func setButtonAnimate(Bnt: UIButton){
        UIView.animate(withDuration: 0.4,
            animations: {
                Bnt.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            },
            completion: { _ in
                UIView.animate(withDuration: 0.4) {
                    Bnt.transform = CGAffineTransform.identity
                }
            })
    }
    
    func setCornerRadius(Bnt: UIButton, cornerRaddius: Int) {
        Bnt.clipsToBounds = true
        Bnt.layer.cornerRadius = CGFloat(cornerRaddius)
    }
    
    func setMenuButtonCornerRadius(Bnt: UIButton) {
        //Bnt.backgroundColor = .clear
        Bnt.layer.borderWidth = 1
        Bnt.layer.borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        Bnt.clipsToBounds = true
        Bnt.layer.cornerRadius = CGFloat(20)
        
        // Shadow Color and Radius
        Bnt.layer.shadowColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 0.6758347603).cgColor
        Bnt.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        Bnt.layer.shadowOpacity = 1.0
        Bnt.layer.shadowRadius = 0.0
        
        Bnt.layer.masksToBounds = false
    }
    
    
    func showScore(score: Int, quizType: String){
        
        if (quizType != "Alphabet" &&  quizType != "Vowel") {
            return
        }
        
        let alertView = SCLAlertView(appearance: appearance)
       
        alertView.addButton("Play Again") {
            self.gotoStoryboardWithIdentifier(quizType: quizType, identifier: "QuizVC")
        }
        
        alertView.addButton("\(quizType) Menu") {
            self.gotoStoryboardWithIdentifier(quizType: quizType, identifier: "SubMenuVC")
        }
        
        alertView.addButton("Home Menu") {
            self.gotoStoryboard(storyboard : "Main", identifier : "HomeVC")
        }
        alertView.showInfo("Your Score", subTitle: "\(score) from \(kMaxQuiz)")
    }
    
    func goBackToMenu(quizType:String){
        gotoStoryboardWithIdentifier(quizType: quizType, identifier: "SubMenuVC")
    }
    
    func gotoStoryboard(storyboard : String, identifier : String){
        let story = UIStoryboard(name: storyboard, bundle:nil)
        let vc = story.instantiateViewController(withIdentifier: identifier)
        if kIsNavigationVC {
            vc.hidesBottomBarWhenPushed = kHidesBottomBar
            //navigationController?.pushViewController(vc, animated: true)
        }else {
            UIApplication.shared.windows.first?.rootViewController = vc
        }
    }
    
    func gotoStoryboardWithIdentifier(quizType: String, identifier: String){
        let story = UIStoryboard(name: "Main", bundle:nil)
       
        switch identifier {
        case "SubMenuVC":
            let vc = story.instantiateViewController(withIdentifier: identifier) as! subMenuViewController
            UIApplication.shared.windows.first?.rootViewController = vc
        case "QuizVC":
            let vc = story.instantiateViewController(withIdentifier: identifier) as! QuizViewController
            UIApplication.shared.windows.first?.rootViewController = vc
        case "ShowAllCardVC":
            let vc = story.instantiateViewController(withIdentifier: identifier) as! ShowAllCardViewController
            UIApplication.shared.windows.first?.rootViewController = vc
        default:
            return
        }
    } 
}
 
extension RangeExpression where Bound: FixedWidthInteger {
    func randomElements(_ n: Int) -> [Bound] {
        precondition(n > 0)
        switch self {
        case let range as Range<Bound>: return (0..<n).map { _ in .random(in: range) }
        case let range as ClosedRange<Bound>: return (0..<n).map { _ in .random(in: range) }
        default: return []
        }
    }
}
