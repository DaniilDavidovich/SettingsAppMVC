//
//  ViewController.swift
//  Home Work 13
//
//  Created by Daniil Davidovich on 30.12.22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var cells: [[Cell]]?
    
    //MARK: - Outlets
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        cells = Cell.Cells
        title = "Setings"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor  = .systemGray4
        setupHierarhy()
        setupLayout()
    }
    
    //MARK: - Setups
    
    private func setupHierarhy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        
        ])
    }
}
    //MARK: - Extensions

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cells?.count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cells?[section].count ?? 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        cell?.cell = cells?[indexPath.section][indexPath.row]
//        if toggle {
//            cell?.toggleItalics(.none)
//        } cell?.accessoryType = .disclosureIndicator
        cell?.accessoryType = .disclosureIndicator
        return cell ?? TableViewCell()
    }
}



