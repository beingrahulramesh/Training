using webapi2.Context;
using webapi2.Model;
using webapi2.Repository;
using webapi2.Service;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddTransient<DataContext>();//dependency injection.(object ne run time ill bind cheyyan)  next create model 
builder.Services.AddTransient<Employee>();
builder.Services.AddTransient<EmployeeRepo>();
builder.Services.AddTransient<EmployeeService>();
builder.Services.AddTransient<SearchEmployee>();


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
