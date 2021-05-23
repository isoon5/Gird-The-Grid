using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace GirdTheGrid2.Shared
{
    public class GivenANameStation
    {
        private readonly SearchPowerStation _searchPowerStation;
        private readonly Filters _sut;

        public GivenANameStation()
        {
            _searchPowerStation = new SearchPowerStation("name");
            _sut = new Filters(_searchPowerStation);
        }


        public class WhenGettingAStation : GivenANameStation
        {

            [Fact]
            public ShouldGetValidStation()
            {
                var expectedValue = true;
                var actualValue = _sut.Post(_searchPowerStation);

                Assert.Equal(expectedValue, actualValue);
            }
        }

    }
}
