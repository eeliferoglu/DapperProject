
using CaseStudy.DataAccess.Abstract;

namespace CaseStudy.Business.Services.Book
{
    public class BookService : IBookService
    {
        public readonly IBookRepository _bookRepository;

        public BookService(IBookRepository bookRepository)
        {
            _bookRepository = bookRepository;
        }
        public List<BookView> GetAll()
        {
            var entities = _bookRepository.GetAll();
            return entities.Select(x => new BookView
            {
                Id = x.Id,
                Name = x.Name,
                CategoryId=x.CategoryId,  
                Stock=x.Stock,  
                Price=x.Price,
                Author=x.Author,    
                Description=x.Description,
            }).ToList();
        }
        public BookView GetById(int id)
        {
            var entity = _bookRepository.GetById(id);

            if (entity != null)
            {
                return new BookView
                {
                    Id = entity.Id,
                    Name = entity.Name,
                    CategoryId = entity.CategoryId,
                    Stock = entity.Stock,
                    Price = entity.Price,
                    Author = entity.Author,
                    Description = entity.Description,
                };
            }

            return null;
        }
        public bool Create(BookRequest bookRequest)
        {
          
                var newBook = new Entities.Concrete.Book
                {
                    Name = bookRequest.Name,
                    CategoryId = bookRequest.CategoryId,
                    Stock = bookRequest.Stock,
                    Price = bookRequest.Price,
                    Author = bookRequest.Author,
                    Description = bookRequest.Description
                };

                return _bookRepository.Create(newBook);
          
        }
        public bool Update(int id, BookRequest bookRequest)
        {
              var existingBook = _bookRepository.GetById(id);

                if (existingBook != null)
                {

                    existingBook.Name = bookRequest.Name;
                    existingBook.CategoryId = bookRequest.CategoryId;
                    existingBook.Stock = bookRequest.Stock;
                    existingBook.Price = bookRequest.Price;
                    existingBook.Author = bookRequest.Author;
                    existingBook.Description = bookRequest.Description;

                    return _bookRepository.Update(existingBook);
                }

                return false;
           
        }

        public bool Delete(int id)
        {
            
                var book = _bookRepository.GetById(id);

                if (book != null)
                {
                    return _bookRepository.Delete(book);
                }

                return false;
           
        }

    }
}
