.class public Landroid/graphics/ImageFilter$DistortionFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DistortionFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x31

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ImageFilter$DistortionFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public setDistortion(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method
