//
//  ViewController.swift
//  Flag Viewer
//
//  Created by Steven Vandegrift on 8/12/20.
//

import UIKit

class ViewController: UITableViewController {

    var flags = [String]()
    var imageString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        flags += [
            "estonia",
            "france",
            "germany",
            "ireland",
            "italy",
            "monaco",
            "nigeria",
            "poland",
            "russia",
            "spain",
            "uk",
            "us"
        ]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flags.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FlagCell", for: indexPath)
        cell.textLabel?.text = flags[indexPath.row].uppercased()        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        imageString = flags[indexPath.row]
        performSegue(withIdentifier: "FlagTransition", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? DetailViewController {
            vc.imageName = imageString
        }
    }

}

