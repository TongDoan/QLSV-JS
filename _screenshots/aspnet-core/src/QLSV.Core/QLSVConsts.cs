using QLSV.Debugging;

namespace QLSV
{
    public class QLSVConsts
    {
        public const string LocalizationSourceName = "QLSV";

        public const string ConnectionStringName = "Default";

        public const bool MultiTenancyEnabled = true;


        /// <summary>
        /// Default pass phrase for SimpleStringCipher decrypt/encrypt operations
        /// </summary>
        public static readonly string DefaultPassPhrase =
            DebugHelper.IsDebug ? "gsKxGZ012HLL3MI5" : "cbbb769f02de4a0280369447c8e1980e";
    }
}
