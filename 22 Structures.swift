struct post {
    var title: String
    var body: String
    var likes: Int
    var views: Int
    
    func isPopuler() -> Bool {
        return views > 50
    }
    mutating func addLikes() { //mutating for modification the value
        likes += 1
    }
}
var firstPost = post(title: "Swift Course", body: "Learn How to Programming", likes: 10, views: 20)
firstPost.title
firstPost.isPopuler()
firstPost.addLikes()
print(firstPost)
var secondPost = firstPost
firstPost.likes = 30
print(firstPost)
print(secondPost)
