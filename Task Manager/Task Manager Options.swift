//
//  Task Manager Options.swift
//  Task Manager
//
//  Created by Miranda Jessie on 9/17/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import Foundation

class TaskManager {
    var taskArray: [TaskData] = [TaskData(title: "Task1", detailsOfTask: "randomstuff")]
    func createANewTask() {
        //prompt user to enter a new title for the task
        print("Please enter the title of the task you would like to add.")
        //Get title input from user and store in a variable
        var newTasksTitle = readLine()
        //Check and make sure the input isn't nil or an empty string
        while newTasksTitle == nil || newTasksTitle == ""{
            print("Ivalid title. Enter a valid title.")
            newTasksTitle = readLine()
        }
        //prompt user to enter a new title for the task
        print("Please enter the detail of the task you would like to add.")
        //Get title input from user and store in a variable
        var newTasksDetail = readLine()
        //Check and make sure the input isn't nil or an empty string
        while newTasksDetail == nil || newTasksDetail == ""{
            print("Ivalid information. Enter a valid infromation.")
            newTasksDetail = readLine()
        }
        //Instatantiate a new task with the title from user input
        let newTask = TaskData(title: newTasksTitle!, detailsOfTask: newTasksDetail!)
        //Add new task object to our task array.
        taskArray.append(newTask)
    }
    func deleteTask() {
        //List all of our task titles with a number for the user to select
        for index in 1..<taskArray.count {
            print("\n\(index). \(taskArray[index].title), \(taskArray[index].detailsOfTask)")
        }
        print("\nPlease enter the number of the task you would like to remove.")
        var userInput = Int(readLine()!)
        let validTaskIndex = Array(1..<taskArray.count)
        while userInput == nil || !validTaskIndex.contains(userInput!) {
            print("Invalid input. Please enter a useable index.")
            userInput = Int(readLine()!)
        }
        taskArray.remove(at: userInput!)
        
    }
    func lsitAllTasks() {
        //This will call the function to list all tasks
        for task in taskArray {
            print("\(task.title), \(task.detailsOfTask)")
        }
    }
    func listUncompletedTasks() {
        //This will show all of the uncompleted tasks.
        for task in taskArray {
            if !task.completionStatus {
                print("\(task.title), \(task.detailsOfTask)")
                if let completeBy = task.completeBy {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "MM/dd/yyyy"
                    print("\(task.title), \(task.detailsOfTask) is due on: \(dateFormatter.string(from: completeBy))")
                }
            }
        }
    }
    func listCompletedTasks() {
        //Thus will show all the task that are completed
        for task in taskArray {
            if task.completionStatus {
                print("\(task.title), \(task.detailsOfTask)")
            }
        }
    }
    func markTaskComplete() {
        //Marking a task a complete
        for index in 0..<taskArray.count {
            if taskArray[index].completionStatus == false {
                print("\(index).\(taskArray[index].title)")
            }
        }
        print("Please enter the number of the task you have completed:")
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input. Please enter a usable number.")
            userInput = Int(readLine()!)
        }
        taskArray[userInput!].completionStatus = true
        //Remove the due date since the task is complete
        taskArray[userInput!].completeBy = nil
    }
    func markCompletedTaskIncomplete() {
        //This will have the user to mark a completed task incomplete
        for index in 0..<taskArray.count {
            if taskArray[index].completionStatus == true {
                print("\(index).\(taskArray[index].title)")
                var userInput = Int(readLine()!)
            }
        }
    }
}
