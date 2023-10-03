//
//  ViewController.swift
//  TimeMoney
//
//  Created by Максим Комар on 30.09.23.
//

import UIKit

import UIKit

class LogScreen: UIViewController {
    
    let pushButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
       pushButtonConfig()

    }
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .gray
        title = "logScreen"
        
    }
    
    func pushButtonConfig() {
        view.addSubview(pushButton)
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            pushButton.widthAnchor.constraint(equalToConstant: 150),
            pushButton.heightAnchor.constraint(equalToConstant: 60)
        ])
        pushButton.setTitle("вход", for: .normal)
        pushButton.backgroundColor = .red
        pushButton.addTarget(self, action: #selector(pushButtonTapped), for: .primaryActionTriggered)
    }
    
    @objc func pushButtonTapped(_ sender: Any) {
        let mainScreen = MainScreen()
        navigationController?.pushViewController(mainScreen, animated: true)
    }
    
    
    


}

