.class public Lcom/android/internal/policy/impl/multiwindow/Docking;
.super Ljava/lang/Object;
.source "Docking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    }
.end annotation


# static fields
.field private static final DOCKING_AREA_RATIO:F = 0.04f

.field private static final DOCKING_CANCEL_TIMER_TIME:I = 0x2bc

.field private static final DOWN_SIDE_DOCKING_AREA_RATIO:F = 0.07f

.field private static final MESSAGE_DOCKING_CANCEL:I = 0x65

.field private static final STACK_WEIGHT_MIN:F = 0.1f


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mCurScreenHeight:I

.field private mCurScreenWidth:I

.field private mDockingBounds:Landroid/graphics/Rect;

.field private mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

.field private mDockingZone:I

.field mHandler:Landroid/os/Handler;

.field private mInitCenterBarPoint:Z

.field private mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mSupportSplitDocking:Z

.field private mTransitionEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mSupportSplitDocking:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/Docking$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/Docking;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/multiwindow/Docking;)Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    return-object v0
.end method

.method private checkStyleTransitionEnable()Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v1

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0xc0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_2

    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    const/4 v5, 0x0

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_0

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.sec.android.multiwindow.activity.STYLE"

    invoke-direct {p0, v8, v9}, Lcom/android/internal/policy/impl/multiwindow/Docking;->parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    :cond_0
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_1
    :goto_1
    return v6

    :cond_2
    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    const-string v8, "fullscreenOnly"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "isolatedSplit"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_4
    if-eqz v2, :cond_6

    const-string v8, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "com.sec.android.support.multiwindow"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_1

    :cond_7
    move v6, v7

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getChanagedMultiWindowStyle(ILcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    const/16 v1, 0xf

    if-ne p0, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    :goto_0
    const/16 v1, 0x800

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_0
.end method

.method private isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x200000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkCenterBarPoint()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    if-eqz v2, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.extra.CONTROL_BAR_POS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public checkDockingWindow(II)I
    .locals 7

    const v4, 0x3d23d70a

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    if-nez v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_6

    int-to-float v2, p2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    :goto_1
    const/4 v0, 0x3

    :cond_2
    :goto_2
    packed-switch v0, :pswitch_data_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mSupportSplitDocking:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v1, 0xf

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_1

    :cond_4
    int-to-float v2, p2

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    int-to-float v3, v3

    const v4, 0x3f6e147b

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    :goto_3
    const/16 v0, 0xc

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_3

    :cond_6
    int-to-float v2, p1

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-gtz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    :goto_4
    const/4 v0, 0x3

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_4

    :cond_8
    int-to-float v2, p1

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    int-to-float v3, v3

    const v4, 0x3f75c28f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    if-lt v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    :goto_5
    const/16 v0, 0xc

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget v5, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    goto :goto_5

    :cond_a
    :pswitch_0
    move v1, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 2

    const/16 v1, 0x65

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isDocking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingBounds:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZone()I
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    return v0
.end method

.method public init()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkStyleTransitionEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v3, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mSupportSplitDocking:Z

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    :cond_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    :goto_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mInitCenterBarPoint:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCenterBarPoint:Landroid/graphics/Point;

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenWidth:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mCurScreenHeight:I

    goto :goto_2
.end method

.method public isDocking()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnDockingListener(Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    return-void
.end method

.method public updateZone(II)Z
    .locals 7

    const/4 v1, 0x0

    const-wide/16 v5, 0x2bc

    const/16 v4, 0x65

    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mTransitionEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/multiwindow/Docking;->checkDockingWindow(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_4

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    :try_start_2
    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    iget v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingZone:I

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    :goto_1
    throw v1

    :cond_9
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/Docking;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method
