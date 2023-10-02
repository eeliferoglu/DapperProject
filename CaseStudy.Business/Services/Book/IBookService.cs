
namespace CaseStudy.Business.Services.Book
{
    public interface IBookService
    {
        List<BookView> GetAll();
        BookView GetById(int id);
        bool Create(BookRequest bookRequest );
        bool Update(int id, BookRequest bookRequest);
        bool Delete(int id);

    }
}
