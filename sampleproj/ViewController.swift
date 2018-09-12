//
//  ViewController.swift
//  sampleproj
//
//  Created by GadgetZone on 9/10/18.
//  Copyright © 2018 GadgetZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
   
    
    struct buttonvar {
        let button1 : String?
        let button2 : String?
        
    }
    var userarray: [String]  = ["ios1","ios2","ios3","ios4","io5","ios6","ios7","ios8"]
    var usserarray2 = ["ios10","ios20","ios30","ios40","io50","ios60","ios70","ios80"]
    var buttonarray = [buttonvar]()
    
 // var button1 = ["ios1","ios2","ios3","ios4"]
    //identifier
    let cellid = "cell"
    // tableview creadted
    let tableview: UITableView = {
        
        let tv = UITableView()
        
        tv.separatorStyle = .none
        tv.allowsSelection = false
        return tv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
        navigationbar()
        tableviewsetup()
    }
// navigationfunc
  func navigationbar()
  {
   navigationItem.title = "Tableview"
    navigationController?.navigationBar.barTintColor = UIColor.cyan
    }
    
    
    //properties of tableview
    func tableviewsetup()
    {
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(tableviewcell.self, forCellReuseIdentifier: cellid)
        view.addSubview(tableview)
    tableview.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
    }
    
    // protocols of tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userarray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: cellid, for: indexPath)as! tableviewcell
//      cell.button.tag = userarray.count
//        cell.button.setTitle("userarray", for: .normal)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "User Detail"
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "userdetail"
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
}
// tableviewcell created
class tableviewcell: UITableViewCell {
    
    let cellview: UIView = {
        let cv = UIView()
        cv.backgroundColor = UIColor.white
        cv.setCellShadow()
        return cv
    }()
    let button: UIButton = {
        let btn = UIButton()
    btn.frame = CGRect(x: 50.0, y: 150.0, width: 200.0, height: 52.0)
   btn.setTitle("Like this video", for: .normal)
    btn.layer.borderWidth = 5.0
   btn.layer.borderColor = UIColor.clear.cgColor
   btn.backgroundColor = UIColor.darkGray
    btn.titleLabel?.textColor = UIColor.white
   btn.tintColor = UIColor.white
   btn.layer.cornerRadius = 15.0
   btn.addTarget(self, action: #selector(buttonClicked(_ :)), for: .touchUpInside)
        return btn
    }()
//    let userbutton: UIButton = {
//        let userbtn = UIButton()
//       userbtn.frame = CGRect(x: 50.0, y: 100.0, width: 100.0, height: 52.0)
//       userbtn.layer.borderWidth = 5.0
//    userbtn.layer.borderColor = UIColor.black.cgColor
//      userbtn.titleLabel?.textColor = UIColor.white
//        userbtn.tintColor = UIColor.white
//        userbtn.setTitle("IOS A", for:  .normal)
//        userbtn.layer.cornerRadius = 5.0
//        userbtn.backgroundColor = UIColor.lightGray
//        userbtn.addTarget(self, action: #selector(buttonClicked(_ :)), for: .touchUpInside)
//        return userbtn
//    }()
//    let userbutton2: UIButton = {
//        let userbtn2 = UIButton(type: .system )
//        userbtn2.frame = CGRect(x: 50.0, y: 100.0, width: 100.0, height: 52.0)
//        userbtn2.layer.borderWidth = 5.0
//        userbtn2.layer.borderColor = UIColor.black.cgColor
//        userbtn2.titleLabel?.textColor = UIColor.white
//        userbtn2.setTitle("IOS B", for: .normal)
//        userbtn2.tintColor = UIColor.white
//        userbtn2.layer.cornerRadius = 5.0
//        userbtn2.backgroundColor = UIColor.lightGray
//        userbtn2.addTarget(self, action: #selector(buttonClicked(_ :)), for: .touchUpInside)
//        return userbtn2
//    }()
    @objc func buttonClicked(_ : UIButton) {
        print("Like this video is clicked/tapped.")
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        tableviewcellsetup()
    }
    
    // func of tableviewcell properties
    
    func tableviewcellsetup()
    {
        addSubview(cellview)
        

       self.cellview.addSubview(button)
     
        cellview.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 4, paddingLeft: 8, paddingBottom: 4, paddingRight: 8)
        button.setAnchor(top: nil, left: cellview.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 4, paddingBottom: 0, paddingRight: 0,width: 100 ,height: 40)
//        userbutton2.setAnchor(top: nil, left: nil, bottom: nil, right: cellview.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 8,width: 100, height: 40)
        button.centerYAnchor.constraint(equalTo: cellview.centerYAnchor).isActive = true
//        userbutton2.centerYAnchor.constraint(equalTo: cellview.centerYAnchor).isActive = true
    }
   
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


