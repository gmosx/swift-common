import Foundation

// TODO: Generator/Stream of scheduled days.
// TODO: calendar.date(matching: datePattern, after: now)

/// A pattern that matches dates.
public protocol DatePattern {
    func isMatching(_ date: Date, calendar: Calendar) -> Bool
    func nextDate(after date: Date, calendar: Calendar) -> Date?
//    func nextDateComponents(after dateComponents: DateComponents) -> DateComponents
}
