import Foundation

// TODO: Generator/Stream of scheduled days.
// TODO: calendar.date(matching: datePattern, after: now)

/// A pattern that matches dates.
public protocol DatePattern {
    func isMatching(_ date: Date, calendar: Calendar) -> Bool
    func date(after startDate: Date, calendar: Calendar) -> Date?
}
