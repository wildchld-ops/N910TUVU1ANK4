.class public Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemThumbnailText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TwGLItemThumbnailText"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAsyncTextSize:Z

.field private mCommandId:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mTextColor:I

.field private mTextHeight:F

.field private mTextSize:I

.field private mTextWidth:F

.field private mTextXOffset:F

.field private mTextYOffset:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFILcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const v1, 0x7f090006

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextColor:I

    const v1, 0x7f0a011a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual/range {p11 .. p11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextXOffset:F

    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextYOffset:F

    iput p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextWidth:F

    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextHeight:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mAsyncTextSize:Z

    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextSize:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->refreshView()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFI)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextColor:I

    const v0, 0x7f0a011a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextXOffset:F

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextYOffset:F

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextWidth:F

    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mAsyncTextSize:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->refreshView()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFI)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    const v0, 0x7f090006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextColor:I

    const v0, 0x7f0a011a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextXOffset:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextYOffset:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextWidth:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextHeight:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mAsyncTextSize:Z

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->refreshView()V

    return-void
.end method

.method private refreshView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method protected getView()Lcom/sec/android/glview/TwGLView;
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    :cond_0
    if-nez v9, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-nez v0, :cond_1

    const-string v0, "TwGLItemThumbnailText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    :goto_1
    return-object v0

    :cond_1
    const/4 v6, 0x0

    if-eqz v9, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    :goto_2
    if-nez v6, :cond_6

    const-string v0, "TwGLItemThumbnailText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    instance-of v0, v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/PlugInShootingModesStorage;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mAsyncTextSize:Z

    if-ne v0, v10, :cond_7

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextXOffset:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextYOffset:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextHeight:F

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextSize:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextColor:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextSize:I

    int-to-float v7, v3

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextColor:I

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    goto :goto_3
.end method

.method public setAlign(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    :cond_0
    return-void
.end method

.method public setShadowLayer(ZFFFI)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/glview/TwGLText;->setShadowLayer(ZFFFI)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->setColor(I)V

    return-void
.end method

.method public setTextShadow(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    return-void
.end method
