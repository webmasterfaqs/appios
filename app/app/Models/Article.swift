import Foundation

struct Article: Identifiable {
    let id: Int
    let title: String
    let summary: String
    /// Full text of the article
    let content: String
    let source: String
    let publishedDate: String
    /// Web URL for the full article
    let url: String
    let imageUrl: String?
    let isLive: Bool
    let isTrending: Bool
}
