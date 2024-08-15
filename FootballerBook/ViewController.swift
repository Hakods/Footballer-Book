//
//  ViewController.swift
//  FootballerBook
//
//  Created by Ahmet Hakan Altıparmak on 15.08.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var myFootballer = [Footballer]()
    
    var chosenFootballer : Footballer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        let footballer1 = Footballer(name: "İcardi", team: "Galatasaray", age:31, image: UIImage(named: "icardi")!)
        let footballer2 = Footballer(name: "Dzeko", team: "Fenerbahçe", age:38, image: UIImage(named: "dzeko")!)
        let footballer3 = Footballer(name: "İmmobile", team: "Beşiktaş", age:34, image: UIImage(named: "immobile")!)
        let footballer4 = Footballer(name: "Uğurcan", team: "Trabzonspor", age:28, image: UIImage(named: "ugurcan")!)
        let footballer5 = Footballer(name: "Piatek", team: "Başakşehir", age:29, image: UIImage(named: "piatek")!)
        
        myFootballer.append(footballer1)
        myFootballer.append(footballer2)
        myFootballer.append(footballer3)
        myFootballer.append(footballer4)
        myFootballer.append(footballer5)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFootballer.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myFootballer[indexPath.row].name
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenFootballer = myFootballer[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"
        {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedFootballer = chosenFootballer
        }
    }

}

