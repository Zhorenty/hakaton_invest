from django.db import models


class Ownership(models.Model):
    address = models.CharField(max_length=255, unique=True)
    price = models.IntegerField(blank=False)
    description = models.TextField(blank=True)
    images = models.JSONField(blank=True)
    commercial_organization = models.BooleanField()
    is_risked = models.BooleanField()
    potential_percent_profit_per_year = models.IntegerField()

