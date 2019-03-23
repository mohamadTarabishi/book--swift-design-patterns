import Foundation

/**
    An app-specific class.
 
    Architecturally, this would have role similar to that of a `UITableViewController`
 */
class Reminders {
    var title: String
    lazy var calendar = Calendar()
    
    init(title: String = "Year: 2020") {
        self.title = title

        calendar.delegate = RemindersCalendarDelegate()
        calendar.dataSource = RemindersCalendarDataSource()
    }
}


extension Reminders: ReminderPresenting {
    func yearChanged(to year: Int) {
        title = "Year: \(year)"
    }
}
