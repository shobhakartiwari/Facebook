//
//  ViewController.swift
//  Facebook
//
//  Created by Shobhakar Tiwari on 8/12/25.
//

import UIKit

struct Employee {
    var id: Int
    var name: String
}

class LoginViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var listTableView: UITableView!
    //list of employees
    var employeeList: [Employee] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.dataSource = self
        listTableView.delegate = self
        
        let objemployee1: Employee = Employee(id: 1, name: "Shobhakar")
        let objemployee2: Employee = Employee(id: 2, name: "Shobh")
        let objemployee3: Employee = Employee(id: 3, name: "Kumar")
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
        employeeList.append(objemployee1)
        employeeList.append(objemployee2)
        employeeList.append(objemployee3)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as? ListCell else {
            return UITableViewCell()
        }
        
        let employee: Employee = employeeList[indexPath.row]
        cell.cellTitleLabel.text = employee.name
        return cell
    }
    
    // MARK: Delegate methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let objemployee: Employee = employeeList[indexPath.row]
        print("User Selected Employee: \(objemployee.name)")
    }
}
