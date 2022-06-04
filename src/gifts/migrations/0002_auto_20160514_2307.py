# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2016-05-14 21:07
from __future__ import unicode_literals

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ("registration", "0009_event_gifts"),
        ("gifts", "0001_initial"),
    ]

    operations = [
        migrations.CreateModel(
            name="DeservedGiftSet",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                ("delivered", models.BooleanField(default=False, verbose_name="Helper got gift")),
            ],
        ),
        migrations.CreateModel(
            name="GiftSet",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                ("name", models.CharField(max_length=200, verbose_name="Name")),
                ("name_de", models.CharField(max_length=200, null=True, verbose_name="Name")),
                ("name_en", models.CharField(max_length=200, null=True, verbose_name="Name")),
                ("event", models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="registration.Event")),
            ],
        ),
        migrations.CreateModel(
            name="HelpersGifts",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                (
                    "deposit",
                    models.IntegerField(
                        blank=True,
                        default=None,
                        null=True,
                        validators=[django.core.validators.MinValueValidator(1)],
                        verbose_name="Deposit",
                    ),
                ),
                ("deposit_returned", models.BooleanField(default=False, verbose_name="Deposit returned")),
                (
                    "deserved_gifts",
                    models.ManyToManyField(
                        blank=True, through="gifts.DeservedGiftSet", to="gifts.GiftSet", verbose_name="Deserved gifts"
                    ),
                ),
                (
                    "helper",
                    models.OneToOneField(
                        on_delete=django.db.models.deletion.CASCADE, related_name="gifts", to="registration.Helper"
                    ),
                ),
            ],
        ),
        migrations.CreateModel(
            name="IncludedGift",
            fields=[
                ("id", models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name="ID")),
                (
                    "count",
                    models.IntegerField(
                        default=1, validators=[django.core.validators.MinValueValidator(1)], verbose_name="Count"
                    ),
                ),
            ],
        ),
        migrations.AddField(
            model_name="gift",
            name="event",
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, to="registration.Event"),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name="gift",
            name="name_de",
            field=models.CharField(max_length=200, null=True, verbose_name="Name"),
        ),
        migrations.AddField(
            model_name="gift",
            name="name_en",
            field=models.CharField(max_length=200, null=True, verbose_name="Name"),
        ),
        migrations.AlterField(
            model_name="gift",
            name="name",
            field=models.CharField(max_length=200, verbose_name="Name"),
        ),
        migrations.AddField(
            model_name="includedgift",
            name="gift",
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="gifts.Gift"),
        ),
        migrations.AddField(
            model_name="includedgift",
            name="gift_set",
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="gifts.GiftSet"),
        ),
        migrations.AddField(
            model_name="giftset",
            name="gifts",
            field=models.ManyToManyField(through="gifts.IncludedGift", to="gifts.Gift", verbose_name="Gifts"),
        ),
        migrations.AddField(
            model_name="deservedgiftset",
            name="gift_set",
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="gifts.GiftSet"),
        ),
        migrations.AddField(
            model_name="deservedgiftset",
            name="helper",
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="gifts.HelpersGifts"),
        ),
        migrations.AddField(
            model_name="deservedgiftset",
            name="shift",
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to="registration.Shift"),
        ),
    ]
