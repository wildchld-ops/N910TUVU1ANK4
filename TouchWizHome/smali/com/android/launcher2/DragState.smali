.class public Lcom/android/launcher2/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragState$6;,
        Lcom/android/launcher2/DragState$VisualMode;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "DragState"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private mAnimateVied:Landroid/view/View;

.field private mBlockDeleteFromSource:Z

.field private mCacheDragView:Landroid/view/View;

.field private mDeleted:Z

.field final mDragOrigin:Lcom/android/launcher2/DragOrigin;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFoundValidDrop:Z

.field private mHasEnded:Z

.field final mItem:Lcom/android/launcher2/BaseItem;

.field mOriginalCell:I

.field mOriginalScreen:I

.field private mReceiver:Lcom/android/launcher2/DragReceivable;

.field mRevertDrag:Z

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field private mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

.field private mSwapView:Landroid/view/View;

.field mUnderdragView:Landroid/view/View;

.field private mVisualMode:Lcom/android/launcher2/DragState$VisualMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;ILcom/android/launcher2/Launcher;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    iput-object v2, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    sget-object v0, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    iput-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iput-object p3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DragState;->initItemInfo(Landroid/content/Intent;I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DragState for DND : mItem :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    iput v4, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    iput-object v6, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    iput-object p2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iput-object p1, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v3, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v3, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget v3, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v3, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_0

    iput v4, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    iput v4, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v3}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    new-array v1, v3, [I

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    aput v3, v1, v5

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    aput v3, v1, v7

    new-instance v3, Lcom/android/launcher2/WidgetSizes;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2, v6, v6}, Lcom/android/launcher2/HomeWidgetItem;->getHostView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    aget v4, v1, v5

    aget v5, v1, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/WidgetSizes;->setMinSpan(II)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomePendingWidget;

    iget v3, v2, Lcom/android/launcher2/HomePendingWidget;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomePendingSurfaceWidget;

    if-eqz v3, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomePendingSurfaceWidget;

    iget-object v3, v2, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v3, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/HomePendingSurfaceWidget;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v3, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v3, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetItem;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private animateDrop()V
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v3, v4}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v0

    :cond_3
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_3

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v11, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v15, v15, 0x81

    if-eqz v15, :cond_4

    const/4 v4, 0x1

    :goto_0
    new-instance v5, Lcom/android/launcher2/AppItem;

    invoke-direct {v5, v2, v4}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    const/4 v15, 0x1

    iput-boolean v15, v5, Lcom/android/launcher2/AppItem;->mDirty:Z

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/content/pm/PackageManager;->getSecretPackageList(I)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-interface {v14, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    :goto_1
    iput-boolean v15, v5, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-eqz v12, :cond_0

    :try_start_0
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v13, v15, v0}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    invoke-virtual {v10}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-static {v15, v6}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :cond_0
    :goto_2
    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v7, v11}, Lcom/android/launcher2/ThemeLoader;->loadAppIconBitmapByPackageName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {v7, v8}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_1
    if-nez v9, :cond_6

    :cond_2
    :goto_3
    iput-object v8, v5, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iput-object v15, v5, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-boolean v15, v5, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v15, :cond_3

    const/4 v15, 0x0

    :try_start_1
    invoke-virtual {v10, v11, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-wide v15, v15, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v15, v5, Lcom/android/launcher2/AppItem;->mCreateTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_4
    return-object v5

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    :cond_6
    move-object v8, v9

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v15, "DragState"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot find PackageInfo for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v15

    goto :goto_2
.end method

.method private deleteFromSource()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0
.end method

.method private fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V
    .locals 2

    const/4 v1, -0x1

    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    iput p4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    if-eqz p7, :cond_0

    iput v1, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    iput v1, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    :cond_0
    return-void
.end method

.method private findActivityForComponent(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher2/DragOrigin;

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initItemInfo(Landroid/content/Intent;I)Lcom/android/launcher2/BaseItem;
    .locals 21

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0200c1

    invoke-static/range {v18 .. v19}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v4, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v4, v5}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v12, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const v18, 0x7f09008e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    new-instance v15, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v15, v7, v5}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {v15 .. v17}, Lcom/android/launcher2/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    if-ltz v18, :cond_1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    if-gez v18, :cond_3

    :cond_1
    const-string v18, "DragState"

    const-string v19, "Drag shadow touch point must not be negative"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    :goto_1
    return-object v18

    :sswitch_0
    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v9

    if-eqz v9, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/launcher2/HomeShortcutItem;->setFromDND(Z)Z

    move-object v14, v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/android/launcher2/DragState;->getAvailableWidget(Landroid/content/ComponentName;I)Lcom/android/launcher2/HomePendingItem;

    move-result-object v8

    if-eqz v8, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/launcher2/HomePendingItem;->setFromDND(Z)Z

    move-object v14, v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher2/DragState;->findActivityForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v13

    const/4 v3, 0x0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/DragState;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/AppItem;->setFromDND(Z)Z

    move-object v14, v3

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    if-ltz v18, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    if-gez v18, :cond_5

    :cond_4
    const-string v18, "DragState"

    const-string v19, "Drag shadow dimensions must not be negative"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v4}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    invoke-virtual {v4}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    aput v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/launcher2/ShadowBuilder;->setTouchOffset([I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/DragState;->setShadow(Lcom/android/launcher2/ShadowBuilder;)V

    :cond_6
    move-object/from16 v18, v14

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
        0x385 -> :sswitch_1
    .end sparse-switch
.end method

.method private moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z
    .locals 30

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/launcher2/BaseItem;->setFromDND(Z)Z

    move-result v23

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v3, :cond_6

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    sget-object v3, Lcom/android/launcher2/DragState$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_1

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    :cond_1
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    move-object/from16 v12, p2

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, p8

    move-wide/from16 v19, v4

    invoke-interface/range {v12 .. v20}, Lcom/android/launcher2/DragReceivable;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V

    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragReceivable;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v6, :cond_4

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v0, v3, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/launcher2/SurfaceWidgetView;->setVisibility(I)V

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v3, :cond_4

    move-object/from16 v21, v24

    check-cast v21, Lcom/android/launcher2/CellLayout$LayoutParams;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v6}, Lcom/android/launcher2/SurfaceWidgetView;->repositionSurfaceWidget(II)V

    :cond_4
    if-eqz p3, :cond_5

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_5

    check-cast p2, Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    :cond_5
    const/4 v3, 0x1

    :goto_1
    return v3

    :pswitch_0
    if-eqz v2, :cond_0

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v6, p8

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    sget-object v3, Lcom/android/launcher2/DragState$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_1

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown item type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    move-object/from16 v7, p1

    check-cast v7, Lcom/android/launcher2/HomePendingWidget;

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-wide v8, v4

    move/from16 v10, p8

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v6 .. v13}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V

    invoke-virtual {v2, v7}, Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V

    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_2
    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomePendingItem;

    iget-object v9, v3, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    const/4 v3, 0x2

    new-array v13, v3, [I

    const/4 v3, 0x0

    aput p4, v13, v3

    const/4 v3, 0x1

    aput p5, v13, v3

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move-object v8, v2

    move-wide v10, v4

    move/from16 v12, p8

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher2/HomeView;->processShortcutFromDrop(Landroid/content/ComponentName;JI[I[IZ)V

    goto :goto_2

    :pswitch_3
    move-object/from16 v9, p1

    check-cast v9, Lcom/android/launcher2/HomePendingSamsungWidget;

    const/4 v15, 0x1

    move-object/from16 v8, p0

    move-wide v10, v4

    move/from16 v12, p8

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V

    invoke-virtual {v2, v9}, Lcom/android/launcher2/HomeView;->addSamsungWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;)Z

    goto :goto_2

    :pswitch_4
    move-object/from16 v11, p1

    check-cast v11, Lcom/android/launcher2/HomePendingSurfaceWidget;

    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-wide v12, v4

    move/from16 v14, p8

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V

    invoke-virtual {v2, v11}, Lcom/android/launcher2/HomeView;->addSurfaceWidgetFromDrop(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z

    goto :goto_2

    :cond_7
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_b

    const-wide/16 v12, -0x64

    cmp-long v3, v4, v12

    if-eqz v3, :cond_8

    const-wide/16 v12, -0x65

    cmp-long v3, v4, v12

    if-eqz v3, :cond_8

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_b

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v6, :cond_b

    :cond_8
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/launcher2/AppFolderItem;

    move-wide v14, v4

    move/from16 v16, p8

    move/from16 v17, p4

    move/from16 v18, p5

    invoke-static/range {v12 .. v18}, Lcom/android/launcher2/HomeFolderItem;->createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v6, :cond_a

    new-instance v27, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct/range {v27 .. v27}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mIconResId:I

    move-object/from16 v0, v27

    iput v3, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v6

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/AppItem;

    iget-object v3, v3, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v27

    invoke-virtual {v6, v3, v0}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    check-cast p1, Lcom/android/launcher2/AppItem;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object p1

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0f008c

    invoke-virtual {v3, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    :cond_a
    check-cast p1, Lcom/android/launcher2/AppItem;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object p1

    goto :goto_3

    :cond_b
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_0

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v3, :cond_c

    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-lez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    const v8, 0x7f0f0130

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v3, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    add-int/lit8 v26, v3, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v25

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    add-int/lit8 v22, v3, 0x1

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v29

    if-eqz v29, :cond_d

    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_d

    add-int/lit8 v3, v25, -0x1

    move/from16 v0, p8

    if-ge v0, v3, :cond_d

    add-int/lit8 v25, v25, -0x1

    :cond_d
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eqz v3, :cond_e

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0f0091

    invoke-virtual {v3, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    :cond_e
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0f008e

    invoke-virtual {v3, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_10

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0f008d

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v3, v6, v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto/16 :goto_0

    :cond_10
    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0f008f

    move/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v3, v6, v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto/16 :goto_0

    :cond_11
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f0f008d

    invoke-virtual {v3, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private swapItems(Landroid/view/View;Landroid/view/View;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/HomeItem;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v15, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v11, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v14, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v9, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move-object v8, v5

    move-object v9, v4

    move v10, v15

    invoke-direct/range {v6 .. v14}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-ne v4, v5, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v2

    float-to-double v6, v2

    const-wide v8, 0x3feeb851eb851eb8L

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    const/high16 v2, 0x3f800000

    const/16 v6, 0xfa

    move-object/from16 v0, p2

    invoke-static {v0, v2, v6}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v8, v3, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    :cond_2
    return-void
.end method

.method private updateMinSpan([II[I)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_0

    aget v0, p3, v1

    aput v0, p1, v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget v0, p3, v2

    aput v0, p1, v2

    :cond_1
    return-void
.end method


# virtual methods
.method public cleanupSwap()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    goto :goto_0
.end method

.method public createHomeFolderFromDragItem()Z
    .locals 15

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    if-eqz v11, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, -0x64

    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v14}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget v0, v11, Lcom/android/launcher2/BaseItem;->mIconResId:I

    iput v0, v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    move-object v0, v11

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v0, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0, v14}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    check-cast v11, Lcom/android/launcher2/AppItem;

    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    iget-object v0, v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    const/4 v10, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "create_folder"

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v12, 0x0

    new-instance v12, Lcom/android/launcher2/guide/CreateFolderGuider;

    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-direct {v12, v0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    check-cast v12, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-virtual {v12}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog_step3()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getContainerType()J

    move-result-wide v2

    iget v8, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    iget v9, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    :cond_2
    return v10

    :cond_3
    check-cast v11, Lcom/android/launcher2/AppItem;

    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_5

    instance-of v0, v11, Lcom/android/launcher2/HomePendingItem;

    if-eqz v0, :cond_5

    check-cast v11, Lcom/android/launcher2/HomePendingItem;

    iget-object v13, v11, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v13}, Lcom/android/launcher2/HomeView;->processItemDropToNewFolder(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_5
    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v2, :cond_6

    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_0

    instance-of v0, v11, Lcom/android/launcher2/HomePendingItem;

    if-nez v0, :cond_0

    :cond_6
    move-object v1, v11

    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    iget-wide v2, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v0, v2, v8

    if-eqz v0, :cond_7

    iget-wide v2, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v0, v2, v8

    if-nez v0, :cond_8

    :cond_7
    const/4 v6, 0x1

    iget-wide v4, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    goto :goto_0

    :cond_8
    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public foundValidDrop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    return v0
.end method

.method public getAvailableWidget(Landroid/content/ComponentName;I)Lcom/android/launcher2/HomePendingItem;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x2

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    sparse-switch p2, :sswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :sswitch_0
    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_1
    move-object v1, v4

    goto :goto_1

    :sswitch_1
    new-instance v2, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    :goto_2
    goto :goto_0

    :cond_2
    move-object v1, v4

    goto :goto_2

    :sswitch_2
    new-instance v2, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    :goto_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    aget v4, v3, v6

    iput v4, v1, Lcom/android/launcher2/HomePendingItem;->spanX:I

    aget v4, v3, v7

    iput v4, v1, Lcom/android/launcher2/HomePendingItem;->spanY:I

    goto :goto_0

    :cond_3
    move-object v1, v4

    goto :goto_3

    :sswitch_3
    new-instance v2, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    :goto_4
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0, v3}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    aget v4, v3, v6

    iput v4, v1, Lcom/android/launcher2/HomePendingItem;->spanX:I

    aget v4, v3, v7

    iput v4, v1, Lcom/android/launcher2/HomePendingItem;->spanY:I

    goto :goto_0

    :cond_4
    move-object v1, v4

    goto :goto_4

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x384 -> :sswitch_2
        0x385 -> :sswitch_3
    .end sparse-switch
.end method

.method public getContainerType()J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method getFolderParent()Lcom/android/launcher2/Folder;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    instance-of v3, v0, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/launcher2/Folder;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public getItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    instance-of v3, v1, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getReceiver()Lcom/android/launcher2/DragReceivable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    return-object v0
.end method

.method public getShadow()Lcom/android/launcher2/ShadowBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    return-object v0
.end method

.method public getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    return-object v0
.end method

.method public hasDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    return v0
.end method

.method public initiateSwap(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    :cond_2
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    iput-boolean v2, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    goto :goto_0
.end method

.method public isMoveInsideOpenFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logDebugInfo()V
    .locals 4

    sget-boolean v1, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v0, "==============================================================================="

    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    const-string v2, "DragState member variables:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDragOrigin:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    const-string v2, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ...  parent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFoundValidDrop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasEnded:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwapView:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEndRunnable:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlockDeleteFromSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    const-string v2, "details:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z
    .locals 9

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    sget-boolean v0, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    if-eqz v0, :cond_2

    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reciever:        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    ...  parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/launcher2/DragReceivable;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   y:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen:          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to move item after the drop was handled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Lcom/android/launcher2/BaseItem;)V

    if-eqz p7, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveItemToWithoutAnimation(Lcom/android/launcher2/DragReceivable;IIIII)Z
    .locals 10

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    return v9
.end method

.method public onDelete()V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    const-string v2, "create_folder"

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowBuilder;->clearSurface()V

    :cond_2
    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/android/launcher2/DragState$1;

    const-string v3, "deleteAppWidgetId"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/launcher2/DragState$1;-><init>(Lcom/android/launcher2/DragState;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v2}, Lcom/android/launcher2/DragState$1;->start()V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->unbind()V

    :cond_4
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_5

    const-string v2, "remove_items"

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v2}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    const v3, 0x7f0f0076

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/DragState$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/DragState$2;-><init>(Lcom/android/launcher2/DragState;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f0f0090

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v2, :cond_7

    sget-object v4, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v3, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungWidgetItem;)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_3

    const-string v2, "SurfaceWidgetFlow"

    const-string v3, "destroying surface widget with delete bucket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    sget-object v4, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto :goto_1
.end method

.method public onDragStartedSuccessfully()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->hide(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to call DrageState.onDrop more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    return-void
.end method

.method public onDropSetEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->onDrop()V

    iput-object p1, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onEnd()V
    .locals 11

    const-wide/16 v9, 0x1f4

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v1, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v6}, Lcom/android/launcher2/ShadowBuilder;->clearSurface()V

    :cond_2
    iput-boolean v8, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v6, :cond_4

    const-string v6, "create_folder"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-static {v6}, Lcom/android/launcher2/guide/GuideFragment;->showWrongActionDialog(Landroid/app/Activity;)V

    :cond_4
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_0

    const-string v6, "create_folder"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_5
    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v6, :cond_c

    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_6

    const-string v6, "move_app"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sput-boolean v8, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    const/4 v3, 0x0

    new-instance v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-virtual {v3}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    const v7, 0x7f0f0075

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/launcher2/DragState$3;

    invoke-direct {v6, p0, v1}, Lcom/android/launcher2/DragState$3;-><init>(Lcom/android/launcher2/DragState;Lcom/android/launcher2/HomeView;)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_1
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v6, :cond_0

    const-string v6, "remove_items"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, 0x0

    new-instance v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-virtual {v3}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    :cond_7
    const-string v6, "create_folder"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v3, 0x0

    new-instance v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    check-cast v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-virtual {v3}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog()V

    :cond_8
    const-string v6, "move_app"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v3, 0x0

    new-instance v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    invoke-virtual {v3}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    :cond_9
    sget-boolean v6, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    if-nez v6, :cond_0

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/launcher2/DragState$5;

    invoke-direct {v6, p0}, Lcom/android/launcher2/DragState$5;-><init>(Lcom/android/launcher2/DragState;)V

    invoke-virtual {v4, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_a
    const-string v6, "create_folder"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v3, 0x0

    new-instance v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    check-cast v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    invoke-virtual {v3}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog()V

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-static {v6}, Lcom/android/launcher2/guide/GuideFragment;->showWrongActionDialog(Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_b
    const-string v6, "remove_items"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v3, 0x0

    new-instance v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    check-cast v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    invoke-virtual {v3}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/launcher2/DragState$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/DragState$4;-><init>(Lcom/android/launcher2/DragState;)V

    invoke-virtual {v4, v6, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_c
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v6, :cond_d

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    iget-object v6, v2, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    if-ltz v6, :cond_d

    iget v6, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v7, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    const/4 v8, -0x1

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    :cond_d
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v6, v7}, Lcom/android/launcher2/DragOrigin;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v6, v7}, Lcom/android/launcher2/DragOrigin;->show(Lcom/android/launcher2/BaseItem;)V

    :cond_e
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v6, :cond_6

    :cond_f
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    goto/16 :goto_1
.end method

.method public setShadow(Lcom/android/launcher2/ShadowBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    return-void
.end method

.method public setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/DragState$VisualMode;->enter(Lcom/android/launcher2/UpdateableShadowBuilder;)V

    :cond_0
    return-void
.end method
