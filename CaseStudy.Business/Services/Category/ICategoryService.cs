namespace CaseStudy.Business.Services.Category;

public interface ICategoryService
{
    List<CategoryView> GetAll();
    CategoryView GetById(int id);
    bool Create(CategoryRequest categoryRequest);
    bool Update(int id, CategoryRequest categoryRequest);
    bool Delete(int id);
}