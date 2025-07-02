import SwiftUI

struct ArticleDetailView: View {
    let title: String
    let content: String
    let source: String
    let publishedDate: String
    let url: String
    let imageUrl: String?

    init(article: Article) {
        self.title = article.title
        self.content = article.content
        self.source = article.source
        self.publishedDate = article.publishedDate
        self.url = article.url
        self.imageUrl = article.imageUrl
    }

    init(featuredArticle: FeaturedArticle) {
        self.title = featuredArticle.title
        self.content = featuredArticle.content
        self.source = featuredArticle.source
        self.publishedDate = featuredArticle.publishedDate
        self.url = featuredArticle.url
        self.imageUrl = featuredArticle.imageUrl
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                if let imageUrl, let img = URL(string: imageUrl) {
                    AsyncImage(url: img) { image in
                        image.resizable().aspectRatio(contentMode: .fill)
                    } placeholder: {
                        Color.gray.opacity(0.3)
                    }
                    .frame(height: 200)
                    .clipped()
                }

                Text(title)
                    .font(.title2)
                    .bold()

                HStack(spacing: 4) {
                    Text(source)
                    Text("•")
                    Text(publishedDate)
                }
                .font(.caption)
                .foregroundColor(.secondary)

                Text(content)
                    .font(.body)

                Link("Read full story", destination: URL(string: url)!)
                    .font(.footnote)
                    .padding(.top)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Article")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ArticleDetailView(article: Article(
        id: 0,
        title: "Example",
        summary: "summary",
        content: "content",
        source: "source",
        publishedDate: "1h",
        url: "https://example.com",
        imageUrl: nil,
        isLive: false,
        isTrending: false
    ))
}
