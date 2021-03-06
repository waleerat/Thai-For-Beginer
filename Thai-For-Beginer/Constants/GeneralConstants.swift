//
//  GeneralConstants.swift
//  Thai-For-Beginer
//
//  Created by Waleerat Gottlieb on 2020-11-02.
//

import Foundation
import UIKit


public let kMaxQuiz = 10
public let kNextQuesionDelay = 1.5
public let kPlaySoundDelay = 0.2
public var kCurrentScreen = "Alphabet"
public let kButtonCornerRaddius = 20
public let kHidesBottomBar = true
public let kIsNavigationVC = false

public let kPrimaryColor = #colorLiteral(red: 0.831372549, green: 0.8784313725, blue: 0.6078431373, alpha: 1)
public let kAlphabetColor = #colorLiteral(red: 0.6549019608, green: 0.7882352941, blue: 0.3411764706, alpha: 1)
public let kVowelColor = #colorLiteral(red: 0.6549019608, green: 0.7882352941, blue: 0.3411764706, alpha: 1)
public let kSettingColor = #colorLiteral(red: 0.6549019608, green: 0.7882352941, blue: 0.3411764706, alpha: 1)
public let kQuizBntColor = #colorLiteral(red: 0.6274509804, green: 0.8078431373, blue: 0.8509803922, alpha: 1)
public let kAllCardsBntColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
public let kHeaderLabelColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)

struct textLib {

    
    struct homeScreen {
        static let navigationTitle = "Home"
        static let parentViewBackground = kPrimaryColor
        static let headerLabel = "Menu"
        static let alphabetBntTitle = "Alphabets (Ko-Kai)"
        static let vowelBntTitle = "Vowel (Sara)"
        static let settingBntTitle = "Setting"
    }
    
    struct alphabetScreen {
        static let navigationTitle = "Alphabets (Ko-Kai)"
        static let parentViewBackground = kPrimaryColor
        static let headerLabel = "Alphabets (Ko-Kai)"
        static let learnBntTitle = "Flash Card"
        static let showAllBntTitle = "All Alphabets"
        static let quizBntTitle = "Quiz"
        
        static let yourScoreHeader = "Your Score"
        static let playAgainBntTitle = "Play Again"
        static let gotoSubmenuBntTitle = "Go to Menu"
        
    }
    
    struct vowelScreen {
        static let navigationTitle = "Vowel (Sara)"
        static let parentViewBackground = kPrimaryColor
        static let headerLabel = "Vowel (Sara)"
        static let learnBntTitle = "Flash Card"
        static let showAllBntTitle = "All Volwels"
        static let quizBntTitle = "Quiz"
        
        static let yourScoreHeader = "Your Score"
        static let playAgainBntTitle = "Play Again"
        static let gotoSubmenuBntTitle = "Go to Menu"
        
    }
    
    struct settingScreen {
        static let navigationTitle = "Setting"
        static let parentViewBackground = kPrimaryColor
        static let headerLabel = "Setting"
        static let alphabetSoundLabel = "Alphabet Sound"
        static let vowelSoundLabel = "Vowel Sound"
        static let correctSoundLable = "Correcting Sound"
        static let setDefaultBntTitle = "Set Default"
    }
    
    struct AlphabetQuizScreen {
        static let navigationTitle = "Alphabet Quiz"
        static let headerLabel = "Alphabet Quiz"
        static let parentViewBackground = kPrimaryColor
    }
    
    struct VowelQuizScreen {
        static let navigationTitle = "Vowel Quiz"
        static let headerLabel = "Vowel Quiz"
        static let parentViewBackground = kPrimaryColor
    }
    
    struct AlphabetListAllScreen {
        static let headerLabel = "44 Thai Alphabets"
    }
    
    struct VowelListAllScreen {
        static let headerLabel = "32 Thai Vowels"
    }
}

