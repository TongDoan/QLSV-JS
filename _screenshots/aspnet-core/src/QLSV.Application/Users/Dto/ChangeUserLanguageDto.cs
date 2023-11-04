using System.ComponentModel.DataAnnotations;

namespace QLSV.Users.Dto
{
    public class ChangeUserLanguageDto
    {
        [Required]
        public string LanguageName { get; set; }
    }
}