//
//  ResultsViewController.swift
//  Rock Paper Scissors
//
//  Created by Huber, Jakob - Student on 1/13/23.
//

import UIKit

class ResultsViewController: UITableViewController {

    var games : [Game] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.register(UINib(nibName: "ResultsCell", bundle: nil), forCellReuseIdentifier: "ResultsCell")
        assignbackground()
        
        
        let _ = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: false)

    }
    
    // MARK: - Table view data source
    func assignbackground()
    {
        let background = UIImage(named: "background")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        imageView.center = view.center
        tableView.backgroundView = imageView
  
    }
  var resultCase = ""
   
 
    
    
    @objc func fireTimer() {
        let alertMessage = games[0].result
        if alertMessage == "win" {
             resultCase = "You Won, Congrats you beat a random number .... Loser"
        } else if alertMessage == "tie" {
            resultCase = "You Tied, Kinda Mid"
        }
        else { resultCase = "You Lost, I dont need to say much .... Loser "
            
        }
        let dialogMessage = UIAlertController(title: "Attention", message: resultCase, preferredStyle: .alert)
        print("Timer fired!")
      
        let ok = UIAlertAction(title: "Ok", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
            self.navigationController?.popViewController(animated: true)

         })
        let continueview = UIAlertAction(title: "View", style: .default, handler: { (action) -> Void in
            print("continue button tapped")
         })
     
        dialogMessage.addAction(ok)

        dialogMessage.addAction(continueview)
        
        self.present(dialogMessage, animated: true, completion: nil)
        
    }

  
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        250
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultsCell", for: indexPath) as! ResultsCell

        let game = games[indexPath.row]
        cell.configure(game: game) 
//         Configure the cell...

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
