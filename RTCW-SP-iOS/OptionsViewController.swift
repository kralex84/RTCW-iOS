//
//  OptionsViewController.swift
//  Quake3-iOS
//
//  Created by Tom Kidd on 8/8/18.
//  Copyright © 2018 Tom Kidd. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {
    
    let defaults = UserDefaults()
    
    @IBOutlet weak var tiltAimingSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
                
        tiltAimingSwitch.isOn = defaults.integer(forKey: "tiltAiming") == 1

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    #if os(iOS)
    @IBAction func tiltAimingToggle(_ sender: UISwitch) {
        defaults.set(sender.isOn ? 1 : 0, forKey: "tiltAiming")
    }
    #endif

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
