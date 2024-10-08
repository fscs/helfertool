# Generated by Django 3.1.4 on 2021-01-10 12:19

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("registration", "0043_auto_20200409_1711"),
    ]

    operations = [
        migrations.CreateModel(
            name="EventArchive",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                ("key", models.CharField(max_length=200, verbose_name="Key")),
                ("version", models.PositiveIntegerField(default=1, verbose_name="Version")),
                ("data", models.JSONField(verbose_name="Data")),
                ("event", models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="registration.event")),
            ],
        ),
    ]
