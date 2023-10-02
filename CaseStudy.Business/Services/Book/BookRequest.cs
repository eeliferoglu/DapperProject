using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CaseStudy.Business.Services.Book
{
    public class BookRequest
    {
        public string Name { get; set; }
        public int CategoryId { get; set; }
        public int Stock { get; set; }
        public decimal Price { get; set; }
        public string Author { get; set; }
        public string Description { get; set; }
    }
}
