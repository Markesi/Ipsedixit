﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

/* Main Program
 * Codebase of Ipsedixit 
 * Owner Michelangelo Marchesi
 * Creation date: 2019-11-15
 * Last change: 2019-11-16 
 * 
 * This console application uses a database to store all data
 * Each class manages supervises the tables with same logic model and name.
 */

namespace Ipsedixit
{
    class Program
    {
        static void Main(string[] args)
        {
            // Testing the menues to check how they look
            // to be re-moved in a future test class
            Menu.showMenuTeacher();
            Menu.showMenuStudent();
            Menu.showMenutorAdministrator();
            // End of testing code

        }


    }
}