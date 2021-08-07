//
//  BottomControllerView.swift
//  MatchingApp
//
//  Created by Joseph Wang on 2021/8/6.
//

import UIKit

class BottomControlView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .purple
        
        let view1 = BottomButtonView(frame: .zero, width: 50)
        view1.backgroundColor = .orange
        
        let view2 = BottomButtonView(frame: .zero, width: 60)
        view2.backgroundColor = .orange
        
        let view3 = BottomButtonView(frame: .zero, width: 50)
        view3.backgroundColor = .orange
        
        let view4 = BottomButtonView(frame: .zero, width: 60)
        view4.backgroundColor = .orange
        
        let view5 = BottomButtonView(frame: .zero, width: 50)
        view5.backgroundColor = .orange
        
        let baseStackView = UIStackView(arrangedSubviews: [view1, view2, view3, view4, view5])
        baseStackView.axis = .horizontal
        baseStackView.distribution = .fillEqually
        baseStackView.spacing = 10
        baseStackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(baseStackView)
        
        [
            baseStackView.topAnchor.constraint(equalTo: topAnchor),
            baseStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            baseStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            baseStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -10)
        ].forEach{ $0.isActive = true }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class BottomButtonView: UIView {
    
    var button: UIButton?
    
    init(frame: CGRect, width: CGFloat) {
        super.init(frame: frame)
        button = UIButton(type: .system)
        button?.setTitle("tap", for: .normal)
        button?.translatesAutoresizingMaskIntoConstraints = false
        button?.backgroundColor = .white
        button?.layer.cornerRadius = width / 2
        
        button?.layer.shadowOffset = .init(width: 1.5, height: 2)
        button?.layer.shadowColor = UIColor.black.cgColor
        button?.layer.shadowOpacity = 0.3
        button?.layer.shadowRadius = 15
        
        addSubview(button!)
        [button?.centerYAnchor.constraint(equalTo: centerYAnchor),
         button?.centerXAnchor.constraint(equalTo: centerXAnchor),
         button?.widthAnchor.constraint(equalToConstant: width),
         button?.heightAnchor.constraint(equalToConstant: width)].forEach{ $0?.isActive = true}
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
