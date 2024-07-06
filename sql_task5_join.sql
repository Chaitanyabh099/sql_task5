--- product to sale
select order_line, order_id,customer_id,product_id,sales from sales
select product_id,product_name,category from product

	---inner join
select s.customer_id,s.product_id,s.sales ,p.product_name,p.category from sales as s
inner join product as p
on s.product_id = p.product_id

---left join
select s.customer_id,s.product_id, s.sales,p.product_name, p.category from sales as s
left join product as p
on s.product_id = p.product_id

--- right join
select s.customer_id, s.product_id,s.sales,p.product_id,p.product_name,p.category from sales as s
right join product as p
on s.product_id = p.product_id

	--full join
select * from sales as s
full join product as p
on s.product_id = p.product_id

--group by
select * from sales
select * from product

	---inner join
select sum(s.sales),avg(s.quantity),p.product_id,p.product_name,p.category from sales as s
inner join product as p
on s.product_id = p.product_id
group by p.product_name,p.category,p.product_id
order by sum(sales)
	
--right join
select sum(s.sales),avg(s.quantity), p.product_name,p.product_id,p.category from sales as s
right join product as p
on s.product_id = p.product_id
group by p.product_name, p.category, p.product_id
order by avg(s.quantity)

--left join
select sum(s.sales),avg(s.quantity), p.product_name,p.product_id,p.category from sales as s
left join product as p
on s.product_id = p.product_id
group by p.product_name, p.category, p.product_id
order by avg(s.quantity)

	
select sum(s.sales),avg(s.quantity), p.product_name,p.product_id,p.category from sales as s
left join product as p
on s.product_id = p.product_id

-- full join
select sum(s.sales),avg(s.quantity), p.product_name,p.product_id,p.category from sales as s
full join product as p
on s.product_id = p.product_id
group by p.product_name, p.category, p.product_id
order by avg(s.quantity)


	---multi join
-- get sales,discount and order_date from sales also get product_name and customer_name 
select sales,discount,order_date,product_id from sales
select customer_name from customer
select product_name from product

-- inner join
select s.sales,s.discount,s.order_date,s.product_id,c.customer_name,p.product_name  from sales as s
inner join customer as c
on s.customer_id = c.customer_id
inner join product as p
on s.product_id = p.product_id


-- left join
select s.sales,s.discount,s.order_date,s.product_id,c.customer_name,p.product_name  from sales as s
left join customer as c
on s.customer_id = c.customer_id
left join product as p
on s.product_id = p.product_id

-- right join
select *  from sales as s
right join customer as c
on s.customer_id = c.customer_id
right join product as p
on s.product_id = p.product_id

-- full join
select *  from sales as s
full join customer as c
on s.customer_id = c.customer_id
full join product as p
on s.product_id = p.product_id
--10001













