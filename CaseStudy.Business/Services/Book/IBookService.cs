using CaseStudy.Business.Services.Category;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CaseStudy.Business.Services.Book
{
    public interface IBookService
    {
        List<BookView> GetAll();
        BookView GetById(int id);
        bool Create(BookView bookView);
        bool Update(int id, BookView bookView);
        bool Delete(int id);

    }
}
