
#include <string>
#include "DataStreamClient.h"

//#include "Client.h"
/*#define CLASS_DECLSPEC    __declspec(dllimport)
namespace ViconDataStreamSDK
{
namespace CPP
{
  class Output_GetVersion
  {
  public:
    unsigned int Major;
    unsigned int Minor;
    unsigned int Point;
  };
  class CLASS_DECLSPEC Client
  {
  public:
    Client();
    ~Client();

    virtual Output_GetVersion  GetVersion() const;
  };
}
}*/

using namespace ViconDataStreamSDK;
using namespace CPP;
void main(void)
{
	printf("Hello\r\n");
	
    Client *myclient = new Client();
    
    //get, return
    Output_GetVersion out = myclient->GetVersion();
    printf("%d %d %d\r\n", out.Major, out.Minor, out.Point);

}
//public: virtual class ViconDataStreamSDK::CPP::Output_GetVersion __thiscall ViconDataStreamSDK::CPP::Client::GetVersion(void)const 
//public: class ViconDataStreamSDK::CPP::Output_GetVersion __thiscall ViconDataStreamSDK::CPP::Client::GetVersion(void)const 