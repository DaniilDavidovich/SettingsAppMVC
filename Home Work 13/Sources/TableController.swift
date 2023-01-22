//
//  ViewController.swift
//  Home Work 13
//
//  Created by Daniil Davidovich on 30.12.22.
//

import UIKit

// Паттерн delagete, создания протокола (AnyObject!)
protocol TableControllerDelegate: AnyObject {
    func pushDetail(cell: Table)
}

// Подписать Контроллер под протокол делегата
class TableController: UIViewController, TableControllerDelegate {
    
    // Пустая переменная с типом TableModel
    var model: TableModel?

    // Подгрузка tableView
    private var tableView: TableView? {
        guard isViewLoaded else { return nil }
        return view as? TableView
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Setings"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor  = .systemGray4
        
        // Подгрузка TableView
        view = TableView()
        
        // Инициализация model типо TableModel
        model = TableModel()
        
        // Подгрузка данных в tableView
        configureView()
    }
}

// MARK: - Configurations
 extension TableController {
    func configureView() {
        
        // заполнение models с помощью переменной model с типом TableModel - его свойством
        guard let models = model?.createModel else { return }
        
        // вызов функии tableView для подгрузки данных с данными models
        tableView?.configureView(with: models)
        
        // Задаем, что та переменная в tableView под название delegate = нашему классу и берет свойсво и методы подходящие под этот протокол от сюда
        tableView?.delegate = self
    }
    
     // Делегат взял эту функцию
    func pushDetail(cell: Table) {
        let detailVC = DetailViewController()
        detailVC.cell = cell
        navigationController?.pushViewController(detailVC, animated: true)
    }
}




