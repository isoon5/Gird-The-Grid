using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace GirdTheGrid2.Shared
{
    public class GivenALocation
    {
        private readonly PowerStationData _powerStationData;
        private readonly StationData _sut;

        public GivenALocation()
        {
            _powerStationData = new PowerStationData("Iasi");
            _sut = new StationData(_powerStationData);
        }


        public class WhenGettingAStation : GivenALocation
        {

            [Fact]
            public ShouldGetValidData()
            {
                var expectedValue = "Iasi";
                var actualValue = _sut.Post(_searchPowerStation);

                Assert.Equal(expectedValue, actualValue.Region);
            }
        }

    }
}
