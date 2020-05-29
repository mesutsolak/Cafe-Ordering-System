namespace CP.Entities.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Contact")]
    public partial class Contact : BaseEntity<int>
    {
        [StringLength(250)]
        [Display(Name = "A��klama")]
        [Required(ErrorMessage = "A��klama girmek zorunludur.")]
        public string Description { get; set; }

        [StringLength(100)]
        [Display(Name = "Konum")]
        public string LocationGeneral { get; set; }

        [StringLength(11,ErrorMessage ="Telefon 11 rakamdan olu�mal�d�r.")]
        [Display(Name = "Telefon")]
        [Phone(ErrorMessage = "L�tfen ge�erli bir telefon giriniz")]
        [Required(ErrorMessage = "Telefon numaras� girmek zorunludur.")]
        [RegularExpression(@"^[0-9]*$", ErrorMessage = " Telefon sadece rakamlardan olu�mal�d�r")]
        public string Phone { get; set; }

        [StringLength(100)]
        [Display(Name = "Email")]
        [EmailAddress(ErrorMessage = "Ge�erli bir email adresi giriniz")]
        [Required(ErrorMessage = "Email girmek zorunludur.")]
        public string Email { get; set; }

        [StringLength(100)]
        [Display(Name = "Fax")]
        public string Fax { get; set; }

        [StringLength(100)]
        [Display(Name = "Adres")]
        [Required(ErrorMessage = "Adres girmek zorunludur.")]

        public string Address { get; set; }

        [StringLength(100)]
        public string Twitter { get; set; }

        [StringLength(100)]
        public string Facebook { get; set; }

        [StringLength(100)]
        public string Instagram { get; set; }
    }
}
