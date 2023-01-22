//
//  ViewController.swift
//  Home Work 13
//
//  Created by Daniil Davidovich on 30.12.22.
//

import UIKit

protocol TableControllerDelegate: AnyObject {
    func pushDetail(cell: Table)
}

class TableController: UIViewController, TableControllerDelegate {
    
    var model: TableModel?

    /// Это вычисляемое свойство преобразует тип родительской view в OnboardingView
    /// Это делается чтобы мы в будущем могли из Controller'a обращаться к элементам View
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
        /// Присваиваем значению View наш созданный класс OnboardingView()
        /// Можно это сделать в Main.storyboard, но я решил сделать так
        view = TableView()
        model = TableModel()
        configureView()
    }
}

// MARK: - Configurations
 extension TableController {
    func configureView() {
        guard let models = model?.createModel else { return }
        tableView?.configureView(with: models)
        tableView?.delegate = self
    }
    
    func pushDetail(cell: Table) {
        let detailVC = DetailViewController()
        detailVC.cell = cell
        navigationController?.pushViewController(detailVC, animated: true)
    }
}




