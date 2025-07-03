import SwiftUI

struct ArticleDetailView: View {
    let title: String
    let content: String
    let source: String
    let url: String

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(title)
                    .font(.title)
                    .bold()
                Text(content)
                    .font(.body)
                if let link = URL(string: url) {
                    Link("Read more at \(source)", destination: link)
                        .font(.footnote)
                        .padding(.top, 8)
                }
            }
            .padding()
        }
        .navigationTitle(source)
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ArticleDetailView(
                title: "Example",
                content: "Article body text...",
                source: "The Times",
                url: "https://example.com"
            )
        }
    }
}
