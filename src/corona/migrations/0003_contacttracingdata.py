# Generated by Django 3.2.7 on 2021-09-27 18:28

from django.db import migrations, models
import django.db.models.deletion
import django_countries.fields


class Migration(migrations.Migration):
    dependencies = [
        ("registration", "0055_event_corona"),
        ("corona", "0002_coronasettings_rules"),
    ]

    operations = [
        migrations.CreateModel(
            name="ContactTracingData",
            fields=[
                ("id", models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                ("street", models.CharField(max_length=250, verbose_name="Street and house number")),
                ("zip", models.CharField(max_length=250, verbose_name="ZIP code")),
                ("city", models.CharField(max_length=250, verbose_name="City")),
                ("country", django_countries.fields.CountryField(max_length=2, verbose_name="Country")),
                ("event", models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="registration.event")),
                (
                    "helper",
                    models.OneToOneField(
                        blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to="registration.helper"
                    ),
                ),
            ],
        ),
    ]
