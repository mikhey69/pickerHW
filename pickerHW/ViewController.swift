//
//  ViewController.swift
//  pickerHW
//
//  Created by Vladislav Mikheenko on 19.05.2018.
//  Copyright © 2018 Vladislav Mikheenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let datePicker = UIDatePicker()
    let timePicker = UIDatePicker()
    let startButton = UIButton()
    
    let labelDate = UILabel()
    let labelTime = UILabel()
    
    var yearText = "2018"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //picker for date
        datePicker.frame = CGRect(x: 22, y: 248, width: 274, height: 150)
        datePicker.datePickerMode = .date
        
        //picker for time
        timePicker.frame = CGRect(x: 23, y: 385, width: 274, height: 120)
        timePicker.datePickerMode = .time
        
        //label for date
        labelDate.frame = CGRect(x: 21, y: 81, width: 278, height: 43)
        labelDate.textAlignment = .center
        
        //label for time
        labelTime.frame = CGRect(x: 21, y: 183, width: 278, height: 43)
        labelTime.textAlignment = .center
        
        //button
        startButton.frame = CGRect(x: 87, y: 506, width: 146, height: 43)
        
        //add info to view
        view.addSubview(datePicker)
        view.addSubview(timePicker)
        view.addSubview(labelDate)
        view.addSubview(labelTime)
        view.addSubview(startButton)
        
        //view.addSubview(labelYear)
        datePicker.addTarget(self, action: #selector(checkDateInLabel(_:)), for: .valueChanged)
        timePicker.addTarget(self, action: #selector(checkTimainLabel(_:)), for: .valueChanged)
        startButton.addTarget(self, action: #selector(start(_:)), for: .touchDown)
        
    }

    @objc func checkDateInLabel(_: UIDatePicker)  {
        
        let formate = DateFormatter()
        formate.dateFormat = "dd-MM-yyyy"
        
        let year = DateFormatter()
        year.dateFormat = "yyyy"
        
        yearText = year.string(from: datePicker.date)
        
        labelDate.text = formate.string(from: datePicker.date)
    }
    
    @objc func checkTimainLabel(_: UIDatePicker)  {
        
        let formate = DateFormatter()
        formate.timeStyle = .short
        let time = formate.string(from: timePicker.date)
        
        let alert = UIAlertController(title: "time: ", message: time, preferredStyle: .alert)
        let actionAlert = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(actionAlert)
        
        present(alert, animated: true, completion: nil)
        
        labelTime.text = formate.string(from: timePicker.date)
    }
    
    //func for data invite
    @objc func start(_: UIButton) {
        
        guard let vc = UIStoryboard(name: "Mein", bundle: nil).instantiateViewController(withIdentifier: "detail") as? DetailViewController else { return }
        vc.yearEeeeEeeeEeee = yearText
        self.present(vc, animated: true, completion: nil)
        
    }

}

