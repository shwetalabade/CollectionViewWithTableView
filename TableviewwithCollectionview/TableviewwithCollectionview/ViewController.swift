//
//  ViewController.swift
//  TableviewwithCollectionview
//
//  Created by Mac on 11/09/22.
//

import UIKit

var eData = [
      EntertainmentApp(sectionType: "Bollywood film",imageGallary: ["filmpics1","filmpics2","filmpics3","filmpics4","filmpics5"]),
      EntertainmentApp(sectionType: "Hollywood film", imageGallary: ["film1","film2","film3","film4","film5"]),
      EntertainmentApp(sectionType: "Nature Pics", imageGallary: ["pics1","pics2","pics3","pics4","pics5"])
         ]
class ViewController: UIViewController {
    
    @IBOutlet weak var Mytableview:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Mytableview.dataSource = self
        Mytableview.delegate = self
    }


}
extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    1
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let obj = Mytableview.dequeueReusableCell(withIdentifier: "cell",for: indexPath)as? MyTableViewCell
    obj?.myCollectionView.tag = indexPath.section
    return obj!
}
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .red
    }

}
