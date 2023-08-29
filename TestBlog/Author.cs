namespace TestBlog
{
    public class Author
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string? ProfileText { get; set; }

        public Author(int id, string name, string? profileText)
        {
            Id = id;
            Name = name;
            ProfileText = profileText;
        }
    }
}