//
//  ViewController.swift
//  Jad-Seaidoun_COMP2125-001_Final
//
//  Created by Jad Seaidoun on 2020-12-07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtProjectName: UITextField!
    
    var projectDuration: Int = 0 {
        willSet {
            if newValue >= 50 || newValue <= 100 {
                self.projectDuration = newValue
            }
        }
    }
    var hourlyRate: Int = 0 {
        willSet {
            if newValue >= 30 || newValue <= 150 {
                self.hourlyRate = newValue
            }
        }
    }
    
    @IBOutlet weak var txtProjectDuration: UITextField! {
        didSet{
            guard txtProjectDuration != nil else {
                return
            }
            self.projectDuration = Int(from: txtProjectDuration.text! ?? 0)
        }
    }
    
    @IBOutlet weak var txtHourlyRate: UITextField! {
        didSet {
            guard txtHourlyRate != nil else {
                return self.hourlyRate = Int(txtHourlyRate.text!)!
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
    // computed property to calculate totalcostofemployee
    public var totalCostPD: String {
        get{
            print(self.projectDuration)
            print(self.hourlyRate)
            return String(self.projectDuration * self.hourlyRate)
        }
        set {
            self.totalCostPD = newValue
        }
    }
    
    
    @IBAction func btnNext(_ sender: Any) {
        print(txtProjectName.text!)
        let resourceDetailsVC:ResourceDetails = self.storyboard?.instantiateViewController(withIdentifier: "ResourceDetails") as! ResourceDetails
        resourceDetailsVC.projectName = txtProjectName.text!
        resourceDetailsVC.totalCostOfEmployee = totalCostPD
        
        self.navigationController?.pushViewController(resourceDetailsVC, animated: true)
        
    }
    
    
}

