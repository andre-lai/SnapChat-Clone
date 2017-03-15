//
//  categoryViewController.swift
//  snapChatProject
//
//  Created by Andre Lai on 3/14/17.
//  Copyright © 2017 org.iosdecal. All rights reserved.
//

import UIKit

class categoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var indexCategory: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView1.delegate = self
        tableView1.dataSource = self
        // Do any additional setup after loading the view.
        let image = UIImage(named: "goButton") as UIImage?
        sendButton.setImage(image, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return threadNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryTableCell", for: indexPath) as!categoryTableViewCell
        
        cell.labelText.text = threadNames[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        indexCategory = indexPath.row
        categoryLabel.text = threadNames[indexPath.row]
        
    }

    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    @IBAction func sendButtonWasPressed(_ sender: UIButton) {
        threads[threadNames[indexCategory!]]! += [selectedImage!]
    }
    
}
