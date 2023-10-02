using CaseStudy.Business.Services.Book;

namespace CaseStudy.WebAPI.Controllers;


[Route("api/[controller]")]
[ApiController]
public class BookController : Controller
    {
       private readonly IBookService _bookService;

        public BookController(IBookService bookService)
        {
            _bookService = bookService;
        }

        [HttpGet]
        public IActionResult GetAll()
        {
            var result = _bookService.GetAll();
            return Ok(result);
        }

        [HttpGet("{id}")]
        public IActionResult GetById(int id)
        {
            var result = _bookService.GetById(id);

            if (result != null)
            {
                return Ok(result);
            }

            return NotFound();
        }

        [HttpPost]
        public IActionResult CreateBook(BookRequest bookRequest)
        {
            var result = _bookService.Create(bookRequest);

            if (result)
            {
                return Ok("Book added successfully");
            }

            return BadRequest("Failed to add book");
        }

        [HttpPut("{id}")]
        public IActionResult UpdateBook(int id, BookRequest bookRequest)
        {
            var result = _bookService.Update(id, bookRequest);

            if (result)
            {
                return Ok("Book updated successfully");
            }

            return BadRequest("Failed to update book");
        }

        [HttpDelete("{id}")]
        public IActionResult DeleteBook(int id)
        {
            var result = _bookService.Delete(id);

            if (result)
            {
                return Ok("Book deleted successfully");
            }

            return BadRequest("Failed to delete book");
        }
    }

