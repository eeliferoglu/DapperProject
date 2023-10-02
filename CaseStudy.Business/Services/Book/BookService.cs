using CaseStudy.Business.Services.Category;
using CaseStudy.DataAccess.Abstract;
using CaseStudy.DataAccess.Concrete;
using CaseStudy.Entities.Concrete;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Dapper.SqlMapper;

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
                //Id = x.Id,
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
                    //Id = entity.Id,
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
        public bool Create(BookView bookView)
        {
          
                var newBook = new Entities.Concrete.Book
                {
                    Name = bookView.Name,
                    CategoryId = bookView.CategoryId,
                    Stock = bookView.Stock,
                    Price = bookView.Price,
                    Author = bookView.Author,
                    Description = bookView.Description
                };

                return _bookRepository.Create(newBook);
          
        }
        public bool Update(int id, BookView bookView)
        {
              var existingBook = _bookRepository.GetById(id);

                if (existingBook != null)
                {

                    existingBook.Name = bookView.Name;
                    existingBook.CategoryId = bookView.CategoryId;
                    existingBook.Stock = bookView.Stock;
                    existingBook.Price = bookView.Price;
                    existingBook.Author = bookView.Author;
                    existingBook.Description = bookView.Description;

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
