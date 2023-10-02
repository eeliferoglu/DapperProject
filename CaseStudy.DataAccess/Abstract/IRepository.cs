namespace CaseStudy.DataAccess.Abstract;

public interface IRepository<T> where T : class
{
       
    T GetById(int id);
    IEnumerable<T> GetAll();
    bool Create(T entity);
    bool Update(T entity);
    bool Delete(T entity);
}