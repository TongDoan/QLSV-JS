using System.Threading.Tasks;
using QLSV.Models.TokenAuth;
using QLSV.Web.Controllers;
using Shouldly;
using Xunit;

namespace QLSV.Web.Tests.Controllers
{
    public class HomeController_Tests: QLSVWebTestBase
    {
        [Fact]
        public async Task Index_Test()
        {
            await AuthenticateAsync(null, new AuthenticateModel
            {
                UserNameOrEmailAddress = "admin",
                Password = "123qwe"
            });

            //Act
            var response = await GetResponseAsStringAsync(
                GetUrl<HomeController>(nameof(HomeController.Index))
            );

            //Assert
            response.ShouldNotBeNullOrEmpty();
        }
    }
}