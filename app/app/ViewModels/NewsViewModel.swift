import Foundation
import Combine

class NewsViewModel: ObservableObject {
    @Published var selectedCategory: Category = .top

    let breakingNews: String
    let featuredArticle: FeaturedArticle
    let articlesByCategory: [Category: [Article]]

    init() {
        breakingNews = "Supreme Court to hear landmark climate change case next month"

        featuredArticle = FeaturedArticle(
            title: "Global Climate Summit Reaches Historic Agreement on Carbon Emissions",
            summary: "World leaders from 195 countries have reached a groundbreaking consensus on reducing carbon emissions by 50% over the next decade, marking the most significant climate action in international history.",
            content: "World leaders from 195 countries have reached a groundbreaking consensus on reducing carbon emissions by 50% over the next decade. This agreement marks the most significant climate action in international history and sets ambitious targets for participating nations.",
            source: "The Times",
            publishedDate: "2 hours ago",
            url: "https://example.com/global-climate-summit",
            imageUrl: "https://images.unsplash.com/photo-1569163139394-de4e4f43e4e3?w=800&h=400&fit=crop",
            isLive: true
        )

        articlesByCategory = [
            .top: [
                Article(
                    id: 1,
                    title: "Tech Giants Face New Regulatory Challenges in European Markets",
                    summary: "New legislation targeting major technology companies could reshape the digital landscape across Europe, with potential impacts on global operations.",
                    content: "New legislation targeting major technology companies could reshape the digital landscape across Europe, with potential impacts on global operations. Industry leaders are preparing for sweeping regulations that aim to increase transparency and user privacy.",
                    source: "Business Desk",
                    publishedDate: "4 hours ago",
                    url: "https://example.com/tech-giants-europe",
                    imageUrl: "https://images.unsplash.com/photo-1560472355-536de3962603?w=400&h=300&fit=crop",
                    isLive: false,
                    isTrending: true
                ),
                Article(
                    id: 2,
                    title: "Breakthrough in Quantum Computing Promises Revolutionary Changes",
                    summary: "Scientists at leading research institutions have achieved a major milestone in quantum computing that could accelerate technological advancement.",
                    content: "Scientists at leading research institutions have achieved a major milestone in quantum computing that could accelerate technological advancement. Experts believe this breakthrough will pave the way for new innovations across multiple industries.",
                    source: "Science",
                    publishedDate: "6 hours ago",
                    url: "https://example.com/quantum-computing-breakthrough",
                    imageUrl: "https://images.unsplash.com/photo-1518709268805-4e9042af2176?w=400&h=300&fit=crop",
                    isLive: false,
                    isTrending: false
                ),
                Article(
                    id: 3,
                    title: "Global Food Security Initiative Launches Across 50 Countries",
                    summary: "A comprehensive program aimed at addressing food insecurity worldwide has been launched with support from international organizations and governments.",
                    content: "A comprehensive program aimed at addressing food insecurity worldwide has been launched with support from international organizations and governments. The initiative seeks to coordinate relief efforts and promote sustainable agriculture.",
                    source: "World News",
                    publishedDate: "8 hours ago",
                    url: "https://example.com/global-food-security",
                    imageUrl: "https://images.unsplash.com/photo-1574323347407-f5e1ad6d020b?w=400&h=300&fit=crop",
                    isLive: false,
                    isTrending: false
                )
            ],
            .world: [
                Article(
                    id: 4,
                    title: "European Union Announces New Trade Partnership with Southeast Asia",
                    summary: "Historic agreement aims to boost economic cooperation and sustainable development across regions.",
                    content: "Historic agreement aims to boost economic cooperation and sustainable development across regions. Officials say the partnership will lower tariffs and create new opportunities for businesses on both continents.",
                    source: "World News",
                    publishedDate: "3 hours ago",
                    url: "https://example.com/eu-trade-partnership",
                    imageUrl: "https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=400&h=300&fit=crop",
                    isLive: false,
                    isTrending: false
                ),
                Article(
                    id: 5,
                    title: "Antarctic Research Station Reports Record Ice Sheet Changes",
                    summary: "Scientists document unprecedented changes in polar ice formations with global implications.",
                    content: "Scientists document unprecedented changes in polar ice formations with global implications. The findings raise concerns about rising sea levels and the impact of climate change on fragile ecosystems.",
                    source: "Science",
                    publishedDate: "5 hours ago",
                    url: "https://example.com/antarctic-ice-changes",
                    imageUrl: nil,
                    isLive: false,
                    isTrending: false
                )
            ],
            .politics: [
                Article(
                    id: 6,
                    title: "Congressional Leaders Reach Bipartisan Infrastructure Agreement",
                    summary: "Landmark legislation promises major investments in clean energy and digital connectivity.",
                    content: "Landmark legislation promises major investments in clean energy and digital connectivity. The agreement is expected to generate thousands of jobs and modernize aging transportation networks.",
                    source: "Politics",
                    publishedDate: "2 hours ago",
                    url: "https://example.com/infrastructure-agreement",
                    imageUrl: "https://images.unsplash.com/photo-1529107386315-e1a2ed48a620?w=400&h=300&fit=crop",
                    isLive: false,
                    isTrending: false
                )
            ],
            .science: [
                Article(
                    id: 7,
                    title: "New Gene Therapy Shows Promise for Treating Rare Genetic Disorders",
                    summary: "Clinical trials demonstrate significant improvements in patient outcomes using innovative treatment approach.",
                    content: "Clinical trials demonstrate significant improvements in patient outcomes using an innovative treatment approach. Researchers are optimistic about future applications to a wide range of genetic diseases.",
                    source: "Health & Science",
                    publishedDate: "4 hours ago",
                    url: "https://example.com/gene-therapy-promise",
                    imageUrl: "https://images.unsplash.com/photo-1559757148-5c350d0d3c56?w=400&h=300&fit=crop",
                    isLive: false,
                    isTrending: false
                )
            ],
            .tech: [
                Article(
                    id: 8,
                    title: "AI Breakthrough: New Model Achieves Human-Level Performance in Complex Reasoning",
                    summary: "Latest artificial intelligence system demonstrates unprecedented capabilities in problem-solving and analysis.",
                    content: "Latest artificial intelligence system demonstrates unprecedented capabilities in problem-solving and analysis. The breakthrough could transform industries from healthcare to finance, experts say.",
                    source: "Technology",
                    publishedDate: "1 hour ago",
                    url: "https://example.com/ai-breakthrough",
                    imageUrl: "https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=400&h=300&fit=crop",
                    isLive: true,
                    isTrending: false
                )
            ]
        ]
    }
}

