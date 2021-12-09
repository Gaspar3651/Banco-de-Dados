using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Adivinha.Startup))]
namespace Adivinha
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
