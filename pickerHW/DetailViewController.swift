//
//  DetailViewController.swift
//  pickerHW
//
//  Created by Vladislav Mikheenko on 19.05.2018.
//  Copyright © 2018 Vladislav Mikheenko. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var yearEeeeEeeeEeee: String!
    
    let cencelButton = UIButton()
    let yearLabel = UILabel()
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(yearEeeeEeeeEeee)
        
        //Back button
        cencelButton.frame = CGRect(x: 130, y: 400, width: 59, height: 59)
        
        //label for year
        yearLabel.frame = CGRect(x: 22, y: 68, width: 277, height: 63)
        yearLabel.textAlignment = .center
        yearLabel.text = yearEeeeEeeeEeee
        
        //label for leap year
        label.frame = CGRect(x: 22, y: 132, width: 277, height: 200)
        label.textAlignment = .center
        
        
        if Int(yearEeeeEeeeEeee)! % 4 == 0 {
            label.text = "leap year"
        } else {
            label.text = "normal year"
        }
        
        //add to view
        view.addSubview(cencelButton)
        view.addSubview(yearLabel)
        view.addSubview(label)
        
        //nabludatelb
        cencelButton.addTarget(self, action: #selector(forBackButton(target:)), for: .touchDown)

    }

    @objc func forBackButton(target: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
