//
//  Tasks.swift
//  Task Manager
//
//  Created by Miranda Jessie on 9/19/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import Foundation

class Tasks {
    let taskManager = TaskManager()
    var shouldQuit = false //When this is true, we should quit running the taskManager.
    func  go() { //This function will handle making the tasks right. It will display the task and take user input until the user wishes to quit the application.
        while !shouldQuit {
            printTaskManagerMenu()
            var input = getInput()
            while !validateInput(input) {
                //display the menu again
                printTaskManagerMenu()
                //Get new input
                input = getInput()
            }
            handleInput(input)
        }
    }
    func validateInput(_ input: String) -> Bool{
        let validMenuOptions = Array(1...8)
        guard let number = Int(input) else {
            return false
        }
        return validMenuOptions.contains(number)
    }
    func printTaskManagerMenu() {
        //This should contain a print statement that prints out a formatted list of options.
        print("\nSelect an option that you would like to do.")
        print("""
                1. Create a new task
                2. List all tasks
                3. List all Uncompleted Tasks
                4. List all Completed Tasks
                5. Mark a task Complete
                6. Mark a completed task incomplete
                7. delete a task
                8. Exit the program

                Please enter a number between 1 and 8
                """)
    }
    //Make a function called handleInput that takes our user input as a parameter and depending on what they enter print out what we would do.
    func handleInput(_ input: String) {
        switch input {
        case "1":
            //This will call create a new task function
            taskManager.createANewTask()
        case "2":
            //This will call list all tasks
            taskManager.lsitAllTasks()
        case "3":
            //This will call list all Uncompleted tasks
            taskManager.listUncompletedTasks()
        case "4":
            //This will call the list all completed tasks function
            taskManager.listCompletedTasks()
        case "5":
            //This will call the mark task completed function
            taskManager.markTaskComplete()
        case "6":
            //This will call the mark a completed task incomplete function
            taskManager.markCompletedTaskIncomplete()
        case "7":
            //This will call the delete task function
            taskManager.deleteTask()
        case "8":
            //This will call the quit function
            quit()
        default:
            break
        }
    }
    func getInput() -> String {
        var userInput = readLine()
        while userInput == nil || userInput == "" {
            print("Please give a valid input")
            userInput = readLine()
        }
        return userInput!
    }
    func quit() { //This function will be called when the user is ready to quit the application.
        //Since the user is ready to quit, set shouldQuit = true
        shouldQuit = true
        //Show the user a message
        print("\nThank you for using the application.")
        
    }
}
