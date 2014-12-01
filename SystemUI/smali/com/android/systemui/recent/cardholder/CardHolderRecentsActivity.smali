.class public Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;
.super Landroid/app/Activity;
.source "CardHolderRecentsActivity.java"

# interfaces
.implements Lcom/android/systemui/recent/IRecentsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$PersonalModeObserver;,
        Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$TouchOutsideListener;
    }
.end annotation


# static fields
.field public static final ANIMATING_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.ANIMATING"

.field public static final CANCEL_PRELOAD_INTENT:Ljava/lang/String; = "com.android.systemui.recent.CANCEL_PRELOAD"

.field public static final CLOSE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.CLOSE"

.field public static final DB_PRIVATE_MODE_ON:Ljava/lang/String; = "personal_mode_enabled"

.field public static final DEBUG:Z

.field public static final EXPAND_ACTION:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field public static final PRELOAD_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.PRELOAD"

.field public static final PRELOAD_PERMISSION:Ljava/lang/String; = "com.android.systemui.recent.permission.PRELOAD"

.field static final TAG:Ljava/lang/String; = "RecentsPanel"

.field public static final TOGGLE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.TOGGLE_RECENTS"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-RecentsPanel"

.field public static final WAITING_FOR_WINDOW_ANIMATION_PARAM:Ljava/lang/String; = "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

.field public static final WINDOW_ANIMATION_START_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.WINDOW_ANIMATION_START"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFeatureMultiwindowRecentUI:Z

.field private mForeground:Z

.field protected mHasCocktailBar:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedToForceFinish:Z

.field private mOnActivityCreated:Z

.field private mPersonalModeObserver:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$PersonalModeObserver;

.field private mPreviousPrivateMode:I

.field private mPrivateModeState:Z

.field private mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

.field private mResumeCount:I

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mOnActivityCreated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mNeedToForceFinish:Z

    iput v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPreviousPrivateMode:I

    iput v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mResumeCount:I

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mFeatureMultiwindowRecentUI:Z

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mHasCocktailBar:Z

    new-instance v0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$1;-><init>(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mOnActivityCreated:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mShowing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mForeground:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mForeground:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->updateState()V

    return-void
.end method

.method public static forceOpaqueBackground(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v3, "STATUSBAR-RecentsPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleIntent(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mShowing:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->dismissAndGoBack()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v0

    if-eqz p2, :cond_3

    const-string v3, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->isFirstScreenful()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->showRecentHelpPopup()V

    goto :goto_0
.end method

.method private initState()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "personal_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPrivateModeState:Z

    iput v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPreviousPrivateMode:I

    const-string v1, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivateMode  initState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPrivateModeState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private updateState()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "personal_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPrivateModeState:Z

    const-string v1, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivateMode  updateState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPrivateModeState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPreviousPrivateMode:I

    if-eq v1, v0, :cond_0

    const-string v1, "STATUSBAR-RecentsPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivateMode  PreviousPersonalMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPreviousPrivateMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPreviousPrivateMode:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->dismissAndGoHome()V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private updateWallpaperVisibility(Z)V
    .locals 4

    const/high16 v2, 0x100000

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissAndGoBack()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v6, "STATUSBAR-RecentsPanel"

    const-string v7, "dismissAndGoBack()"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-eqz v6, :cond_7

    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getMaxPenWindow(Landroid/content/Context;)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_0

    const/16 v2, 0x14

    :cond_0
    const/16 v6, 0x14

    const/4 v7, 0x3

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_2

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v6, v2, 0x2

    if-ge v1, v6, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v6, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v5, v1

    :cond_2
    sget-boolean v6, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "STATUSBAR-RecentsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GoBack recentTasks.size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v6, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->DEBUG:Z

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_4

    const-string v7, "STATUSBAR-RecentsPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GoBack recentTasks 2-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_6

    iget-object v7, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v7, v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->simulateClick(I)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->DEBUG:Z

    if-eqz v6, :cond_5

    const-string v7, "STATUSBAR-RecentsPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GoBack simulateClick : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->show(Z)V

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissHelpPopup()V

    :cond_7
    iput-boolean v10, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mNeedToForceFinish:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public dismissAndGoHome()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "dismissAndGoHome()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->show(Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissHelpPopup()V

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mNeedToForceFinish:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public isActivityShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mShowing:Z

    return v0
.end method

.method isForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mForeground:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->dismissAndGoBack()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onTasksLoaded()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "STATUSBAR-RecentsPanel"

    const-string v5, "onCreate()"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mResumeCount:I

    iput-boolean v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mOnActivityCreated:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x111008b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mHasCocktailBar:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mFeatureMultiwindowRecentUI:Z

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mFeatureMultiwindowRecentUI:Z

    if-eqz v2, :cond_3

    const v2, 0x7f080022

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iput-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    new-instance v5, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$TouchOutsideListener;

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$TouchOutsideListener;-><init>(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;Lcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$PersonalModeObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$PersonalModeObserver;-><init>(Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;)V

    iput-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPersonalModeObserver:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$PersonalModeObserver;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->initState()V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "personal_mode_enabled"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPersonalModeObserver:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$PersonalModeObserver;

    const/4 v7, -0x2

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v2, :cond_5

    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1
    invoke-static {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    iget-object v5, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000

    div-float/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->setMinSwipeAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v2, p0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v2, :cond_6

    move v2, v3

    :goto_2
    invoke-direct {p0, v5, v2}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    return-void

    :cond_4
    const v2, 0x7f040008

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mSavedInstanceState:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->forceSetCancelState()V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v5, -0x7fefe000

    or-int/2addr v2, v5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_1

    :cond_6
    move v2, v4

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mOnActivityCreated:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/cardholder/RecentsPanelView;Lcom/android/systemui/recent/cardholder/RecentsPanelView;)V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mPersonalModeObserver:Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity$PersonalModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->unregisterContentObserver()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string v1, "STATUSBAR-RecentsPanel"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mForeground:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mForeground:Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->isShowingAndNotHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RecentsPanel"

    const-string v2, "Dismiss RecentPanel due to Keyguard"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismiss()V

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->clearRecentTasksList()V

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mNeedToForceFinish:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mHasCocktailBar:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mForeground:Z

    iget v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mResumeCount:I

    iget v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mResumeCount:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mResumeCount:I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->updateWallpaperVisibility(Z)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-eqz v0, :cond_0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->updateWallpaperVisibility(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mShowing:Z

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->onUiHidden()V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/CardHolderRecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->dismissHelpPopup()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
