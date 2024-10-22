use Vente;
create table Products (
product_id varchar(20) not null,
product_name varchar(20) not null,
price numeric constraint const_price check (price >0),
constraint pk_product primary key( product_id )
) ;

create table custumers(
custumer_id varchar(20) not null,
custumer_name varchar(20) not null,
custumer_tel numeric,
constraint pk_custumer primary key( custumer_id )
);

create table orders (
product_id varchar(20) not null,
custumer_id varchar(20) not null,
quantity numeric,
total_amount numeric,
constraint fk_product foreign key( product_id ) references products ( product_id ),
constraint fk_custumer foreign key( custumer_id ) references custumers ( custumer_id )
);

alter table products add category varchar(20);

alter table orders add order_date date default ( current_date() );
