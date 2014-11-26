.class public final Lcom/visionobjects/textwidget/h/c;
.super Landroid/view/View;
.source "ScrollbarView.java"


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->b:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iput v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    iput v3, p0, Lcom/visionobjects/textwidget/h/c;->l:I

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/visionobjects/textwidget/h/c;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v3, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    sget-object v4, Lcom/visionobjects/textwidget/h/c;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private c()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private d()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    invoke-virtual {v0, v1, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/visionobjects/textwidget/h/c;->a(Landroid/graphics/Bitmap;)V

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/h/c;->k:I

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->a()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->b()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->c()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->d()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->a()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->b()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->c()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->d()V

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->e()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/visionobjects/textwidget/h/c;->m:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/visionobjects/textwidget/h/c;->l:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/visionobjects/textwidget/h/c;->d()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final isOpaque()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/visionobjects/textwidget/h/c;->l:I

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    rem-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/visionobjects/textwidget/h/c;->m:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/visionobjects/textwidget/h/c;->g:Landroid/graphics/Bitmap;

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->j:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/visionobjects/textwidget/h/c;->l:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->b:Landroid/graphics/Paint;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/visionobjects/textwidget/h/c;->a:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/visionobjects/textwidget/h/c;->f:Landroid/graphics/Bitmap;

    neg-int v0, v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->b:Landroid/graphics/Paint;

    goto :goto_2
.end method

.method protected final onMeasure(II)V
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/h/c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
