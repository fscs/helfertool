# Generated by Django 3.1.8 on 2021-04-23 16:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("help", "0003_auto_20170326_1736"),
    ]

    operations = [
        migrations.AlterField(
            model_name="issue",
            name="subject",
            field=models.CharField(
                choices=[
                    ("newevent", "New event"),
                    ("promoteevent", "Promote event"),
                    ("permadduser", "Permission to add new users"),
                    ("permaddevent", "Permission to add new events"),
                    ("feature", "Feature request"),
                    ("bug", "Bug report"),
                    ("other", "Other topic"),
                ],
                max_length=20,
                verbose_name="Topic",
            ),
        ),
    ]
