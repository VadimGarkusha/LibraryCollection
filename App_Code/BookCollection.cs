using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BookCollection
/// </summary>
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
}