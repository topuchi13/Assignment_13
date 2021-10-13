//
//  SearchViewController.swift
//  SearchViewController
//
//  Created by Nika Topuria on 11.10.21.
//

import UIKit

class LikedPostList: UIViewController {
    
    @IBOutlet var favouritesList: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Add self as an observer
        NotificationCenter.default.addObserver(self, selector: #selector(refreshTableView(_:)), name: Notification.Name(rawValue: "didLikePost"), object: nil)
        favouritesList.dataSource = self
        favouritesList.register(UINib(nibName: "PostCell", bundle: nil), forCellReuseIdentifier: "PostCell")
    }
    
    //Reload tableView every time user likes a post
    @objc func refreshTableView(_ notification: Notification){
        self.favouritesList.reloadData()
    }

}

extension LikedPostList: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LikedPostsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath) as! PostCell
        cell.makePost(LikedPostsArray[indexPath.row])
                
        return cell
    }
    
    
}
