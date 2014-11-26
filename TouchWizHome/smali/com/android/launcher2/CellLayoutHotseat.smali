.class public Lcom/android/launcher2/CellLayoutHotseat;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutHotseat.java"


# static fields
.field private static final DEBUGGABLE:Z

.field static final TAG:Ljava/lang/String; = "CellLayoutHotseat"

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field private static gpuBooster:Landroid/os/DVFSHelper;


# instance fields
.field private mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

.field private mBinding:Z

.field private mDragState:Lcom/android/launcher2/DragState;

.field private mHasEnded:Z

.field mIsLandscape:Z

.field mMaxCellCount:I

.field private mRemoveEmptySpacePosted:Z

.field private mReorderPosted:Z

.field private final mTmpDragXY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    sput-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    sput-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getGpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/CellLayoutHotseat;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0
    .param p0    # Lcom/android/launcher2/CellLayoutHotseat;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    return p1
.end method

.method private animateAllChildren()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    sget-boolean v3, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "CellLayoutHotseat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateAllChildren "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v3, v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_3
    const/16 v3, 0xe6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/launcher2/CellLayout;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getAllappsPos()I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->cellToPosition(II)I

    move-result v1

    return v1
.end method

.method private setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/launcher2/AllappsIcon;
    .param p3    # Z

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    int-to-float v5, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v4, v5

    const/4 v0, 0x0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/ThemeLoader;->loadAppsIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200c1

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    invoke-static {v0, v4, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v8, v1, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d000c

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    if-eqz p3, :cond_4

    const v5, 0x7f0f0013

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    const v5, 0x7f0f00ff

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v5, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v5, Lcom/android/launcher2/CellLayoutHotseat$4;

    invoke-direct {v5, p0}, Lcom/android/launcher2/CellLayoutHotseat$4;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateViewToLandscape()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/CellLayoutNoGap;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 10
    .param p1    # Lcom/android/launcher2/BaseItem;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v0

    add-int/lit8 v7, v0, 0x1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v0, v6, Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    check-cast v6, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    move-result v8

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-eq v8, v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    :cond_3
    sget-boolean v0, Lcom/android/launcher2/HomeView;->sIsBindHotseat:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    const-string v1, "HSAD"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    const-string v1, "HSAD"

    const-string v2, "Folder"

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method public beginBind(I)V
    .locals 2
    .param p1    # I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_0
.end method

.method cellToPosition(II)I
    .locals 2
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_0

    sub-int p1, v0, p2

    :cond_0
    return p1
.end method

.method public endBind()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mAnimateChildInstantly:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    return-void
.end method

.method existsEmptyCell()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllAppsIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method getCellCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    goto :goto_0
.end method

.method getCellXFromPos(I)I
    .locals 1
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getCellYFromPos(I)I
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_0

    sub-int v1, v0, p1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    const-wide/16 v0, -0x65

    return-wide v0
.end method

.method public getDragState()Lcom/android/launcher2/DragState;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    return-object v0
.end method

.method public inflateAllAppsIcon(Lcom/android/launcher2/Hotseat;Z)Lcom/android/launcher2/AllappsIcon;
    .locals 8
    .param p1    # Lcom/android/launcher2/Hotseat;
    .param p2    # Z

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AllappsIcon;

    iput-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-direct {p0, v1, v4, p2}, Lcom/android/launcher2/CellLayoutHotseat;->setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v5, v6, v6, v7, v7}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v4
.end method

