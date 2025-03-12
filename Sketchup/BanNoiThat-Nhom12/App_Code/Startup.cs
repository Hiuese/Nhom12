using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BanNoiThat_Nhom12.Startup))]
namespace BanNoiThat_Nhom12
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
