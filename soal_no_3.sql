SELECT A.orderNumber, A.status,format(sum(B.quantityOrdered * B.priceEach),2) as total FROM Orders A
INNER JOIN OrderDetail B ON B.orderNumber = A.orderNumber
WHERE A.status = 'Shipped' 
GROUP BY A.orderNumber