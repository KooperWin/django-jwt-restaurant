from django.db import models

from ristorante.models import Restaurant
from products.models import Product
from users.models import User
from django.conf import settings


class Status(models.Model):
    description = models.CharField(max_length=20)

    def __str__(self):
        return self.description


class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.DO_NOTHING)
    time = models.TimeField(auto_now=False, auto_now_add=False)
    restaurant = models.ForeignKey(
        Restaurant, null=True, on_delete=models.DO_NOTHING)
    status = models.ForeignKey(Status, null=True, on_delete=models.DO_NOTHING)

    listofproducts = models.ManyToManyField(Product, through="Productslist")

    def __str__(self):
        return self.user + '' + self.time + '' + self.restaurant + '' + self.status + '' + self.listofproducts


class Productslist(models.Model):
    order = models.ForeignKey(Order, null=True, on_delete=models.DO_NOTHING)
    quantity = models.IntegerField()
    product = models.ForeignKey(Product, on_delete=models.DO_NOTHING)
    notes = models.CharField(max_length=20,null=True)

    def __str__(self):
        return self.order + ' ' + str(self.quantity) + ' ' + self.product + ' ' + self.notes
