-- SQL afternoon project
-- Person 
/* Person */
create table Person
(
    id integer
    auto increment primary key,
  name varChar
    (512),
  age integer,
  height float,
  city varChar
    (512),
  favorite_color varChar
    (512)
  
  );
    insert into Person
        (name, age, height,city,favorite_color)
    values
        ("person 1", 125, 320.25, "Sarasota", "Pink"),
        ("person 2", 25, 120.25, "Tampa", "Red"),
        ("person 3", 55, 160.3, "Chatanooga", "Green"),
        ("person 4", 21, 80.5, "Orville", "Yellow"),
        ("person 5", 43, 980.25, "Boise", "Purple");
    select height
    from Person
    order by height desc
    select height
    from Person
    order by height asc
    select age
    from Person
    order by age desc
    */
    select *
    from Person
    Where age > 20;
    select *
    from Person
    Where age = 18
    select *
    from Person
    where age < 20 or age > 30
    select *
    from Person
    where age != 27
    select *
    from Person
    where favorite_color != "Red"
    select *
    from Person
    Where favorite_color != "Red" and favorite_color != "Blue";
    select *
    from Person
    Where favorite_color = "Orange" or favorite_color = "Green"
    select *
    from Person
    Where favorite_color IN ('Orange', 'Green','Blue');
    select *
    from Person
    where favorite_color in ("yellow", "Purple")
    /* ORDERS */
    CREATE TABLE Orders
    (
        PersonID intger,
        ProducName varChar(40),
        ProductPrice float,
        Quantity integer
    );
    INSERT INTO Orders
        (PersonID,ProducName,ProductPrice,Quantity)
    Values
        (001, 'DC - comic book', 1.99, 4),
        (002, 'Book - Harry Potter', 14.99, 3)
    */
    SELECT *
    FROM Orders;
    SELECT SUM(Quantity)
    FROM Orders;
    SELECT SUM(ProductPrice * Quantity)
    FROM Orders;
    SELECT SUM(ProductPrice * Quantity)
    FROM Orders
    WHERE PersonID = 002;
    /* ARTIST */
    INSERT INTO Artist
        (ArtistID,Name)
    VALUES
        (276, 'Fyre Down Under'),
        (277, 'Burning Towers'),
        (278, 'CrapTastic');
    Select *
    from Artist
    order by name desc
limit 10

select * from Artist
    order by name asc
limit 5
    select *
    from Artist
    where name Like "Black%"
    select *
    from Artist
    where name Like "%Black%"
    /* EMPLOYEE */
    SELECT *
    FROM Employee;
    SELECT LastName, FirstName
    From Employee
    WHERE City = 'Calgary';
    SELECT FirstName, LastName, min(BirthDate)
    FROM Employee;
    SELECT *
    FROM Employee
    WHERE ReportsTo = 2;
    SELECT COUNT(*)
    FROM Employee
    WHERE City = 'Lethbridge';
    /* INVOICE */
    select count(*)
    from Invoice
    where BillingCountry = "USA"
    select max(Total)
    from Invoice;
    select *
    from Invoice;
    select min(Total)
    from Invoice;
    select *
    from Invoice
    where Total > 5.00;
    select count(*)
    from Invoice
    where Total < 5.00;
    select count(*)
    from Invoice
    where BillingState in ('CA','TX','AZ');
    select avg(Total)
    from Invoice;
    select sum(Total)
    from Invoice;

