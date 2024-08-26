-- --List the top 5 most ordered pizza types along with their quantities.
select pizzas.pizza_type_id,sum(order_details.quantity) as order_quantity
	from pizzas join order_details
    on pizzas.pizza_id=order_details.pizza_id
    group by pizzas.pizza_type_id order by order_quantity desc limit 5;