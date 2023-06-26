//
//  HomeView.swift
//  xylophone-viewcode
//
//  Created by Arlan Gustavo Biati on 26/06/23.
//

import UIKit

final class HomeView: UIView {
    
    let array = [
        Button (bgColor: .red, letter: "C"),
        Button (bgColor: .orange, letter: "D"),
        Button (bgColor: .yellow, letter: "E"),
        Button (bgColor: .green, letter: "F"),
        Button (bgColor: .purple, letter: "G"),
        Button (bgColor: .blue, letter: "A"),
        Button (bgColor: .cyan, letter: "B"),
    ]
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .white
        addComponents()
    }
    
    private func addComponents() {
        addSubview(stackView)
        array.forEach { button in
            stackView.addArrangedSubview(button)
        }
        
    }
    
    private func setConstraints() {
        stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        array.enumerated().forEach { (index, button) in
            button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            button.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.95 - 1 * 0.05 * CGFloat(index) ).isActive = true
        }
    }
    
}
