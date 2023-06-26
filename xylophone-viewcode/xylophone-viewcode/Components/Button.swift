//
//  Button.swift
//  xylophone-viewcode
//
//  Created by Arlan Gustavo Biati on 26/06/23.
//

import Foundation
import UIKit
import AVFoundation

class Button: UIButton {
    var player: AVAudioPlayer!
    let letter: String
    
    init( bgColor: UIColor, letter: String){
        self.letter = letter
        super.init(frame: .zero)
       translatesAutoresizingMaskIntoConstraints = false
       setTitle(letter, for: .normal)
       setTitleColor(UIColor.white, for: .normal)
       backgroundColor = bgColor
       titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
       layer.cornerRadius = 10
        addTarget(self, action: #selector(handlePlaySound), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func called() {
        
    }
    @objc private func handlePlaySound() {
        let url = Bundle.main.url(forResource: letter, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
