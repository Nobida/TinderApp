//
//  ProfileImageView.swift
//  MatchingApp
//
//  Created by Joseph Wang on 2021/8/14.
//

import UIKit

class ProfileImageView: UIImageView {
    
    init() {
        super.init(frame: .zero)
        self.image = UIImage(named: "no-image")
        self.contentMode = .scaleAspectFill
        self.layer.cornerRadius = 90
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
