//
//  MenuViewController.swift
//  SkillSwApp
//
//  Created by Alvaro Alva on 9/27/20.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var skillsPickerViews: UIPickerView!
    @IBOutlet weak var contentTableView: UITableView!
    let data = ["Technology / Computers", "Arts / Entertainment / Hobby", "Culinary", "Construction / Handyman", "Education / Tutory", "Fitness / Training", "Automotive / Mechanical", "HairStyling / Barber", "Special / Other"]
    private var names = [
    "Alvaro Alva", "Juana Alayo", "Nick Smith", "Mark Travieso", "Catalina Lopez", "George Sotil", "Marcos Alayo", "Kathy Nostra", "Meylin Altamirano", "Jesus Hist", "Xi Jun"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        skillsPickerViews.dataSource = self
        skillsPickerViews.delegate = self
        
        contentTableView.dataSource = self
        contentTableView.register(UINib(nibName: "inAppTableViewCell", bundle: nil), forCellReuseIdentifier: "inAppTableViewCell")
        contentTableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        contentTableView.delegate = self
        
    }
}
extension MenuViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    
}
extension MenuViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
}
extension MenuViewController: UITableViewDataSource {
    // number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    // what cells should be displayed
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contentTableView.dequeueReusableCell(withIdentifier: "inAppTableViewCell", for: indexPath)
        (cell as? inAppTableViewCell)?.setupCell(username: names[indexPath.row], message: "My skill is: ")
        //cell.textLabel?.text = "#\(indexPath.row)"
        return cell
    }
}
