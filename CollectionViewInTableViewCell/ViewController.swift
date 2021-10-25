//
//  ViewController.swift
//  CollectionViewInTableViewCell
//
//  Created by Coditas on 25/10/21.
//  Copyright © 2021 Coditas. All rights reserved.
//

import UIKit

struct allData {
    let sectionTitle : String
    let imageGallery : [String]
}
 var Product = [allData(sectionTitle: "Fashion Top Deals", imageGallery:["Cosmatic","watch","Shoes","Bag"]),allData(sectionTitle: "Mobile Top deals", imageGallery:["Cosmatic","watch","Shoes","Bag"])]
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        Product[section].sectionTitle
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        Product.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 1
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.collectionView.tag = indexPath.section
        return cell
     }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }



}

