using Microsoft.AspNetCore.Mvc;
using renn_api.features.account;

namespace renn_api.features.meet
{
    [ApiController]
    [Route("/api/meet")]
    public class MeetController(IMeetService meetService) : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            return Ok("This is the meet controller");
        }

        [HttpGet("greeting/{name}")]
        public IActionResult Greeting(string name)
        {
            return Ok(meetService.Greeting(name));
        }

        [HttpPost("meeting")]
        public IActionResult CreateMeeting()
        {
            meetService.CreateMeeting();
            return Ok("Meeting created");
        }
    }
}
