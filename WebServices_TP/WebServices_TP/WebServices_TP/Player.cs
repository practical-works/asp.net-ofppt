using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebServices_TP
{
    public class Player
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double XP { get; set; }
        public int Level { get; set; }
        public static int PlayerInstancesCount { get; set; }

        public Player()
        {
            PlayerInstancesCount++;
        }
        public Player(string name) : this()
        {
            this.ID = PlayerInstancesCount;
            this.Name = name;
            this.XP = 0;
            this.Level = 1;
        }
        public Player(string name, double xp) : this(name)
        {
            this.XP = xp;
            this.Level = (int)Math.Log(xp);
        }
        public Player(string name, int level) : this(name)
        {
            this.XP = Math.Exp(level);
            this.Level = level;
        }
    }
}