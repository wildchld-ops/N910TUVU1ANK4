.class public Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;
.super Ljava/lang/Object;
.source "SmartClipCroppedAreaImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;


# instance fields
.field mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method private getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method private getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->getScreenPointOfView(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public intersects(Landroid/graphics/Rect;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public intersects(Landroid/view/View;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->mRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->getScreenRectOfView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/smartclip/SmartClipCroppedAreaImpl;->intersects(Landroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0
.end method
