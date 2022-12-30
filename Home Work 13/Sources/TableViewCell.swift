//
//  TableViewCell.swift
//  Home Work 13
//
//  Created by Daniil Davidovich on 30.12.22.
//

import UIKit

class TableViewCell: UITableViewCell {

    var cell: Cells? {
        didSet {
            titleLabel.text = cell?.name
        }
    }
    
    //MARK: - Outlets
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    private lazy var iconImage: UIImageView = {
        let imageView = UIImageView()
        
        
        return imageView
    }()
    
    
    //MARK: - Inits
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarhy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implement")
    }
    //MARK: - Setups
    private func setupHierarhy() {
        addSubview(titleLabel)
        addSubview(iconImage)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            
            iconImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            iconImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            iconImage.widthAnchor.constraint(equalToConstant: 30),
            iconImage.heightAnchor.constraint(equalToConstant: 30),
            
            titleLabel.centerYAnchor.constraint(equalTo: iconImage.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: iconImage.trailingAnchor, constant: 10),
            
            
        ])
    }
}
