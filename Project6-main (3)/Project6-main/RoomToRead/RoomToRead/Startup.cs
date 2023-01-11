using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RoomToRead.Startup))]
namespace RoomToRead
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
