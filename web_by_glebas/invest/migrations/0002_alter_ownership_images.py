# Generated by Django 4.1.7 on 2023-02-18 12:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('invest', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='ownership',
            name='images',
            field=models.JSONField(blank=True),
        ),
    ]