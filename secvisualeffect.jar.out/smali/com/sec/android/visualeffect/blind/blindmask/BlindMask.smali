.class public Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;
.super Landroid/view/View;
.source "BlindMask.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private blindLeft:I

.field private blindWidth:I

.field private isRect:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, "BlindEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->isRect:Z

    iput p2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->blindLeft:I

    iput p3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->blindWidth:I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->setMask()V

    return-void
.end method

.method private setMask()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->blindLeft:I

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->blindLeft:I

    iget v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->blindWidth:I

    add-int/2addr v3, v4

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBlindWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->blindWidth:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->isRect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 4
    .param p1    # I

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setWidth(IZ)V
    .locals 5
    .param p1    # I
    .param p2    # Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->isRect:Z

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/blind/blindmask/BlindMask;->isRect:Z

    goto :goto_1
.end method
