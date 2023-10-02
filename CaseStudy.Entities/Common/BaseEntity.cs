using Dapper.Contrib.Extensions;
using System.ComponentModel.DataAnnotations;

namespace CaseStudy.Entities.Common;

public abstract class BaseEntity
{
    [Dapper.Contrib.Extensions.Key]

    public int Id { get; set; }

}