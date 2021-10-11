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
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "RecipeOfDayTableViewCell", bundle: nil), forCellReuseIdentifier: "RecipeOfDayTableViewCell")
        tableView.register(UINib(nibName: "BreakfastCell", bundle: nil), forCellReuseIdentifier: "BreakfastCell")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

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

extension HomeViewController: UITableViewDelegate {
    
}
