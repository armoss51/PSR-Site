using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PSR_Site
{
    public class UserRecord
    {
        public int MemberID { get; set; }
        public string MemberName { get; set; }
        public string MemberEmail { get; set; }
        public int MemberRegion { get; set; }
        public int MemberCar { get; set; }
        public int MemberSecID { get; set; }
    }
}