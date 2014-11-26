.class public Landroid/graphics/ImageFilter$CosineBlurFilter;
.super Landroid/graphics/ImageFilter;
.source "ImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CosineBlurFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/graphics/ImageFilter;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ImageFilter$1;)V
    .locals 0
    .param p1    # Landroid/graphics/ImageFilter$1;

    invoke-direct {p0}, Landroid/graphics/ImageFilter$CosineBlurFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public setRadius(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x0

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-super {p0, v1, v0}, Landroid/graphics/ImageFilter;->setValue(IF)V

    return-void
.end method
