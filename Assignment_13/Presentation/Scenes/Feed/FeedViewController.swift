//
//  FeedViewController.swift
//  FeedViewController
//
//  Created by Nika Topuria on 11.10.21.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet var postsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postsTableView.delegate = self
        postsTableView.dataSource = self
        //Add self as an observer
        NotificationCenter.default.addObserver(self, selector: #selector(refreshTableView(_:)), name: Notification.Name(rawValue: "didLikePost"), object: nil)
        postsTableView.register(UINib(nibName: "PostCell", bundle: nil), forCellReuseIdentifier: "PostCell")
    }
    
    //Reload tableView every time user likes a post
    @objc func refreshTableView(_ notification: Notification){
        self.postsTableView.reloadData()
    }
    
}

extension FeedViewController: UITableViewDelegate{
    
}

extension FeedViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        cell.makePost(indexPath.row)
        return cell
    }
    
    
}
