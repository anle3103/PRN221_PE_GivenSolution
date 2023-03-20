using System;
using System.Collections.Generic;

namespace Q1.Models
{
    public partial class Product
    {
        public int ProductId { get; set; }
        public decimal ProductCode { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public decimal UnitPrice { get; set; }
        public double? DiscountPercent { get; set; }
        public DateTime? DateAdded { get; set; }
    }
}
