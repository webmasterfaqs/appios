import Foundation

struct Article: Identifiable {
    let id: Int
    let title: String
    let summary: String
    /// Full text content displayed inside the app
    let content: String
    let source: String
    let publishedDate: String
    /// Web URL for the original article source
    let url: String
    let imageUrl: String?
    let isLive: Bool
    let isTrending: Bool
}
