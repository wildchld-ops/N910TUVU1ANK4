.class Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SmartClipDragDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShadowBuilder"
.end annotation


# instance fields
.field final SCALE_RATE:F

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->this$0:Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->SCALE_RATE:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const v8, 0x3f4ccccd

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I
    invoke-static {}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$000()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v2, -0x1

    invoke-direct {v0, v9, v9, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I
    invoke-static {}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$000()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    # getter for: Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->DRAG_SHADOW_BORDER_LINE_THICK:I
    invoke-static {}, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop;->access$000()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p1, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v5, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    const v3, 0x3f4ccccd

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/SmartClipDragDrop$ShadowBuilder;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    :cond_0
    return-void
.end method
