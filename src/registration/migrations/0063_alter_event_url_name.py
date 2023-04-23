# Generated by Django 3.2.16 on 2022-10-15 14:59

from django.db import migrations, models
import registration.models.event


class Migration(migrations.Migration):
    dependencies = [
        ("registration", "0062_auto_20220709_1931"),
    ]

    operations = [
        migrations.AlterField(
            model_name="event",
            name="url_name",
            field=models.SlugField(
                max_length=200,
                unique=True,
                validators=[registration.models.event._validate_url_blocklist],
                verbose_name="Name for URL",
            ),
        ),
    ]
