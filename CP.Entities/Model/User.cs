namespace CP.Entities.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web;

    [Table("User")]
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            Comment = new HashSet<Comment>();
            Order = new HashSet<Order>();
            UserRoles = new HashSet<UserRoles>();
            IsConfirm = false;
            IsDeleted = false;
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        [StringLength(150)]
        [Display(Name = "Kullan�c� Ad�")]
        [Required(ErrorMessage = "Kullan�c� Ad� Zorunludur")]
        public string Username { get; set; }

        [StringLength(150)]
        [Display(Name = "Email")]
        [EmailAddress(ErrorMessage = "Ge�erli Email Giriniz")]
        [Required(ErrorMessage = "Email Zorunludur")]
        public string Email { get; set; }

        [StringLength(150)]
        [Display(Name = "Ad�n�z")]
        [Required(ErrorMessage = "Ad alan� Zorunludur")]
        [RegularExpression("^[a-zA-Z������������]*$", ErrorMessage = "Sadece harflerden olu�mal�d�r")]

        public string FirstName { get; set; }

        [StringLength(150)]
        [Display(Name = "Soyad�n�z")]
        [Required(ErrorMessage = "Soyad� alan� Zorunludur")]
        [RegularExpression("^[a-zA-Z������������]*$", ErrorMessage = "Sadece harflerden olu�mal�d�r")]

        public string LastName { get; set; }

        [StringLength(150)]
        [Display(Name = "Parola")]
        [Required(ErrorMessage = "Parola alan� Zorunludur")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        public bool? IsConfirm { get; set; }

        public bool? IsDeleted { get; set; }

        [StringLength(200)]
        [Display(Name = "Resim")]
        public string Image { get; set; }

        [NotMapped]
        public HttpPostedFileBase Images { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment> Comment { get; set; }
        
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Cart> Cart { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Order { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserRoles> UserRoles { get; set; }
    }
}
