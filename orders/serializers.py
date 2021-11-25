from django.db.models import fields
from orders.models import *
from ristorante.serializers import *
from products.serializers import *
from users.serializers import *
from rest_framework import serializers


class Status_Serializer(serializers.ModelSerializer):

    class Meta:
        model = Status
        fields = ["id", "description"]


class Order_Serializer(serializers.ModelSerializer):
    #user = UserSerializer()
    #restaurant = RestaurantSerializer()
    status = Status_Serializer()
    #pproducts_list = ProductsList_Serializer()

    class Meta:
        model = Order
        fields = ["id", "user", "time",
                  "restaurant", "status", "pproducts_list"]


class ProductsList_Serializer(serializers.ModelSerializer):
    order = Order_Serializer()
    product = ProductSerializer()

    class Meta:
        model = Products_list
        fields = ["id", "order", "quantity", "product", "notes"]