.method public isFull()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    iget v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method makeEmptySpace()I
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    sget-boolean v2, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const-string v2, "CellLayoutHotseat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEmptySpace check:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    if-ge v2, v0, :cond_6

    sget-boolean v2, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "CellLayoutHotseat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEmptySpace count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v3, :cond_5

    :goto_1
    sub-int v1, v2, v1

    :goto_2
    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public moveAppIcon()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v4

    if-eq v3, v4, :cond_3

    iput v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/CellLayout;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 15
    .param p1    # Landroid/view/DragEvent;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/Hotseat;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/DragState;

    move-object v3, v11

    :goto_1
    if-nez v8, :cond_2

    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :cond_2
    iget-object v1, v3, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v11, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v11, v12, :cond_3

    iget-object v11, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v12, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v11, v12, :cond_3

    iget-object v11, v3, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v11, :cond_5

    instance-of v11, v1, Lcom/android/launcher2/HomePendingItem;

    if-eqz v11, :cond_5

    :cond_3
    const/4 v4, 0x1

    :goto_2
    const/4 v11, 0x1

    if-ne v0, v11, :cond_4

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    :cond_4
    iget-boolean v11, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    iget-object v11, v3, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v11, v11, Lcom/android/launcher2/HomeItem;

    if-eqz v11, :cond_7

    iget-object v7, v3, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v7, Lcom/android/launcher2/HomeItem;

    iget-wide v11, v7, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_7

    const/4 v11, 0x2

    if-ne v0, v11, :cond_7

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/Workspace;->closeFolder()V

    const/4 v11, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v11

    float-to-int v9, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v11

    float-to-int v10, v11

    iget-object v11, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    iget-object v11, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    iget-object v11, v3, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-boolean v11, v11, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v11

    if-nez v11, :cond_a

    :cond_9
    invoke-virtual {v8, v3, v0, v2}, Lcom/android/launcher2/Hotseat;->checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    const/4 v11, 0x3

    if-ne v0, v11, :cond_c

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    :cond_c
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    invoke-static {v11}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/BaseItem;->getFromDND()Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v11, 0x4

    if-eq v0, v11, :cond_f

    iput-object v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    :cond_f
    const/4 v11, 0x5

    if-ne v0, v11, :cond_10

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    :cond_10
    iget-boolean v11, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v11, :cond_11

    const/4 v11, 0x4

    if-ne v0, v11, :cond_12

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    :cond_11
    packed-switch v0, :pswitch_data_0

    :goto_3
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    goto/16 :goto_0

    :cond_12
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    goto/16 :goto_0

    :pswitch_0
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :pswitch_1
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    invoke-virtual {v3}, Lcom/android/launcher2/DragState;->onEnd()V

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    goto :goto_3

    :pswitch_2
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    iget v0, v1, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1    # I
    .param p2    # I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    add-int v8, v12, v13

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    add-int v9, v12, v13

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v12

    mul-int v6, v12, v0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v12

    mul-int v7, v12, v1

    if-nez v10, :cond_0

    add-int v11, v6, v8

    :cond_0
    if-nez v4, :cond_1

    add-int v5, v7, v9

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    if-le v0, v12, :cond_2

    sub-int v12, v11, v6

    sub-int/2addr v12, v8

    add-int/lit8 v13, v0, 0x1

    div-int v2, v12, v13

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    const/4 v12, 0x1

    if-le v1, v12, :cond_3

    sub-int v12, v5, v7

    sub-int/2addr v12, v9

    add-int/lit8 v13, v1, 0x1

    div-int v3, v12, v13

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/CellLayout;->setGaps(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->refreshCellDimension()V

    sget-boolean v12, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v12, :cond_4

    const-string v12, "CellLayoutHotseat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setGaps("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-super/range {p0 .. p2}, Lcom/android/launcher2/CellLayout;->onMeasure(II)V

    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onViewAddedToLayout(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    :cond_0
    return-void
.end method

.method realTimeReorder()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutHotseat$1;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->findFirstEmptySpace()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    :cond_3
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mReorderImmediately:Z

    goto :goto_0
.end method

.method public realTimeReorder(I)V
    .locals 3
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/CellLayoutHotseat$2;-><init>(Lcom/android/launcher2/CellLayoutHotseat;I)V

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    goto :goto_0
.end method

.method public removeAllItems()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeEmptySpace()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->hasAnimatingChild()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    new-instance v1, Lcom/android/launcher2/CellLayoutHotseat$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/CellLayoutHotseat$3;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getPageItemCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayoutNoGap;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    if-eq v1, v0, :cond_0

    sget-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v1, :cond_4

    const-string v1, "CellLayoutHotseat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeEmptySpace count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutNoGap;->closeLayoutGap()V

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_1
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 7
    .param p1    # Lcom/android/launcher2/BaseItem;

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    const-string v1, "HSDT"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_0
    return v6

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    const-string v1, "HSDT"

    const-string v2, "Folder"

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    :cond_0
    return-void
.end method

.method public setAllAppsIconDimState(ZZZ)V
    .locals 1
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setGridSize(II)V
    .locals 3
    .param p1    # I
    .param p2    # I

    sget-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutHotseat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGridSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->updateViewToLandscape()V

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->animateAllChildren()V

    return-void
.end method

.method public setup(ZI)V
    .locals 1
    .param p1    # Z
    .param p2    # I

    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    iput p2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # [I
    .param p4    # I
    .param p5    # I

    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v2, v2, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/HomePendingItem;

    if-nez v2, :cond_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutNoGap;->mDisabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    const/4 v2, 0x0

    aget v2, p3, v2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    aget v2, p3, v2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v3, :cond_0

    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto :goto_0
.end method
