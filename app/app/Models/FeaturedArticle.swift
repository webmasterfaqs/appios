import Foundation

struct FeaturedArticle: Identifiable {
    let id = UUID()
    let title: String
    let summary: String
    /// Full text content displayed in the detail view
    let content: String
    let source: String
    let publishedDate: String
    /// Web URL for the feature article
    let url: String
    let imageUrl: String
    let isLive: Bool
}
