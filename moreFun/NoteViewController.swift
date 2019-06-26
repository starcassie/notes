//
//  NoteViewController.swift
//  moreFun
//
//  Created by Apple on 6/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    var note : Notes? = nil
    @IBOutlet weak var pageNote: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let realNote = note {
            title = realNote.title
            pageNote.text = realNote.note
        }
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if self.isMovingFromParent {
            if let realNote = note {
                realNote.note = pageNote.text
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
