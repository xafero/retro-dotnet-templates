using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Example.Core;

namespace Example
{
    internal static class Program
    {
        private static void Main(string[] args)
        {
            var builder = Host.CreateApplicationBuilder(args);
            builder.Services.AddHostedService<Worker>();

            var host = builder.Build();
            host.Run();
        }
    }
}