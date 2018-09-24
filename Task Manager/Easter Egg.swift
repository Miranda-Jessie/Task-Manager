//
//  Easter Egg.swift
//  Task Manager
//
//  Created by Miranda Jessie on 9/20/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import Foundation

func easterEgg() {
    //If the user puts in number 9 as a string then it will print out this "hidden" function
    let userInputForEasterEgg: String = ""
    if userInputForEasterEgg == "" {
        sleep (3)
        print("\nHey! What are you doing here? Since you wanted to go snooping I guess I only have one option left to do...")
        sleep (3)
        print("\nBOOM! You are dead. I hope you are happy. Maybe next time you wont try and find something to get into. Have a good rest of your day 😉")
        sleep (3)
        
    }
    //This calls the function to be printed out.
    print(userInputForEasterEgg)
}
