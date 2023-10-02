namespace CaseStudy.DataAccess.Concrete;

public class Repository<T> : IRepository<T> where T : class
{
    private readonly IConfiguration _configuration;
    private IDbConnection _connection;

    public Repository(IConfiguration configuration)
    {
        _configuration = configuration;
        _connection = new SqlConnection(_configuration.GetConnectionString("Mssql"));
    }

    public bool Create(T entity)
    {

        var rowsEffected = _connection.Insert(entity);
        return rowsEffected > 0;
    }

    public bool Delete(T entity)
    {
        return _connection.Delete(entity);
    }

    public IEnumerable<T> GetAll()
    {
        return _connection.GetAll<T>();
    }

    public T GetById(int id)
    {
        return _connection.Get<T>(id);
    }

    public bool Update(T entity)
    {
        return _connection.Update(entity);
    }
}