//
//  TableViewCell.swift
//  Home Work 13
//
//  Created by Daniil Davidovich on 30.12.22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    static var identifier = "TableCell"

    func configure(with model:Table) {
        titleLabel.text = model.name
        iconImage.image = UIImage(named: model.icon )
        if (model.text != nil) {
            rightLabel.text = model.text
        }
    
        
    }
    
    //MARK: - Outlets
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var rightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .right
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 17)
        
        return label
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
        addSubview(rightLabel)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            
            iconImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 20),
            iconImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            iconImage.widthAnchor.constraint(equalToConstant: 25),
            iconImage.heightAnchor.constraint(equalToConstant: 25),
            
            titleLabel.centerYAnchor.constraint(equalTo: iconImage.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: iconImage.trailingAnchor, constant: 20),
            
            rightLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 315),
            rightLabel.centerYAnchor.constraint(equalTo: iconImage.centerYAnchor)
        ])
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        // for phantom
        accessoryView = nil
    }
}
