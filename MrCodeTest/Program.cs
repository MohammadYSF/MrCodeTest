using Microsoft.EntityFrameworkCore;
using MrCodeTest.Models;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
string connectionString = builder.Configuration.GetConnectionString("MrCodeTestDbConnection")
    ?? throw new InvalidOperationException("ConnectionString  \" MrCodeTestDbConnection \" not found !");
builder.Services.AddDbContext<MrCodeDataContext>(opt => opt.UseSqlServer(connectionString)); 
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
