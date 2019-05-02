//
//  ViewController.swift
//  FinWS
//
//  Created by Madison on 3/31/19.
//  Copyright © 2019 Madison. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var dataStream:DataStream?
    var data:[String] = []
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        
        let stream = "winddir=225.0&windspeedmph=12.24&humidity=68.33&dewptf=42.54&tempf=47.19&rainin=0.22&dailyrainin=0.57&baromin=29.95&action=updateraw"
        let dataMeasurements = DataStream.init(stream: stream)
        data = [dataMeasurements.windDirection, dataMeasurements.windSpeed, dataMeasurements.humidity, dataMeasurements.dewpoint, dataMeasurements.temperature, dataMeasurements.rainHour, dataMeasurements.rainDay, dataMeasurements.barometic]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "header") as? CollapsibleTableViewHeader ?? CollapsibleTableViewHeader(reuseIdentifier: "header")
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") else {return UITableViewCell()}
        if indexPath.row == 0{
            cell.textLabel?.text = "Wind Direction: \(data[indexPath.row])"
        }
        else if indexPath.row == 1{
            cell.textLabel?.text = "Wind Speed: \(data[indexPath.row]) mph"
        }
        else if indexPath.row == 2{
            cell.textLabel?.text = "Humidity: \(data[indexPath.row])"
        }
        else if indexPath.row == 3{
            cell.textLabel?.text = "Dewpoint: \(data[indexPath.row])"
        }
        else if indexPath.row == 4{
            cell.textLabel?.text = "Temperature: \(data[indexPath.row]) °F"
        }
        else if indexPath.row == 5{
            cell.textLabel?.text = "Total Rain This Hour: \(data[indexPath.row]) inches"
        }
        else if indexPath.row == 6{
            cell.textLabel?.text = "Total Rain Today: \(data[indexPath.row]) inches"
        }
        else{
            cell.textLabel?.text = "Barometric Reading: \(data[indexPath.row]) inches of Hg"
        }
        return cell
        
    }


}

