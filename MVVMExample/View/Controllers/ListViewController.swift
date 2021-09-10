//
//  ListViewController.swift
//  MVVMExample
//
//  Created by Маша on 10.09.2021.
//

import Foundation
import UIKit

class ListViewController: UITableViewController{
    var viewModel: ViewModel!
    private var models = ViewModelData().modelsData

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Первый экран"
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.tappedCell()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        let model = models[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
    static func instantiate<T>() -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(identifier: "\(T.self)") as! T
        return controller
    }
}
