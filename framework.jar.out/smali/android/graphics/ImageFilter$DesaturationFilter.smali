.class public Landroid/graphics/ImageFilter$DesaturationFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesaturationFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0
    .param p1    # Landroid/graphics/ImageFilter$1;

    invoke-direct {p0}, Landroid/graphics/ImageFilter$DesaturationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public setSaturation(F)V
    .locals 3
    .param p1    # F

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method
