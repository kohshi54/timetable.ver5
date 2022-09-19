//
//  UniversalData.swift
//  timetable4icu-git
//
//  Created by Kohshi Yamaguchi on 2022/09/19.
//

import SwiftUI
import RealmSwift

let cellNameWithSat = [["1/M", "2/M", "3/M", "L/M", "4/M", "5/M", "6/M", "7/M", "8/M"], ["1/TU", "2/TU", "3/TU", "L/TU", "4/TU", "5/TU", "6/TU", "7/TU", "8/TU"], ["1/W", "2/W", "3/W", "L/W", "4/W", "5/W", "6/W", "7/W", "8/W"], ["1/TH", "2/TH", "3/TH", "L/TH", "4/TH", "5/TH", "6/TH", "7/TH", "8/TH"], ["1/F", "2/F", "3/F", "L/F", "4/F", "5/F", "6/F", "7/F", "8/F"], ["1/SA", "2/SA", "3/SA", "L/SA", "4/SA", "5/SA", "6/SA", "7/SA", "8/SA"]]
let cellNameForRealm = [["M1", "M2", "M3", "ML", "M4", "M5", "M6", "M7", "M8"], ["TU1", "TU2", "TU3", "TUL", "TU4", "TU5", "TU6", "TU7", "TU8"], ["W1", "W2", "W3", "WL", "W4", "W5", "W6", "W7", "W8"], ["TH1", "TH2", "TH3", "THL", "TH4", "TH5", "TH6", "TH7", "TH8"], ["F1", "F2", "F3", "FL", "F4", "F5", "F6", "F7", "F8"], ["SA1", "SA2", "SA3", "SAL", "SA4", "SA5", "SA6", "SA7", "SA8"]]

let termArray = ["Spring", "Autumn", "Winter"]

let yearArray = ["2022", "2021", "2020"]

let colorArray = ["white", "red", "green", "baby pink", "light blue", "light green", "blueberry", "lavendar", "lilac", "yellow", "orange", "pink"]

// 変数ではcontentViewModelにアクセスできないためこれを使う。
class myModel: ObservableObject {
    
    @Published var array: [[String]] = [["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""]]
    @Published var arrayInstructor: [[String]] = [["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""]]
    @Published var arraySchedule: [[String]] = [["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""]]
    @Published var arrayColor: [[String]] = [["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""]]
    @Published var arrayRoom: [[String]] = [["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""]]
    @Published var arrayMode: [[String]] = [["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""]]
    @Published var arrayCourseno: [[String]] = [["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""], ["", "", "", "", "", "", "", "", ""]]
    
    @Published var arrayTask: [(taskTitle: String, dueDate: Date, createdAt: Date, courseTitle: String, id: String)] = []
    
    @Published var arrayTask2: [Task] = []
    
}