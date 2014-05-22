package ch13;

public class Book
{
    private String title;
    private String author;
    private int price;
    private String publisher;
    
    public Book(String title, String author, int price, String publisher)
    {
        this.title = title;
        this.author = author;
        this.price = price;
        this.publisher = publisher;
    }
    
    public String getTitle()
    {
        return title;
    }
    
    public String getAuthor()
    {
        return author;
    }
    
    public int getPrice()
    {
        return price;
    }
    
    public String getPublisher()
    {
        return publisher;
    }
}


