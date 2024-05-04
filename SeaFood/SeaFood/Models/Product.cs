﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SeaFood.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Web;

    public partial class Product
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Product()
        {
            this.OrderDetails = new HashSet<OrderDetail>();
            ImageProduct1 = "~/Content/TemplateFile/images/AddPro/haisan.jpg";
        }

        [NotMapped]
        public HttpPostedFileBase UploadImage { get; set; }
        [Display(Name = "Mã hải sản")]
        public int ProductID { get; set; }
        public Nullable<int> CategoryID { get; set; }
        [DisplayName("Tên hải sản")]
        public string ProductName { get; set; }
        [DisplayName("Xuất xứ")]
        public string Origin { get; set; }
        [DisplayName("Món ngon")]
        public string Dish { get; set; }
        [Display(Name = "Giá")]
        public Nullable<decimal> Price { get; set; }
        [DisplayName("Hình ảnh 1")]
        public string ImageProduct1 { get; set; }
        public string ImageProduct2 { get; set; }
        public string ImageProduct3 { get; set; }
    
        
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
        public virtual Category Category { get; set; }
    }
}