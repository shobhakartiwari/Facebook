//
//  ViewController.swift
//  Facebook
//
//  Created by Shobhakar Tiwari on 8/12/25.
//

import UIKit

class LoginViewController: UIViewController {
    //var userNameTextField: UITextField!
    //var passwordTextField: UITextField!
    //var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupUI()
        setupSignUp()
    }
    
    /*func setupUI() {
        
        // Username textfield
        userNameTextField = UITextField()
        userNameTextField.placeholder = "Enter Username"
        userNameTextField.textAlignment = .center
        userNameTextField.borderStyle = .roundedRect
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        //view.addSubview(userNameTextField)
        
        //Password textfiled
        passwordTextField = UITextField()
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.textAlignment = .center
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        //view.addSubview(passwordTextField)
        
        // create the button
        loginButton = UIButton(type: .system)
        // title
        loginButton.setTitle("Login", for: .normal)
        // background color
        loginButton.backgroundColor = .systemBlue
        // textcolor
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        //add the tap action
        loginButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        // add button to the view
        view.addSubview(loginButton)
        
        
        // add both the textfield horizontally
        let textFieldStack = UIStackView(arrangedSubviews: [userNameTextField, passwordTextField])
        textFieldStack.axis  = .vertical
        textFieldStack.distribution  = .fillEqually
        textFieldStack.spacing  = 10
        textFieldStack.translatesAutoresizingMaskIntoConstraints  = false
        view.addSubview(textFieldStack)
        
        
        // create a label
        let copyRightLabel = UILabel()
        copyRightLabel.text = "© 2025 Shobhakar Tiwari"
        copyRightLabel.textAlignment = .center
        copyRightLabel.translatesAutoresizingMaskIntoConstraints  = false
        copyRightLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        copyRightLabel.backgroundColor = .cyan
        view.addSubview(copyRightLabel)
        
        
        
        // set constraints (center in the view)
        NSLayoutConstraint.activate([
            
            textFieldStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFieldStack.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30),
            textFieldStack.widthAnchor.constraint(equalToConstant: 300),
            textFieldStack.heightAnchor.constraint(equalToConstant: 40),
            
            /*
            // username textfield constraint
            userNameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            userNameTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60), // x is positive --->> downward , -ve --->>> upward
            userNameTextField.widthAnchor.constraint(equalToConstant: 250),
            userNameTextField.heightAnchor.constraint(equalToConstant: 40),
            
            //password textfield constraint
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20),
            passwordTextField.widthAnchor.constraint(equalTo: userNameTextField.widthAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            */
            
            // Login button constraint added
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: textFieldStack.bottomAnchor, constant: 30),

            loginButton.widthAnchor.constraint(equalToConstant: 250),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            
            
            copyRightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            copyRightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            copyRightLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            copyRightLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
            
    }
    
    */
    // Button tap action
    // @objc func buttonTapped() {
//        guard let name = userNameTextField.text, name.count > 0, let password = passwordTextField.text, password.count > 0 else {
//            view.backgroundColor = .red
//            return
//        }
//        view.backgroundColor = .green
//    }
            
        // MARK: - UI Elements
        
        let fullNameTextField: UITextField = {
            let tf = UITextField()
            tf.placeholder = "Full Name"
            tf.borderStyle = .roundedRect
            tf.autocapitalizationType = .words
            tf.translatesAutoresizingMaskIntoConstraints = false
            return tf
        }()
        
        let emailTextField: UITextField = {
            let tf = UITextField()
            tf.placeholder = "Email"
            tf.borderStyle = .roundedRect
            tf.keyboardType = .emailAddress
            tf.autocapitalizationType = .none
            tf.translatesAutoresizingMaskIntoConstraints = false
            tf.heightAnchor.constraint(equalToConstant: 60).isActive = true
            return tf
        }()
        
        let passwordTextField: UITextField = {
            let tf = UITextField()
            tf.placeholder = "Password"
            tf.borderStyle = .roundedRect
            tf.isSecureTextEntry = true
            tf.translatesAutoresizingMaskIntoConstraints = false
            return tf
        }()
        
        let confirmPasswordTextField: UITextField = {
            let tf = UITextField()
            tf.placeholder = "Confirm Password"
            tf.borderStyle = .roundedRect
            tf.isSecureTextEntry = true
            tf.translatesAutoresizingMaskIntoConstraints = false
            return tf
        }()
        
        let signupButton: UIButton = {
            let btn = UIButton(type: .system)
            btn.setTitle("Sign Up", for: .normal)
            btn.backgroundColor = .systemBlue
            btn.setTitleColor(.white, for: .normal)
            btn.layer.cornerRadius = 8
            btn.heightAnchor.constraint(equalToConstant: 50).isActive = true
            btn.translatesAutoresizingMaskIntoConstraints = false
            return btn
        }()
        
        let bottomLabel: UILabel = {
            let lbl = UILabel()
            lbl.text = "Already have an account? Login"
            lbl.textAlignment = .center
            lbl.textColor = .darkGray
            lbl.font = UIFont.systemFont(ofSize: 14)
            lbl.translatesAutoresizingMaskIntoConstraints = false
            return lbl
        }()
        
        // MARK: - Lifecycle
        
        func setupSignUp() {
            
            
            // StackView for textfields + button
            let stackView = UIStackView(arrangedSubviews: [
                fullNameTextField,
                emailTextField,
                passwordTextField,
                confirmPasswordTextField,
                signupButton
            ])
            stackView.axis = .vertical
            stackView.spacing = 15
            stackView.translatesAutoresizingMaskIntoConstraints = false
            
            view.addSubview(stackView)
            view.addSubview(bottomLabel)
            
            // Layout constraints
            NSLayoutConstraint.activate([
                // Center stackView with padding
                stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                
                // Bottom label
                bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
                bottomLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                bottomLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            ])
            
            // Button action
            signupButton.addTarget(self, action: #selector(signupTapped), for: .touchUpInside)
        }
        
        // MARK: - Actions
        
        @objc func signupTapped() {
            let name = fullNameTextField.text ?? ""
            let email = emailTextField.text ?? ""
            let password = passwordTextField.text ?? ""
            let confirmPassword = confirmPasswordTextField.text ?? ""
            
            if name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty {
                print("⚠️ Please fill in all fields.")
            } else if password != confirmPassword {
                print("⚠️ Passwords do not match.")
            } else {
                print("✅ Signup success for \(name) with email: \(email)")
            }
        }
}
