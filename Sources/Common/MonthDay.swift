import Foundation

public struct MonthDay {
    public let month: Int
    public let day: Int
    
    public init(month: Int, day: Int) {
        self.month = month
        self.day = day
    }

    public init(_ month: Int, _ day: Int) {
        self.init(month: month, day: day)
    }
    
    public init(from date: Date, calendar: Calendar = Calendar.current) {
        let components = calendar.dateComponents(
            [.month, .day],
            from: date
        )
        
        self.init(components.month!, components.day!)
    }
    
    public init?(from dateComponent: DateComponents) {
        if let month = dateComponent.month, let day = dateComponent.day {
            self = MonthDay(month: month, day: day)
        } else {
            return nil
        }
    }
    
    /// Constructs an instance from a "\(month) \(day)" string expression
    public init(from expression: String) {
        let parts = expression.split(separator: " ").flatMap { Int($0) }
        self.init(month: parts[0], day: parts[1])
    }
    
    public func dateComponents(forYear year: Int) -> DateComponents {
        return DateComponents(year: year, month: month, day: day)
    }
}

extension MonthDay: Equatable {
    public static func == (lhs: MonthDay, rhs: MonthDay) -> Bool {
        return lhs.month == rhs.month && lhs.day == rhs.day
    }
}

extension MonthDay: Comparable {
    public static func < (lhs: MonthDay, rhs: MonthDay) -> Bool {
        if lhs.month != rhs.month {
            return lhs.month < rhs.month
        } else {
            return lhs.day < rhs.day
        }
    }
}
