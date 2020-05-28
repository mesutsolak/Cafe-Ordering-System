namespace CP.Entities.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Web;

    [Table("User")]
    public partial class User : BaseEntity<int>
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            Cart = new HashSet<Cart>();
            Comment = new HashSet<Comment>();
            MusicList = new HashSet<MusicList>();
            Rate = new HashSet<Rate>();
            UserRoles = new HashSet<UserRoles>();
            IsConfirm = false;
            IsDeleted = false;
        }

        [StringLength(150)]
        [Display(Name = "Kullan�c� Ad�")]
        [Required(ErrorMessage = "Kullan�c� ad� bo� b�rak�lamaz.")]
        public string Username { get; set; }

        [StringLength(150)]
        [Display(Name = "Email")]
        [Required(ErrorMessage = "Email bo� b�rak�lamaz.")]
        [EmailAddress(ErrorMessage = "L�tfen ge�erli email giriniz")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [StringLength(150)]
        [Display(Name = "Ad�")]
        [Required(ErrorMessage = "�sim bo� b�rak�lamaz.")]
        [RegularExpression(@"^[a-zA-Z]*$", ErrorMessage = "�sim sadece harflerden olu�mal�d�r.")]
        public string FirstName { get; set; }

        [StringLength(150)]
        [Display(Name = "Soyad�")]
        [Required(ErrorMessage = "Soyisim bo� b�rak�lamaz.")]
        [RegularExpression(@"^[a-zA-Z]*$", ErrorMessage = "Soyisim sadece harflerden olu�mal�d�r.")]
        public string LastName { get; set; }

        [StringLength(150)]
        [Display(Name = "Parola")]
        [Required(ErrorMessage = "Parola bo� b�rak�lamaz.")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        public bool? IsConfirm { get; set; }

        [StringLength(500)]
        [Display(Name = "Profil Foto�raf�")]
        public string ProfilPhoto { get; set; }

        [StringLength(500)]
        [Display(Name = "Arka Plan Foto�raf�")]
        public string BackGround { get; set; }

        [Display(Name = "Cinsiyet")]
        [Required(ErrorMessage = "Cinsiyet bo� b�rak�lamaz.")]
        public int? GenderId { get; set; }

        public bool? IsDeleted { get; set; }

        [NotMapped]
        public HttpPostedFileBase ProfilPhotos { get; set; }
        [NotMapped]
        public HttpPostedFileBase BackGroundPhotos { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Cart> Cart { get; set; }

        public virtual Gender Gender { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Comment> Comment { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MusicList> MusicList { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rate> Rate { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserRoles> UserRoles { get; set; }
    }
}
