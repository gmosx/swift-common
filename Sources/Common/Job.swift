/// A job abstracts a batch computation.
public protocol Job {
    func run()
}

/// An aggregate job that runs a number of jobs sequentially.
public struct SequentialJob: Job {
    let jobs: [Job]

    public func run() {
        for job in jobs {
            job.run()
        }
    }
}
