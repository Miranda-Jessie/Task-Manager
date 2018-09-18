//
//  Task Manager Options.swift
//  Task Manager
//
//  Created by Miranda Jessie on 9/17/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import Foundation

class tasksManager {
    var newTasksArray = [String]()
    
    func addNewTask() {
        //Have the user enter a new task
        print("Enter a task that you want to add.")
        //Get input from user and store in a variable
        var newTask = readLine()
        //Make sure the input isn't nil or empty
        while newTask == nil || newTask == "" {
            print("This is an invalid option.")
            newTask = readLine()
        }
        //Instatantiate a new task with the task from user input
        let newTaskManager = Tasks(task: newTask!)
        //Add new task to var newTasks
    }
    func showAllTasks() {
        
    }
    func showIncompleteTasks() {
        
    }
    func showCompleterTasks() {
        
    }
    func markTaskComplete() {
        
    }
    func markTaskIncomplete() {
        
    }
    func deleteTask() {
        //This will show the list of the tasks
        for index in 1..<newTasksArray.count {
            print("\n\(index). \(newTasksArray[index])")
        }
        print("Enter the number of the task you would like to delete.")
        //This will have the user input a number
        var userInput = Int(readLine()!)
        let validTasks = Array(1..<newTasksArray.count)
        //This will show up if the user does not put in a valid input
        while userInput == nil || !validTasks.contains(userInput!) {
            print("Invalid input. Enter a usable index.")
            //It will then ask them to re-enter an input 
            userInput = Int(readLine()!)
        }
        
    }
}
