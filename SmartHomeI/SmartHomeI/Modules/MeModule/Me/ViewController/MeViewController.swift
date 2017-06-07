//
//  MeViewController.swift
//  SmartHomeI
//
//  Created by JianRongCao on 01/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import UIKit
import ReachabilitySwift
import Moya

class MeViewController: RMViewController,UITableViewDelegate,UITableViewDataSource {
    
    let items : NSArray = [["title":"常见问题","icon":"me_icon_faq"],["title":"联系我们","icon":"me_icon_online"],["title":"关于","icon":"me_icon_about"]];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.isNavigationBarHidden = true;
        self.view.backgroundColor = ME_COLOR;
        self.setUpView();
    }
    
    func setUpView() {
        print("\(kSCREEN_WIDTH)");
//        NotificationCenter.default.addObserver(self, selector:#selector(netchange(notification:)) , name: ReachabilityChangedNotification, object: nil);
        self.view .addSubview(self.meTable);
        self.meTable.snp.makeConstraints { (make) in
            make.left.top.width.equalTo(self.view);
            make.height.equalTo(kSCREEN_HEIGHT - 49);
        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 1 ? 3 : 2;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0;
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 1 ? 20 : 0;
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView.init();
        view.backgroundColor = ME_COLOR;
        return view;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MeItemCell;
        cell.isTop = indexPath.row == 0;
        switch indexPath.section {
        case 0:
            cell.title =  "index:\(indexPath.row)";
            cell.iconUrl = "me_icon_faq";
            cell.isBottom = (indexPath.row + 1 == 2);
        default:
            let model = items[indexPath.row] as! NSDictionary;
            cell.title =  model.value(forKey: "title") as? String;
            cell.iconUrl = model.value(forKey: "icon") as? String;
            cell.isBottom = (indexPath.row + 1 == items.count);
            cell.showRightInfo(info: (indexPath.row == 1 ?  "" : "4008-365-365"));
        }
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    lazy var meTable:UITableView = {
        let table = UITableView.init(frame: CGRect.zero, style: UITableViewStyle.plain);
        table.register(MeItemCell.self, forCellReuseIdentifier: "cell");
        table.backgroundColor = UIColor.clear;
        table.delegate = self;
        table.dataSource = self;
        table.separatorStyle = .none;
        table.showsVerticalScrollIndicator = false;
        table.tableHeaderView = self.headerView;
        table.tableFooterView = UIView.init();
        return table;
    }();
    
    lazy var headerView : MeHeaderView = {
        let header = MeHeaderView.init(frame: CGRect.init(x: 0, y: 0, width: kSCREEN_WIDTH, height: 260));
        return header;
    }();
    
}
