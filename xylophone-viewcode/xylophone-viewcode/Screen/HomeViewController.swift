//
//  ViewController.swift
//  xylophone-viewcode
//
//  Created by Arlan Gustavo Biati on 26/06/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var homeView: UIView = {
        let element = HomeView()
        return element
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        super.loadView()
        view = homeView
    }
}

