namespace CP.Entities.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web;

    [Table("Slider")]
    public partial class Slider : BaseEntity<int>
    {
        [StringLength(500)]
        [Display(Name = "Resim")]
        public string Image { get; set; }

        [StringLength(25)]
        [Display(Name = "Ba�l�k")]
        [Required(ErrorMessage = "Ba�l�k bo� b�rak�lamaz")]
        public string Title { get; set; }


        [Display(Name = "A��klama")]
        [StringLength(75)]
        [Required(ErrorMessage = "A��klama bo� b�rak�lamaz")]
        public string Description { get; set; }

        [NotMapped]
        public HttpPostedFileBase Images { get; set; }
    }
}
