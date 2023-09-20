//
//  CustomTamleViewCell.swift
//  Avatar
//
//  Created by Aleksandr  on 20.09.2023.
//

import UIKit

class CustomTamleViewCell: UITableViewCell {
    
    
    static let celdID = "cellID"
    
    private let avatarLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .green
        label.textAlignment = .center
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
        
    }()
    
    private let nameLabel = UILabel()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        avatarLabel.layer.cornerRadius = avatarLabel.frame.width / 2
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(nameLabel)
        addSubview(avatarLabel)
    }
    
}


extension CustomTamleViewCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            avatarLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            avatarLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            avatarLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.9),
            avatarLabel.widthAnchor.constraint(equalTo: heightAnchor, multiplier: 0.9),
            
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: avatarLabel.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        
        
        ])
    }
}
