.class public Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLVirtualTourThumbnailList.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnKeyListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_ITEMS:I

.field private static final TAG:Ljava/lang/String; = "TwGLVirtualTourThumbnailList"

.field private static final THUMBNAIL_CLOSE_BUTTON_HEIGHT:I

.field private static final THUMBNAIL_CLOSE_BUTTON_OFFSET_X:I

.field private static final THUMBNAIL_CLOSE_BUTTON_WIDTH:I

.field private static final THUMBNAIL_HEIGHT:I

.field private static final THUMBNAIL_OFFSET:I

.field private static final THUMBNAIL_WIDTH:I


# instance fields
.field private mNumOfItem:I

.field private mOnThumbnailListCloseListener:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;

.field private mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a03aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    const v0, 0x7f0a03ab

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_HEIGHT:I

    const v0, 0x7f0a0399

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_OFFSET:I

    const v0, 0x7f0b003d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    const v0, 0x7f0a039a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_OFFSET_X:I

    const v0, 0x7f0a03ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_WIDTH:I

    const v0, 0x7f0a03ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 11

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v10, 0x0

    :goto_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    if-ge v10, v0, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_OFFSET:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v10

    int-to-float v2, v1

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v10

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v10

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_HEIGHT:I

    int-to-float v5, v1

    const v6, 0x7f0202ca

    const v7, 0x7f0202cc

    const v8, 0x7f0202cb

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c02a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method private addItem(Lcom/sec/android/glview/TwGLView;)V
    .locals 3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->pushItems()V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_OFFSET_X:I

    int-to-float v2, v2

    add-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    return-void
.end method

.method private pushItems()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    :goto_0
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->NUMBER_OF_ITEMS:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addThumbnail([BII)V
    .locals 15

    if-eqz p1, :cond_0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    mul-int/lit8 v2, p3, 0x5a

    rsub-int v2, v2, 0x168

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    invoke-virtual {v6, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_HEIGHT:I

    invoke-static {v14, v2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v13

    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_WIDTH:I

    int-to-float v11, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_HEIGHT:I

    int-to-float v12, v2

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    invoke-virtual {v7, v13}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;->setThumbnail(Landroid/graphics/Bitmap;)V

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailItem;->setType(I)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    invoke-direct {p0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->addItem(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Lcom/sec/android/glview/TwGLView;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mOnThumbnailListCloseListener:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;->onOnThumbnailListCloseListener(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLastThumbnail()V
    .locals 4

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    const/4 v0, 0x0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getRight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->THUMBNAIL_CLOSE_BUTTON_OFFSET_X:I

    int-to-float v3, v3

    add-float v0, v2, v3

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    :cond_1
    return-void
.end method

.method public resetList()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailList:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mNumOfItem:I

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->resetLayout()V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mThumbnailCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    return-void
.end method

.method public setOnThumbnailListCloseListener(Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList;->mOnThumbnailListCloseListener:Lcom/sec/android/app/camera/glwidget/TwGLVirtualTourThumbnailList$OnThumbnailListCloseListener;

    return-void
.end method
