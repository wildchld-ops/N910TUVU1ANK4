.class public final Lcom/visionobjects/textwidget/d/a/c;
.super Ljava/lang/Object;
.source "RectFactory.java"


# direct methods
.method public static a(Landroid/graphics/RectF;)Lcom/visionobjects/stylus/core/Rect;
    .locals 5

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    new-instance v4, Lcom/visionobjects/stylus/core/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Rect;-><init>(FFFF)V

    return-object v4
.end method
