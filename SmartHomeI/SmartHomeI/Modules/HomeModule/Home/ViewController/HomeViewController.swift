//
//  HomeViewController.swift
//  SmartHomeI
//
//  Created by JianRongCao on 01/06/2017.
//  Copyright © 2017 JianRongCao. All rights reserved.
//

import UIKit
import ReachabilitySwift

class HomeViewController: RMViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let reachability = Reachability()!
        reachability.whenReachable = { reachability in
            // this is called on a background thread, but UI updates must
            // be on the main thread, like this:
            DispatchQueue.main.async {
                if reachability.isReachableViaWiFi {
                    print("Reachable via WiFi")
                } else {
                    print("Reachable via Cellular")
                }
            }
        }
        reachability.whenUnreachable = { reachability in
            // this is called on a background thread, but UI updates must
            // be on the main thread, like this:
            DispatchQueue.main.async {
                print("Not reachable")
            }
        }
        
        do {
            try reachability.startNotifier()
        } catch {
            print("Unable to start notifier")
        }
        
        let vw = UIView.init();
        vw.backgroundColor = UIColor.red;
        self.view.addSubview(vw);
        vw.snp.makeConstraints { (make) in
            make.width.height.equalTo(200);
            make.centerX.centerY.equalTo(self.view);
        }
    }

    func goHome(address:String) -> String {
        
        return "name:".appending(address);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
