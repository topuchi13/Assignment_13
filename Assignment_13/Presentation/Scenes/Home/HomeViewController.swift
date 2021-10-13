//
//  HomeViewController.swift
//  HomeViewController
//
//  Created by Nika Topuria on 11.10.21.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.register(UINib(nibName: "RecipeOfDayTableViewCell", bundle: nil), forCellReuseIdentifier: "RecipeOfDayTableViewCell")
        tableView.register(UINib(nibName: "BreakfastCell", bundle: nil), forCellReuseIdentifier: "BreakfastCell")
        // Do any additional setup after loading the view.
        
        // Initialise LikedPostsArray from UserDefaults LikedPosts array.
        if let likedPosts = UserDefaults.standard.object(forKey: "LikedPosts") as? [Int] {
            var tempPostsSource: [Int : Post] = [:]
            LikedPostsArray = likedPosts
            for var item in PostsSource {
                if likedPosts.contains(item.key) {
                    item.value.isLiked = true
                    //print ("Liked Post Found!!!")
                }
                tempPostsSource[item.key] = item.value
            }
            PostsSource = tempPostsSource
        }
  
    }
    
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row{
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeOfDayTableViewCell", for: indexPath) as! RecipeOfDayTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BreakfastCell", for: indexPath) as! BreakfastCell
            return cell
        default:
            break
        }
        
        fatalError("")
    }
    
    
    
}
