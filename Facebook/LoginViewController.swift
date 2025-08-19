//
//  ViewController.swift
//  Facebook
//
//  Created by Shobhakar Tiwari on 8/12/25.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: Properties
    // User TextField
    @IBOutlet weak var userTextField: UITextField!
    
    // Password TextField
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: Life cycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationStack = self.navigationController?.viewControllers

        //print(navigationStack)
    }
    
    // Called before the view appears on screen.
    // Update UI with latest data, start animations, or adjust layout.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let navigationStack = self.navigationController?.viewControllers
        //print(navigationStack)
    }
    
    // Update frames or constraints before layout.
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    //Adjust final layouts, animations, or dynamic changes.
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    // Called right after the view appears.
    // Good for starting tasks that require the view to be visible (e.g., start animations, tracking, network calls)
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    // Called right before the view goes offscreen.
    // Save data, cancel tasks, or hide keyboard.
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    // Called after the view disappears.
    // Release heavy resources, stop timers, or stop animations.
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    //MARK: Button Action
    
    @IBAction func loginAction(_ sender: Any) {
        if validate(user: userTextField.text) && validate(password: passwordTextField.text) {
            print("Login Successfully")
            navigateToNextScreen()
        }
        else {
            print("Login Failed")
        }
    }
    
    // MARK: Helper Method
    
    func navigateToNextScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let signUpVC = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as? SignUpViewController {
            self.navigationController?.pushViewController(signUpVC, animated: true)
        }
    }
    
    func validate(user: String?) -> Bool {
        guard let username = user, !username.isEmpty, username.count > 3 else {
            return false
        }
        
        return true
    }
    
    func validate(password: String?) -> Bool {
        guard let password = password, !password.isEmpty, password.count > 3 else {
            return false
        }
        
        return true
    }
}

