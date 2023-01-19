//
//  TableView.swift
//  Home Work 13
//
//  Created by Daniil Davidovich on 18.01.23.
//

import UIKit

class TableView: UIView {
    
    func configureView(with models: [[Table]]) {
        self.models = models
    }
    
    private var models = [[Table]]()

    //MARK: - Outlets

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    //MARK: - Lifecycle

    init() {
        super.init(frame: .zero)
        setupHierarhy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    //MARK: - Setups

    private func setupHierarhy() {
        addSubview(tableView)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
    //MARK: - Extensions

extension TableView: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.configure(with: models[indexPath.section][indexPath.row])
        if indexPath.section == 0 {
            let switchView = UISwitch(frame: .zero)
            switchView.setOn(false, animated: true)
            switchView.tag = indexPath.row
            switchView.addTarget(self, action: #selector(switchChanged), for: .valueChanged)
            cell!.accessoryView = switchView
            cell?.selectionStyle = .default
        } else {
            cell?.accessoryType = .disclosureIndicator
        }
        return cell ?? TableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailView = DetailViewController()
        detailView.cell = models[indexPath.section][indexPath.row]
        print(detailView.label.text)
        let push = UINavigationController(rootViewController: detailView)
        window?.rootViewController?.navigationController?.pushViewController(detailView, animated: true)
        window?.rootViewController?.present(push, animated: true)
        
    }

    @objc func switchChanged(_ sender : UISwitch!){
          print("table row switch Changed \(sender.tag)")
          print("The switch is \(sender.isOn ? "ON" : "OFF")")
    }
}

