//
//  HomeViewController.swift
//  champions
//
//  Created by Arlan Gustavo Biati on 19/06/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var homeView: UIView = {
        let element = HomeView()
        return element
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBlue
    }
    
    override func loadView() {
        super.loadView()
        view = homeView
    }
}
