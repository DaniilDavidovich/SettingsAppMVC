//
//  DetailViewController.swift
//  Home Work 13
//
//  Created by Daniil Davidovich on 2.01.23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var cell: Cell? {
        didSet {
            label.text = cell?.name
        }
    }
    
    //MARK: - UI Elements
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 40)
        label.textColor = .black
        return label
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Back", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemRed
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(pressBack), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHirarahy()
        setupLayout()
        view.backgroundColor = .systemGray
    }
    
    //MARK: - Setups
    
    func setupHirarahy() {
        view.addSubview(button)
        view.addSubview(label)
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 150),
            button.heightAnchor.constraint(equalToConstant: 75),
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100)
        ])
    }
    
    //MARK: - Active
    @objc func pressBack() {
        navigationController?.popViewController(animated: true)
    }
}
