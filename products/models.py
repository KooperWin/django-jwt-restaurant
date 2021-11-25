from django.db import models


class Product(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    price = models.DecimalField(max_digits=6, decimal_places=2)
    image = models.ImageField(
        'Product Image', upload_to='product/', null=True, blank=True)

    def __str__(self):
        return self.name+' '+str(self.price)
