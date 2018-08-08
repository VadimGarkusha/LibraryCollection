using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//VADYM HARKUSHA 300909484
/// <summary>
/// Summary description for BookCollection
/// </summary>
/// //VADYM HARKUSHA 300909484
public class BookCollection { 

    List<Book> bookList;
    public BookCollection()
    {
        bookList = new List<Book>();
    }

    public List<Book> GetAllBooks()
    {
        return bookList;
    }

    public void Add(Book aBook)
    {
        bookList.Add(aBook);
    }
}//VADYM HARKUSHA 300909484