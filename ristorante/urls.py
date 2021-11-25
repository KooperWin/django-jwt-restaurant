from django.urls import path,include
from rest_framework import routers  
from .views import *

router = routers.DefaultRouter()

# define the router path and viewset to be used
router.register(r'address', AddressViewSet)
router.register(r'', RestaurantViewSet)

# URLS
urlpatterns = [
    path('', include(router.urls)),
    path('view', RestaurantView.as_view()),
]