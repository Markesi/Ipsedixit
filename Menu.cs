using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/* Class Menu
 * Codebase of Ixedixi 
 * Owner Michelangelo Marchesi
 * Creation date: 2019-11-15
 * Last change: 2019-11-16 
 * 
 */
namespace Ixedixi
{
    // The Menu class provides choices to the application user
    // according to their roles


    class Menu
    {
        private static int showMenuDecorate(string mnutitle, List<string> mnuoption)
        {
            int mnuchoice = 0;

            do
            {
                // Clear console and print the list of choices in the menu
                Console.Clear();

                Console.WriteLine("* Program IxeDixi - vocabulary trainer *");
                Console.WriteLine(" ############ {0} ############", mnutitle);
                int i = 0;
                foreach (var option in mnuoption)
                {
                    Console.WriteLine("# {0} - {1}", i + 1, option);
                    i++;
                }
                Console.WriteLine("--------------------------------------");
                // Ask for an input from user
                Console.Write("Choose option number: ");

                // Read and check the input, recover from invalid input
                int.TryParse(Console.ReadLine(), out mnuchoice);
                // Check if the input is NOT a possible choice
                if ((mnuchoice <= 0) | (mnuchoice > mnuoption.Count))
                {
                    Console.WriteLine("Choice not in the list, try again.");
                    Console.WriteLine("Press any key to continue");
                    Console.ReadKey();
                }
                else // if the input is a valid option
                {
                    return mnuchoice; // leaves showMenuDecorate with a valid option
                }
                // loop indefinitely and leaves with a return
            } while (true);

        }


        public static void showMenuTeacher()
        {
            string menutitle = "Teacher Menù";
            int menuchoice = 0;
            // List of the possible options in the "Teacher Menu"
            var menuitems = new List<string>(){
                "Assign exercise",
                "Check exercise",
                "Correct exercise",
                "Create new exercise",
                "Search exercise",
                "Check messages",
                "Write message"
            };

            // Show the menu and receive a valid input
            menuchoice = showMenuDecorate(menutitle, menuitems);
            // Check the result
            Console.WriteLine("Has been choosen option nr. {0}!", menuchoice);
            Console.WriteLine(menuitems[menuchoice - 1]);
            Console.ReadLine();

        }

        public static void showMenuStudent()
        {
            string menutitle = "Student Menù";
            int menuchoice = 0;
            // List of the possible options in the "Teacher Menu"
            var menuitems = new List<string>(){
                "Do exercise",
                "Find exercise",
                "Read feedback",
                "Search messages",
                "Write message",
            };

            // Show the menu and receive a valid input
            menuchoice = showMenuDecorate(menutitle, menuitems);
            // Check the result
            Console.WriteLine("Has been choosen option nr. {0}!", menuchoice);
            Console.WriteLine(menuitems[menuchoice - 1]);
            Console.ReadLine();

        }

        public static void showMenutorAdministrator()
        {
            string menutitle = "Administrator Menù";
            int menuchoice = 0;
            // List of the possible options in the "Teacher Menu"
            var menuitems = new List<string>(){

                "Create new user",
                "List users by role",
                "Update user data",
                "Correct wordlist",
                "Import wordlist",
                "Read messages",
                "Write message"
            };

            // Show the menu and receive a valid input
            menuchoice = showMenuDecorate(menutitle, menuitems);
            // Check the result
            Console.WriteLine("Has been choosen option nr. {0}!", menuchoice);
            Console.WriteLine(menuitems[menuchoice - 1]);
            Console.ReadLine();

        }


    }
}