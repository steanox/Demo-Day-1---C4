//
//  ProfileViewController.swift
//  DemoDay1
//
//  Created by octavianus on 05/04/21.
//

import Foundation
import UIKit
import CoreData

class ProfileViewController: UIViewController{
    
    @IBOutlet weak var firstBox: UIView!
    @IBOutlet var boxSwipeGesture: UISwipeGestureRecognizer!
    
    var selected: String = ""
    var trainers: [Trainer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boxSwipeGesture.direction = .right //Enum
    }
    
    func getCoreDataContext() -> NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.container.viewContext
    }

    @IBAction func boxTapped(_ sender: UITapGestureRecognizer) {
        let context = getCoreDataContext()
        
        let trainer = Trainer(context: context )
        trainer.name = "Octa"
        trainer.address = "Jakarta"
        
        do{
            try context.save()
        }catch{
            print("Save failed")
        }
    }
    
    @IBAction func boxSwiped(_ sender: UISwipeGestureRecognizer) {
        let context = getCoreDataContext()
        
        let fetchRequest: NSFetchRequest<Trainer> = Trainer.fetchRequest()
        // If we want to filter the data -> fetchRequest.predicate = NSPredicate(format: <#T##String#>, <#T##args: CVarArg...##CVarArg#>)
        // If we want to sort the data ->
        
        do{
            self.trainers = try context.fetch(fetchRequest)
            print(trainers)
        }catch{
            print("Fetch failed")
        }
        
        
        
        
        
    }
    
    @IBAction func panned(_ sender: UIPanGestureRecognizer) {
    }
    
//    @IBAction func personTap(_ sender: UIButton){
//        selected = sender.titleLabel?.text ?? ""
//        performSegue(withIdentifier: "personDetail", sender: nil)
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // 1. Validate is it the right segue
//        if segue.identifier == "personDetail"{
//            let destination = segue.destination as? PersonDetailViewController
//            destination?.selectedWord = selected
//        }
//    }
    
    
}
