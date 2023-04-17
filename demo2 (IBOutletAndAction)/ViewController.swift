//
//  ViewController.swift
//  demo2 (IBOutletAndAction)
//
//  Created by R87 on 13/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surNameLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setup()
    }
    private func setup(){
        nameLabel.text = "Kaushik"
        surNameLabel.text = "Undhad"
        
        
        nameLabel.textColor = .tintColor
        nameLabel.backgroundColor = .systemPink
        nameLabel.textAlignment = .left
//        nameLable.layer.cornerRadius = 10
//        nameLable.layer.masksToBounds = true
//        nameLable.layer.borderColor = UIColor.red.cgColor
//        nameLable.layer.borderWidth = 1
        
        surNameLabel.textColor = .tintColor
        surNameLabel.backgroundColor = .systemPink
        surNameLabel.textAlignment = .left
//        surName.layer.cornerRadius = 10
//        surName.layer.masksToBounds = true
//        surName.layer.borderColor = UIColor.red.cgColor
//        surName.layer.borderWidth = 1
//
    
//        setCorneRedius(view: nameLable, cornerRedius: 10)
//        setCorneRedius(view: surName, cornerRedius: 20)
//        setBorder(view: nameLable, color: .red, width: 1)
//        setBorder(view: surName, color: .green, width: 2)
        
        [nameLabel,surNameLabel,loginButton].forEach{
            setBorder(view: $0, color: .red, width: 1)
            setCorneRedius(view: $0, cornerRedius: 10)
            
        }
     
    
}
     
    
    func setCorneRedius(view: UIView? , cornerRedius: CGFloat){
        view?.layer.cornerRadius = cornerRedius
        view?.layer.masksToBounds = true
    }
    
    func setBorder(view: UIView? ,color: UIColor , width: CGFloat){
        view?.layer.borderColor = color.cgColor
        view?.layer.borderWidth = width
    }
    
    
    
    @IBAction func loginBoton(_ sender: UIButton) {
        loginButton.setTitle("LOGIN SET", for: .normal)
        [nameLabel,surNameLabel,loginButton].forEach {
            $0?.backgroundColor = .brown
        }
    }
}

