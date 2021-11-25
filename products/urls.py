from django.urls import path,include
from rest_framework import routers  
from .views import *

router = routers.DefaultRouter()

# define the router path and viewset to be used
router.register(r'product', ProductViewSet)

urlpatterns = [
    path('', include(router.urls)),
    path('view', ProductView.as_view()),
]
