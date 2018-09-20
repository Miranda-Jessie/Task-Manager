//
//  TaskDataClass.swift
//  Task Manager
//
//  Created by Miranda Jessie on 9/19/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import Foundation

class TaskData {
    var title: String
    let detailsOfTask: String
    var completionStatus: Bool = false
    var completeBy: Date?
    
    init(title: String, detailsOfTask: String){
        self.title = title
        self.detailsOfTask = detailsOfTask
    }
}
