//
//  AgentTableViewController.swift
//  Agents
//
//  Created by Tony Caio on 3/16/17.
//  Copyright © 2017 Sparx Worx. All rights reserved.
//

import UIKit

class AgentTableViewController: UITableViewController
{
    var agentList = [Agent]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        agentList.append(Agent(name: "Ethan Hunt", coverName: "Tom Cruise", accessLevel: 8))
        agentList.append(Agent(name: "Jim Phelps", coverName: "Jon Voight", accessLevel: 9))
        agentList.append(Agent(name: "Claire Phelps", coverName: "Emmanuelle Beart", accessLevel: 5))
        agentList.append(Agent(name: "Eugene Kittridge", coverName: "Henry Czerny", accessLevel: 10))
        agentList.append(Agent(name: "Franz Krieger", coverName: "Jean Reno", accessLevel: 4))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
               return agentList.count

    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AgentItemCell", for: indexPath)

        // Configure the cell...
        let aAgentItem = agentList[indexPath.row]
        cell.textLabel?.text = aAgentItem.name

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
