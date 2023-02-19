from django.contrib import admin
from django.urls import path
from .views import *
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', ownership_list, name='ownerships_list_url'),
    path('create', OwnershipCreateView.as_view(), name='ownership_create_url'),
    path('delete', OwnershipDelete.as_view(), name='ownership_delete_url'),
    path('properties', jsonmodels)
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
