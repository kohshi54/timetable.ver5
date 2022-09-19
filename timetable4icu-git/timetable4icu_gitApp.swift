//
//  timetable4icu_gitApp.swift
//  timetable4icu-git
//
//  Created by Kohshi Yamaguchi on 2022/09/19.
//

import SwiftUI
import PartialSheet

@main
struct timetable4icu_gitApp: App {
    let sheetManager: PartialSheetManager = PartialSheetManager()
    var body: some Scene {
        WindowGroup {
            HomeView().environmentObject(ContentViewModel()).environmentObject(myModel()).environmentObject(sheetManager)
        }
    }
}
