.class public Lcom/sec/android/visualeffect/blind/Blind;
.super Landroid/widget/ImageView;
.source "Blind.java"


# instance fields
.field private blindWidth:I

.field private blindX:I

.field private midPoint:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;II)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/sec/android/visualeffect/blind/Blind;->blindX:I

    iput p4, p0, Lcom/sec/android/visualeffect/blind/Blind;->blindWidth:I

    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/blind/Blind;->midPoint:F

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public changeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getBlindWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/blind/Blind;->blindWidth:I

    return v0
.end method

.method public getBlindX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/blind/Blind;->blindX:I

    return v0
.end method

.method public getMidPoint()F
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/blind/Blind;->midPoint:F

    return v0
.end method
