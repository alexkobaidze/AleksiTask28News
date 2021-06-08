//
//  ViewController.swift
//  AleksiTask28News
//
//  Created by Alex on 08.06.21.
//
import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var newsManager: NewsManagerProtocol!
    private var viewModel: NewsListViewModelProtocol!
    private var dataSource: NewsDataSource!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        configureViewModel()
    }
    
    private func setupLayout() {
        navigationItem.title = "News"
        tableView.registerNib(class: NewsCell.self)
    }

    private func configureViewModel() {
        newsManager = NewsManager()
        viewModel = NewsListViewModel(with: newsManager,
                                      navigationController: self.navigationController)
        dataSource = NewsDataSource(with: tableView,
                                    viewModel: viewModel)
        
        dataSource.refresh()
    }
    

}

