//
//  VowelsCardViewController.swift
//  Thai-For-Beginer
//
//  Created by Waleerat Gottlieb on 2020-11-02.
//

import Foundation
import PopBounceButton
import Shuffle_iOS
import AVFoundation

class VowelsCardViewController: UIViewController {

    private let cardStack = SwipeCardStack()
    private let buttonStackView = ButtonStackView()
    private var cardModels = [VowelsCardModel]()
    //private var replayCardModels = [VowelsCardModel]()

    var player: AVAudioPlayer?
    
    var gFunction = GlobalFunction()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewDidLoad()
    }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    loadVowelsCard() 
    cardStack.delegate = self
    cardStack.dataSource = self
    buttonStackView.delegate = self

    configureNavigationBar()
    layoutButtonStackView()
    layoutCardStackView()
    configureBackgroundGradient()
    
    playFirstAlphabet()
    navigationItem.title = "Learn Vowel"
  }
    
    func loadVowelsCard(){
        var count: Int = 0
        for (item) in vowelRows {
            count += 1
            cardModels.append(VowelsCardModel(
                                orderNumber: count,
                                code: item[0],
                                audioFileName: "\(item[0]).mp3",
                                nameInThai: item[1],
                                nameInEnglish: item[2],
                                PIAName: item[3] ,
                                RTGSName: item[4] ,
                                variants: item[5] ,
                                similarSound: item[6]
            ))
        }
    }

  
    
  private func configureNavigationBar() {
    let backButton = UIBarButtonItem(title: "Back",
                                     style: .plain,
                                     target: self,
                                     action: #selector(handleShift))
    backButton.tag = 1
    backButton.tintColor = .lightGray
    navigationItem.leftBarButtonItem = backButton

    let forwardButton = UIBarButtonItem(title: "Forward",
                                        style: .plain,
                                        target: self,
                                        action: #selector(handleShift))
    forwardButton.tag = 2
    forwardButton.tintColor = .lightGray
    navigationItem.rightBarButtonItem = forwardButton

    navigationController?.navigationBar.layer.zPosition = -1
  }

  private func configureBackgroundGradient() {
    let backgroundGray = UIColor(red: 244 / 255, green: 247 / 255, blue: 250 / 255, alpha: 1)
    let gradientLayer = CAGradientLayer()
    gradientLayer.colors = [UIColor.white.cgColor, backgroundGray.cgColor]
    gradientLayer.frame = view.bounds
    view.layer.insertSublayer(gradientLayer, at: 0)
  }

  private func layoutButtonStackView() {
    view.addSubview(buttonStackView)
    buttonStackView.anchor(left: view.safeAreaLayoutGuide.leftAnchor,
                           bottom: view.safeAreaLayoutGuide.bottomAnchor,
                           right: view.safeAreaLayoutGuide.rightAnchor,
                           paddingLeft: 24,
                           paddingBottom: 12,
                           paddingRight: 24)
  }

  private func layoutCardStackView() {
    view.addSubview(cardStack)
    cardStack.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                     left: view.safeAreaLayoutGuide.leftAnchor,
                     bottom: buttonStackView.topAnchor,
                     right: view.safeAreaLayoutGuide.rightAnchor)
  }

  @objc
  private func handleShift(_ sender: UIButton) {
    cardStack.shift(withDistance: sender.tag == 1 ? -1 : 1, animated: true)
  }
}

// MARK: Data Source + Delegates

extension VowelsCardViewController: ButtonStackViewDelegate, SwipeCardStackDataSource, SwipeCardStackDelegate {

    func cardStack(_ cardStack: SwipeCardStack, cardForIndexAt index: Int) -> SwipeCard {
        let card = SwipeCard()
        card.footerHeight = UIDevice.current.userInterfaceIdiom == .pad ? 150 : 100
        //card.swipeDirections = [.left, .up, .right]
        card.swipeDirections = [.right]
        for direction in card.swipeDirections {
            card.setOverlay(SwipeCardOverlay(direction: direction), forDirection: direction)
        }

        let model = cardModels[index]
        card.content = SwipeCardContentView(withImage: UIImage(named: model.code))
        card.footer = SwipeCardFooterView(withTitle: "\(model.nameInThai), \(model.nameInEnglish)", subTitle: model.similarSound)

        return card
    }

    func numberOfCards(in cardStack: SwipeCardStack) -> Int {
        return  cardModels.count
    }

    func didSwipeAllCards(_ cardStack: SwipeCardStack) {
        print("Swiped all cards!")
        cardStack.reloadData()
        playFirstAlphabet()
    }

    func cardStack(_ cardStack: SwipeCardStack, didUndoCardAt index: Int, from direction: SwipeDirection) {
        //Replay
        print("Replay")
        if (cardModels.count > index) {
            PlaySound(currentPlay: cardModels[index].code)
        }
    }

    func cardStack(_ cardStack: SwipeCardStack, didSwipeCardAt index: Int, with direction: SwipeDirection) {
        // Play if swape to right
        if direction == .right {
            // for replay
            if (cardModels.count > index+1) {
                PlaySound(currentPlay: cardModels[index+1].code)
            }
        }
//        else if direction == .left {
//            if (0 <= index-1) {
//                PlaySound(currentPlay: cardModels[index-1].code)
//            }
//        }
        
    }

    func cardStack(_ cardStack: SwipeCardStack, didSelectCardAt index: Int) {
       // PlaySound(currentPlay: cardModels[index].code)
    }
    


  func didTapButton(button: ControlButton) {
    print(button.tag)
    switch button.tag {
    case 1:
      cardStack.undoLastSwipe(animated: true)
    case 2:
      cardStack.swipe(.left, animated: true)
    case 3:
      //cardStack.swipe(.up, animated: true)
        gFunction.gotoStoryboardWithIdentifier(quizType: "Vowel" , identifier: "SubMenuVC")
    case 4:
      cardStack.swipe(.right, animated: true)
    case 5:
      cardStack.reloadData()
    default:
      break
    }
  }
    
    private func PlaySound(currentPlay: String!){
        let userDefaults = UserDefaults.standard
        var isPlay = true
        
        if let isCorrectSound = userDefaults.value(forKey: "isVowelSound") {
                isPlay = isCorrectSound as! Bool
        }
        
        if isPlay {
            let url = Bundle.main.url(forResource: currentPlay, withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player?.play()
        }
    }
    
    private func playFirstAlphabet() {
        Timer.scheduledTimer(withTimeInterval: kPlaySoundDelay , repeats: false) { (timer) in
            self.PlaySound(currentPlay: "101")
        }
        
    }
}
