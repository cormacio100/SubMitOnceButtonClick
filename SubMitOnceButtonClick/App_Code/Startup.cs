using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SubMitOnceButtonClick.Startup))]
namespace SubMitOnceButtonClick
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
