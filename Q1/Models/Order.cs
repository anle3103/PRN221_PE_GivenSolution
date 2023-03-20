using System;
using System.Collections.Generic;

namespace Q1.Models
{
    public partial class Order
    {
        public int OrderId { get; set; }
        public int? CustomerId { get; set; }
        public DateTime OrderDate { get; set; }
        public string ShipAddress { get; set; }

        public virtual Customer Customer { get; set; }
    }
}
