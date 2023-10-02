namespace CaseStudy.Business.Services.Category;

public interface ICategoryService
{
    List<CategoryView> GetAll();
    CategoryView GetById(int id);
    bool Create(CategoryView categoryView);
    bool Update(int id, CategoryView categoryView);
    bool Delete(int id);
}