.class public Lcom/android/launcher2/WidgetFolderView;
.super Lcom/android/launcher2/PagedViewWidget;
.source "WidgetFolderView.java"


# instance fields
.field private mArrowBtn:Landroid/widget/ImageView;

.field private mDeleteRegion:Landroid/graphics/Rect;

.field private mDimens:Landroid/widget/TextView;

.field private mDimensionsFormatString:Ljava/lang/String;

.field private mFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mTitle:Landroid/widget/TextView;

.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field private mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

.field private mWidgetGridView:Landroid/widget/GridLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mDeleteRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mDeleteRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mDeleteRegion:Landroid/graphics/Rect;

    return-void
.end method

.method private setTalkbackDescription(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWidget;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    :cond_0
    div-int/lit8 v4, v3, 0x2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-direct {v0, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    invoke-virtual {p0, v8, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v8, v4

    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, v8, v6

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v8

    add-int/2addr v1, v8

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mDeleteRegion:Landroid/graphics/Rect;

    add-int v9, v1, v6

    add-int v10, v7, v3

    invoke-virtual {v8, v1, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mDeleteRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getWidgetFolderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideArrowBtn()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0900d1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mDimens:Landroid/widget/TextView;

    const v0, 0x7f0900d3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    const v0, 0x7f0900d2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mDimensionsFormatString:Ljava/lang/String;

    return-void
.end method

.method public openWidgetFolder(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)Lcom/android/launcher2/WidgetFolder;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030057

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/WidgetFolder;

    iput-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v7, p2}, Lcom/android/launcher2/WidgetFolder;->setWidgetFolderManager(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v7, p0}, Lcom/android/launcher2/WidgetFolder;->setWidgetFolderView(Lcom/android/launcher2/WidgetFolderView;)V

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedViewGridLayout;

    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/launcher2/WidgetFolder;->setWidgetFolderViewIndex(I)V

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v7}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomePendingItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/WidgetFolder;->setOpenWidgetFolderTitle(Ljava/lang/String;)V

    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    iget-object v8, p0, Lcom/android/launcher2/WidgetFolderView;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v8, p1}, Lcom/android/launcher2/WidgetFolder;->setWidgetFolderItems(Ljava/util/ArrayList;Lcom/android/launcher2/MenuWidgets;)V

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    const/4 v8, 0x1

    invoke-virtual {v7, v6, v9, v8}, Lcom/android/launcher2/WidgetFolder;->open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V

    const/16 v7, 0x80

    invoke-virtual {p0, v7, v9}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    iget-object v7, p0, Lcom/android/launcher2/WidgetFolderView;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;

    return-object v7

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolderView;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setWidgetFolderImage(Ljava/util/ArrayList;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridLayout;->setColumnCount(I)V

    const v19, 0x7f0c0089

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v19, 0x7f0c008a

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    const v19, 0x7f0c007e

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v19, 0x7f0c007f

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v19, 0x7f0c01e8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v16, v19, v5

    const v19, 0x7f0c01e7

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v15, v19, v4

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridLayout;->setRowCount(I)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    add-int/lit8 v7, v7, 0x1

    const/16 v19, 0x4

    move/from16 v0, v19

    if-le v7, v0, :cond_3

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/GridLayout;->setRowCount(I)V

    goto :goto_0

    :cond_3
    new-instance v10, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v10, v9}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v10, :cond_0

    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v19, 0x7f0b0046

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v19, 0xa

    const/16 v20, 0xa

    const/16 v21, 0xa

    const/16 v22, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v19, v7, -0x1

    rem-int/lit8 v12, v19, 0x2

    add-int/lit8 v19, v7, -0x1

    div-int/lit8 v13, v19, 0x2

    new-instance v14, Landroid/widget/GridLayout$LayoutParams;

    sget-object v19, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v0, v19

    invoke-static {v13, v0}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v19

    sget-object v20, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    move-object/from16 v0, v20

    invoke-static {v12, v0}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    const v19, 0x800033

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    if-lez v12, :cond_4

    move/from16 v19, v6

    :goto_2
    move/from16 v0, v19

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_3
    if-lez v13, :cond_7

    move/from16 v19, v18

    :goto_4
    move/from16 v0, v19

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v0, v16

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v15, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetFolderView;->mWidgetGridView:Landroid/widget/GridLayout;

    move-object/from16 v19, v0

    add-int/lit8 v20, v7, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    :cond_5
    if-lez v12, :cond_6

    move/from16 v19, v6

    :goto_5
    move/from16 v0, v19

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    :cond_6
    const/16 v19, 0x0

    goto :goto_5

    :cond_7
    const/16 v19, 0x0

    goto :goto_4
.end method

.method public setWidgetFolderItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolderView;->mFolderItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setWidgetFolderSpan(II)V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolderView;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolderView;->mFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Widgets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolderView;->mDimens:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWidgetFolderTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/android/launcher2/WidgetFolderView;->setTalkbackDescription(Ljava/lang/String;)V

    return-void
.end method

.method public showArrowBtn()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolderView;->mArrowBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
