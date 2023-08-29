namespace TestBlog
{
    public class BlogPost
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public DateTime CreatedDate { get; set; }
        public int[]? TagIds { get; set; }
        public int AuthorId { get; set; }
        public BlogPost(string title, string content)
        {
            Title = title;
            Content = content;
        }

    }
}