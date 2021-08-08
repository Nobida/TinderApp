//
//  ViewController.swift
//  MatchingApp
//
//  Created by Joseph Wang on 2021/8/6.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        let view1 = TopControlView()

        
        let view2 = UIView()
        view2.backgroundColor = .blue
        
        let bottomControlView = BottomControlView()
        
        
        let stackView = UIStackView(arrangedSubviews: [view1, view2, bottomControlView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical //垂直排列
        
        
        self.view.addSubview(stackView)
        
        //内容を設置する
        
        [
            view1.heightAnchor.constraint(equalToConstant: 100), //高さを設定する
            bottomControlView.heightAnchor.constraint(equalToConstant: 120),
            
            
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.bottomAnchor.constraint(equalTo:view.safeAreaLayoutGuide.bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor)]
        .forEach{ $0.isActive = true}
        
    }


}

