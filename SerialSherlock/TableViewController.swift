//
//  TableViewController.swift
//  SerialSherlock
//
//  Created by Aisha on 19.05.2023.
//

import UIKit

class TableViewController: UITableViewController {

    var arraySerials = [Serial(names: "Sherlock Holmes", season: "First Season", discriptions: "Written by Steven Moffat and directed by Coky Giedroyc.This is a pilot version of 'A Study in Pink', which was produced by the Sherlock team and remade into the first episode upon request by the BBC.The episode was 60 minutes long, the largest single omission (relative to 'Pink') being the entire absence of Mycroft.", imagename: "three"),
                        Serial(names: "Sherlock Holmes",season: "Second season", discriptions: "After the successful Sherlock pilot premiered in 2010, season 2 arrived in 2012 and left fans with a significant cliffhanger: in order to save John, Mrs. Hudson, and Lestrade, Sherlock had to die by jumping off the roof of St. Bart's Hospital.", imagename: "two"),
                        Serial(names: "Sherlock Holmes",season: "Three season", discriptions: "Season 3 picks up two years after the infamous Reichenbach Fall, and everyone in Sherlock's life (i.e. John Watson, Lestrade, Mrs. Hudson) all think he's dead and have begun to move on. John Watson (Martin Freeman) has moved out of 221B Baker Street and is now dating Mary Morstan (Amanda Abbington)", imagename: "one"),
                       
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func addPerson(_ sender: Any) {
        arraySerials.append(Serial(names: "Sherlock Holmes", season: "new season Soon", discriptions: "New episodes of Detective Sherlock coming soon. Don't miss the thrilling adventure of Sherlock and Watsan.", imagename: "new"))
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return  arraySerials.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...

        let label =  cell.viewWithTag(1000) as! UILabel
        label.text = arraySerials[indexPath.row].names

        let labelSeason =  cell.viewWithTag(1001) as! UILabel
        labelSeason.text = arraySerials[indexPath.row].season
        
        
        let imageview = cell.viewWithTag(1002) as! UIImageView
        imageview.image = UIImage(named: arraySerials[indexPath.row].imagename)
        
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(identifier: "detailViewController") as! ViewController
        
        detailVc.serial = arraySerials[indexPath.row]
        
        navigationController?.show(detailVc, sender: self)
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            
            arraySerials.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }


    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
