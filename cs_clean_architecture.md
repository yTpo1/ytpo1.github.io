# Clean Architecture example in C#

**Core (Domain) Layer**

Entities/Product.cs
```cs
namespace MyApp.Core.Entities
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }

        public decimal GetDiscountedPrice(decimal discountedPercentage)
        {
            return Price - (Price * discountedPercentage / 100);
        }
    }
}
```

Interfaces/IProductRepository.cs
```cs
namespace MyApp.Core.Interfaces
{
    public interface IProductRepository
    {
        Product GetProductById(int id);
        void AddProduct(Product product);
        void UpdateProduct(Product product);
        IEnumerable<Product> GetAllProducts();
    }
}
```

**Application Layer**

UseCases/ProductService.cs
```cs
using MyApp.Core.Entities;
using MyApp.Core.Interfaces;
using System.Collections.Generic;

namespace MyApp.Application.UseCases
{
    public class ProductService
    {
        private readonly IProductRepository _productRepository;

        public ProductService(IProductRepository productRepository)
        {
            _productRepository = productRepository;    
        }

        public Product GetProduct(int id)
        {
            return _productRepository.GetProductById(id);
        }

        public void CreateProduct(Product product)
        {
            _productRepository.AddProduct(product);
        }

        public void UpdateProduct(Product product)
        {
            _productRepository.UpdateProduct(product);
        }

        public void DeleteProduct(int id)
        {
            _productRepository.DeleteProduct(id);
        }

        public IEnumerable<Product> GetAllProducts()
        {
            return _productRepository.GetAllProducts();
        }
    }
}
```

**Infrastructure Layer**

Data/ApplicationDbContext.cs:
```cs
using Microsoft.EntityFrameworkCore;
using MyApp.Core.Entities;

namespace MyApp.Infrastructure.Data
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Product> Products { get; set; }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }
    }
}
```

Repositories/ProductRepository.cs
```cs
using MyApp.Core.Entities;
using MyApp.Core.Interfaces;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace MyApp.Infrastructure.Repositories
{
    public class ProductRepository : IProductRepository
    {
        private readonly ApplicationDbContext _context;

        public ProductRepository(ApplicationDbContext context)
        {
            _context = context;
        }

        public Product GetProductById(int id)
        {
            return _context.Products.Find(id);
        }

        public void AddProduct(Product product)
        {
            _context.Products.Add(product);
            _context.SaveChanges();
        }

        public void UpdateProduct(Product product)
        {
            _context.Products.Update(product);
            _context.SaveChanges();
        }

        public void DeleteProduct(int id)
        {
            var product = _context.Products.Find(id);
            if (product != null)
            {
                _context.Products.Remove(product);
                _context.SaveChanges();
            }
        }
        
        public IEnumerable<Product> GetAllProducts()
        {
            return _context.Products.ToList();
        }
    }
}
```

**Presentation Layer**

Controller/ProductController.cs:
```cs
using Microsoft.AspNetCore.Mvc;
using MyApp.Application.UseCases;
using MyApp.Core.Entities;

namespace MyApp.Presentation.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductController : ControllerBase
    {
        private readonly ProductService _productService;

        public ProductController(ProductService productService){
            _productService = productService;
        }

        [HttpGet("{id}")]
        public IActionResult GetProduct(int id)
        {
            var product = _productService.GetProduct(id);
            if (product == null)
            {
                return NotFound();
            }
            return Ok();
        }

        [HttpPost]
        public IActionResult CreateProduct([FromBody]Product product)
        {
            _productService.CreateProduct(product);
            return CreatedAtAction(nameof(GetProduct), new { id = product.Id }, product);
        }
    }
}
```