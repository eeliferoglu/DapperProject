
using CaseStudy.Business.Services.Category;

namespace CaseStudy.WebAPI.Controllers;


[Route("api/[controller]")]
[ApiController]
public class CategoryContoller : ControllerBase
{
    private readonly ICategoryService _categoryService;

    public CategoryContoller(ICategoryService categoryService)
    {
        _categoryService = categoryService;
    }

    [HttpGet]
    public IActionResult GetAll()
    {
        var result = _categoryService.GetAll();
        return Ok(result);
    }
    [HttpGet("{id}")]
    public IActionResult GetById(int id)
    {
        var result = _categoryService.GetById(id);

        if (result != null)
        {
            return Ok(result);
        }

        return NotFound();
    }

    [HttpPost]
    public IActionResult CreateCategory(CategoryRequest categoryRequest)
    {
        var result = _categoryService.Create(categoryRequest);

        if (result)
        {
            return Ok("Category added successfully");
        }

        return BadRequest("Failed to add category");
    }

    [HttpPut("{id}")]
    public IActionResult UpdateCategory(int id, CategoryRequest categoryRequest)
    {
        var result = _categoryService.Update(id, categoryRequest);

        if (result)
        {
            return Ok("Category updated successfully");
        }

        return BadRequest("Failed to update category");
    }

    [HttpDelete("{id}")]
    public IActionResult DeleteCategory(int id)
    {
        var result = _categoryService.Delete(id);

        if (result)
        {
            return Ok("Category deleted successfully");
        }

        return BadRequest("Failed to delete category");
    }
}
