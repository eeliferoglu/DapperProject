
namespace CaseStudy.Business.Services.Book
{
    public class BookView
    {
        public int Id { get; set; }
        public string Name {  get; set; }
        public int CategoryId { get; set; }
        public int Stock { get; set; }
        public decimal Price { get; set; }
        public string Author { get; set; }
        public string Description { get; set; }
    }
}
