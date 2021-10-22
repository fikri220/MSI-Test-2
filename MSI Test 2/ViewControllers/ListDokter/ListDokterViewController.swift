//
//  ListDokterViewController.swift
//  MSI Test 2
//
//  Created by Fikri Ihsan on 21/10/21.
//

import UIKit

class ListDokterViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var dokterList : [Dokter] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        dokterList = DokterList.list
        
        tableview.dataSource = self
        tableview.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func loadmore(){
        
        tableview.tableFooterView = nil
        dokterList += DokterList.list
        tableview.reloadData()
    }
}

extension ListDokterViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dokterList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "myIdentifier"
        var  cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier)
                
        if (cell == nil){
            let nib:Array = Bundle.main.loadNibNamed("DokterCell", owner: self, options: nil)!
            cell = nib[0] as? UITableViewCell
                    
        }
        
        let data = dokterList[indexPath.row]
        
        let lblNama : UILabel = cell.viewWithTag(100) as! UILabel
        let lblWilayah : UILabel = cell.viewWithTag(200) as! UILabel
        let lblTitle : UILabel = cell.viewWithTag(300) as! UILabel
        let lblTarif : UILabel = cell.viewWithTag(400) as! UILabel
        let ivFoto : UIImageView = cell.viewWithTag(500) as! UIImageView
        
        lblNama.text = data.nama
        lblWilayah.text = data.lokasi
        lblTitle.text = data.title
        lblTarif.text = data.harga
        ivFoto.image = data.foto
        
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailDokterViewController.init(dokter: dokterList[indexPath.row])
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == dokterList.count - 1 {
            loadmore()
            self.tableview.tableFooterView = spinnerFooter()
        }
    }
    
    private func spinnerFooter() -> UIView{
        let footerView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 100))
        let spinner = UIActivityIndicatorView()
        spinner.center = footerView.center
        footerView.addSubview(spinner)
        spinner.startAnimating()
        
        return footerView
    }
    
    
}
