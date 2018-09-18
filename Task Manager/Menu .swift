//
//  Menu .swift
//  Task Manager
//
//  Created by Miranda Jessie on 9/17/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import Foundation
class Manager {
    let taskManager = tasksManager()
    var quit = false //When this becomes true the application should quit
    func go(){
        while !quit {
            printMenu()
            var input = getInput()
            while valiadateInput(input) == false {
                printMenu()
                input = getInput()
            }
            handleInput(input)
        }
    }
}

func printMenu() {
    //This will contain actions the user will be able to do
    print("Select a option that you would like to do.")
    print("""
        1. Create a New Task
        2. Show list of all tasks
        3. Show list of Incomplete Tasks
        4. Show list of completeted Tasks
        5. Mark a task complete
        6. Mark a task incomplete
        7. Delete a task
        8. Quit the program
        Enter the number you want to do.
        """)
}
//This function will see if the userInput is valid and if it's not it will ask them to re-enter a valid option
func getInput() -> String {
    var userInput = readLine()
    while userInput == nil {
        print("Enter a valid input")
        userInput = readLine()
    }
    return userInput!
}
//This function will make sure that the userinput is not above the number 8
func valiadateInput(_ input: String) -> Bool {
    let validMenuOptions = Array(1...8)
    guard let number = Int(input) else {
        return false
    }
    return validMenuOptions.contains(number)
}

//This is a function that will handle the userInput amd what they choose to do it should print out
func handleInput(_ input: String) {
    switch input {
    case "1": //call the create a new task command
        print("")
    case "2": //call the show list of all task command
        print("")
    case "3": //call the show incomplete tasks command
        print("")
    case "4": //call the show completed tasks command
        print("")
    case "5": //call the mark a task complete command
        print("")
    case "6": //call the mark a task incomplete function
        print("")
    case "7": //call the delete task function
        print("")
    case "8": //call the quit function
        print("")
    default:
        break
    }
}

