//
//  ViewController.swift
//  viewcontrollerLifeCycle
//
//  Created by Abhijit singh on 19/04/23.
//

import UIKit


//custom initializer
class otherViewController : UIViewController{
    
}


class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    

    
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nil, bundle: nil)
//    }
//
    
    let tableView = UITableView()
    override func loadView() {
        
//        this is called before the viewdidload so we do whatever here   we want to do before viewdidload.......lets say table
        
        super.loadView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        view = tableView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    
   
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        used when fetching data from  internet
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
    
//        view has appered to the user
//        therefore we can call layout function on views
//        we can add subview
//        show spinner
//        prompt password
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        cleanup
    }
    
    override func viewDidDisappear(_ animated: Bool) {
       
//        morecleanup
        super.viewDidDisappear(animated)
    }


    
    deinit {
//        remove things from memory
        NotificationCenter.default.removeObserver(self)
    }
}

