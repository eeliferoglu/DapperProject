namespace CaseStudy.DataAccess.Concrete;

public class BookRepository : Repository<Book>, IBookRepository
{
    public BookRepository(IConfiguration configuration) : base(configuration)
    {

    }
}