namespace CaseStudy.DataAccess.Concrete;

public class CategoryRepository : Repository<Category>, ICategoryRepository
{
    public CategoryRepository(IConfiguration configuration) : base(configuration)
    {
    }
}