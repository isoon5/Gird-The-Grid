using Bunit;
using Bunit.TestDoubles;
using GirdTheGrid2.Client.Pages;
using Xunit;

namespace GirdTheGrid.Test
{
    public class UnitTest : TestContext
    {
        [Fact]
        public void CannotSeeStatisticsIfUnauthorized()
        {
            using var ctx = new TestContext();
            var authContext = ctx.AddTestAuthorization();
            authContext.SetAuthorized("TEST USER", AuthorizationState.Unauthorized);

            var cut = ctx.RenderComponent<Statistics>();

            cut.MarkupMatches(@"Sorry you cannot see this");
        }

        [Fact]
        public void CanSeeStatisticsIfAuthenticatedAndAuthorized()
        {
            using var ctx = new TestContext();
            var authContext = ctx.AddTestAuthorization();
            authContext.SetAuthorized("TEST USER", AuthorizationState.Authorized);

            var cut = ctx.RenderComponent<Statistics>();
            
            cut.Find("p1").MarkupMatches(@"<p1>Insert a region name and see how many power stations there are and what is the total energy output</p1>");
        }
        [Fact]
        public void CanSeeStatistics2IfAuthenticatedAndAuthorized()
        {
            using var ctx = new TestContext();
            var authContext = ctx.AddTestAuthorization();
            authContext.SetAuthorized("TEST USER", AuthorizationState.Authorized);

            var cut = ctx.RenderComponent<Statistics>();

            cut.Find("p2").MarkupMatches(@"<p2>Insert 2 numbers and see which power stations have their energy output within that interval:</p2>");
        }
        [Fact]
        public void CanSeeStatistics3IfAuthenticatedAndAuthorized()
        {
            using var ctx = new TestContext();
            var authContext = ctx.AddTestAuthorization();
            authContext.SetAuthorized("TEST USER", AuthorizationState.Authorized);

            var cut = ctx.RenderComponent<Statistics>();

            cut.Find("p3").MarkupMatches(@"<p3>Insert a station Type and see all the powerStations that have that type </p3>");
        }
       
    }
}
