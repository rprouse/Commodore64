using System;
using System.IO;

namespace bas2lowercase
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args.Length != 1)
            {
                Console.WriteLine("USAGE: bas2lowercase <directory>");
                return;
            }
            if (!Directory.Exists(args[0]))
            {
                Console.WriteLine($"Directory {args[0]} does not exist");
                return;
            }
            Console.WriteLine($"Converting all BASIC files in {args[0]}");

            foreach(var bas in Directory.GetFiles(args[0], "*.bas"))
            {
                Console.WriteLine($"Converting {bas}");
                ConvertToLowerCase(bas);
            }
        }

        static void ConvertToLowerCase(string filename)
        {
            string listing = File.ReadAllText(filename);
            File.WriteAllText(filename, listing.ToLowerInvariant());
        }
    }
}
