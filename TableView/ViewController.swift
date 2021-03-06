//
//  ViewController.swift
//  TableView
//
//  Created by ESS Mac Pro on 3/28/17.
//  Copyright © 2017 NGA Group Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = "Hello Swift World!"
        
        return cell
        
    }
    
}

extension ViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alert = UIAlertController(title: "Alert", message: "Selected Row", preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Ok", style: .default){ action in
            
            tableView.backgroundColor = UIColor.randomColor()
            
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .destructive) { action in
            
            tableView.backgroundColor = UIColor.clear
            
        }
        
        
        alert.addAction(action)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
}



extension CGFloat{
    
    static func random() -> CGFloat{
        return CGFloat(arc4random())/CGFloat(UInt32.max)
    }
    
}

extension UIColor{
    
    static func randomColor() -> UIColor{
        return UIColor(red: .random(), green: .random(), blue: .random(), alpha: 1.0)
    }
    
}


