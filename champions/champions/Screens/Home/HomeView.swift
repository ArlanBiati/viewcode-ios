//
//  HomeView.swift
//  champions
//
//  Created by Arlan Gustavo Biati on 19/06/23.
//

import UIKit

class HomeView: UIView {
    
    lazy var titleLabel: UILabel = {
        let element = UILabel()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.font = .boldSystemFont(ofSize: 30)
        element.textColor = .white
        element.text = "Ask Me Anything..."
        return element
    }()
    
    lazy var imageView: UIImageView = {
        let element = UIImageView()
        element.translatesAutoresizingMaskIntoConstraints = false
        element.image = UIImage.init(imageLiteralResourceName: "ball1")
        return element
    }()
    
    lazy var askButton: UIButton = {
        let element = UIButton(type: .system)
        element.translatesAutoresizingMaskIntoConstraints = false
        element.setTitle("Ask", for: .normal)
        element.titleLabel?.font = .boldSystemFont(ofSize: 20)
        element.setTitleColor(.systemBlue, for: .normal)
        element.backgroundColor = .white
        element.layer.cornerRadius = 10
        element.addTarget(self, action: #selector(handleChangeImage), for: .touchUpInside)
        return element
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.titleLabel)
        self.addSubview(self.imageView)
        self.addSubview(self.askButton)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func handleChangeImage() {
        let responseImageArray = [
            UIImage.init(imageLiteralResourceName: "ball1"),
            UIImage.init(imageLiteralResourceName: "ball2"),
            UIImage.init(imageLiteralResourceName: "ball3"),
            UIImage.init(imageLiteralResourceName: "ball4"),
            UIImage.init(imageLiteralResourceName: "ball5")
        ]
        
        imageView.image = responseImageArray.randomElement()
        
        
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 120),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 80),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            askButton.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 80),
            askButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            askButton.widthAnchor.constraint(equalToConstant: 100),
            askButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
