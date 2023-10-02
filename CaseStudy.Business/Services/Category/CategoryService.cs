using CaseStudy.DataAccess.Abstract;

namespace CaseStudy.Business.Services.Category;

public class CategoryService : ICategoryService
{
    private readonly ICategoryRepository _categoryRepository;

    public CategoryService(ICategoryRepository categoryRepository)
    {
        _categoryRepository = categoryRepository;
    }

    public List<CategoryView> GetAll()
    {
        var entities = _categoryRepository.GetAll();
        return entities.Select(x => new CategoryView
        {
            //Id = x.Id,
            Name = x.Name
        }).ToList();
    }
    public CategoryView GetById(int id)
        {
            var entity = _categoryRepository.GetById(id);

            if (entity != null)
            {
                return new CategoryView
                {
                    //Id = entity.Id,
                    Name = entity.Name
                };
            }

            return null;
        }

    public bool Create(CategoryView categoryView)
    {
       
            var newCategory = new Entities.Concrete.Category();

            {
                newCategory.Name = categoryView.Name;
            };

            return _categoryRepository.Create(newCategory);
        
        
    }

    public bool Update(int id, CategoryView categoryView)
        {
           
                var existingCategory = _categoryRepository.GetById(id);

                if (existingCategory != null)
                {

                    existingCategory.Name = categoryView.Name;
                    

                    return _categoryRepository.Update(existingCategory);
                }

                return false;
            
        }

        public bool Delete(int id)
        {
            
                var category = _categoryRepository.GetById(id);

                if (category != null)
                {
                    return _categoryRepository.Delete(category);
                }

                return false;
        }
            
 }

