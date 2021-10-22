//
//  SearchViewController.swift
//  MSI Test 2
//
//  Created by Fikri Ihsan on 21/10/21.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableview: UITableView!
    
    var listData = ["Kebon Jeruk, Jakarta","Puri, Jakarta", "Grogol Jakarta", "Jatinegara, Jakarta", "Mangga Dua, Jakarta", "Slipi, Jakarta"]
    
    var searchData : [String] = []
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableview.dataSource = self
        searchBar.delegate = self
    }
    
    @IBAction func onClickedDoctor(_ sender: Any) {
        let vc = ListDokterViewController.init()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension SearchViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchData.count
        }else{
            return listData.count
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "myIdentifier"
        var  cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier)
                
        if (cell == nil){
            let nib:Array = Bundle.main.loadNibNamed("SearchCell", owner: self, options: nil)!
            cell = nib[0] as? UITableViewCell
                    
        }
        
        
        
        let lblNama : UILabel = cell.viewWithTag(100) as! UILabel
        
        if searching {
            lblNama.text = searchData[indexPath.row]
        }else {
            lblNama.text = listData[indexPath.row]
        }
        
        
        return cell
    }
}
extension SearchViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchData = listData.filter({$0.prefix(searchText.count) == searchText})
        searching = true
        tableview.reloadData()
    }
}
