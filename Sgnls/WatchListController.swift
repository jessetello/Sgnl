//
//  ViewController.swift
//  Sgnls
//
//  Created by Jesse Tello on 7/25/17.
//  Copyright © 2017 jt. All rights reserved.
//

import UIKit

class WatchListController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
}

extension WatchListController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
}

extension WatchListController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
