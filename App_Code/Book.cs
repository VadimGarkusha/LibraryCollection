using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Book
/// </summary>
public class Book
{
    public Book()
    {
    }

    public Book(string name, string author, string isbn, string genre, int numOfpag, string landedStat, string nameOfFriend, string comment)
    {
        Name = name;
        Author = author;
        Isbn = isbn;
        Genre = genre;
        NmberOfPages = numOfpag;
        LandedStatus = landedStat;
        NameOfFriend = nameOfFriend;
        Comment = comment;
    }

    public string Name { get; set; }
    public string Author { get; set; }
    public string Isbn { get; set; }
    public string Genre { get; set; }
    public int NmberOfPages { get; set; }
    public string LandedStatus { get; set; }
    public string NameOfFriend { get; set; }
    public string Comment { get; set; }
}