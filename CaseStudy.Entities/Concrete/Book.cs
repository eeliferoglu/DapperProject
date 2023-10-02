namespace CaseStudy.Entities.Concrete;

[Table("Book")]
public class Book : BaseEntity
{
    public string Name { get; set; }
    public int CategoryId { get; set; }
    public int Stock { get; set; }
    public decimal Price { get; set; }
    public string Author { get; set; }
    public string Description { get; set; }
  

} 