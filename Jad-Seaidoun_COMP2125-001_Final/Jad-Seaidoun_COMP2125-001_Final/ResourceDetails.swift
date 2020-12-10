//
//  ResourceDetails.swift
//  Jad-Seaidoun_COMP2125-001_Final
//
//  Created by Jad Seaidoun on 2020-12-09.
//

import UIKit

class ResourceDetails: UIViewController {
    
    var projectName: String = ""
    var employeeName: String = ""
    var totalCostOfEmployee: String = ""
    
    @IBAction func btnSave(_ sender: Any) {
        print("resourcedetails")
        txtOutputRD.text = "Project Name: " + projectName + "\n" + "Total Cost of Employee: " + totalCostOfEmployee
    }
    
    @IBOutlet weak var txtOutputRD: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
