.class public Lcom/android/systemui/recent/RecentsWindow;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Lcom/android/systemui/recent/IRecentsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsWindow$TouchOutsideListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final RECENTWINDOW_SHOW:Ljava/lang/String; = "com.sec.android.RECENTSWINDOW_SHOWING"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field mEmergencyChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mFeatureMultiwindowRecentUI:Z

.field private mFlipFont:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field mMultiUserReceiver:Landroid/content/BroadcastReceiver;

.field private mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

.field mPkgManagerReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mShowing:Z

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/recent/RecentsWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1    # Landroid/content/Context;

    const/16 v3, 0x82f

    const/4 v0, 0x0

    const/4 v5, -0x3

    const/4 v1, -0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z

    iput v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mFlipFont:I

    new-instance v0, Lcom/android/systemui/recent/RecentsWindow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsWindow$1;-><init>(Lcom/android/systemui/recent/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object v7, p0, Lcom/android/systemui/recent/RecentsWindow;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    iput-object v7, p0, Lcom/android/systemui/recent/RecentsWindow;->mPkgManagerReceiver:Landroid/content/BroadcastReceiver;

    iput-object v7, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    iput-object v7, p0, Lcom/android/systemui/recent/RecentsWindow;->mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

    iput-object v7, p0, Lcom/android/systemui/recent/RecentsWindow;->mEmergencyChangedReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d00c6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->getShowRecentApplicationShortCut()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RecentsWindow : KT/LGT - "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v8}, Lcom/android/systemui/recent/RecentsPanelView;->getShowRecentApplicationShortCut()Z

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d00bd

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v2, v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1000500

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "RecentsWindow"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/recent/RecentsWindow$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsWindow$2;-><init>(Lcom/android/systemui/recent/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recent/RecentsWindow$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsWindow$3;-><init>(Lcom/android/systemui/recent/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mPkgManagerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recent/RecentsWindow$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsWindow$4;-><init>(Lcom/android/systemui/recent/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recent/RecentsWindow$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsWindow$5;-><init>(Lcom/android/systemui/recent/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mPkgManagerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v8, v7

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v0, "com.sec.knox.SETUP_COMPLETE"

    invoke-direct {v12, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance v0, Lcom/android/systemui/recent/RecentsWindow$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsWindow$6;-><init>(Lcom/android/systemui/recent/RecentsWindow;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mEmergencyChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mEmergencyChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v4, 0x1000100

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/RecentsWindow;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsWindow;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/recent/RecentsWindow;

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsWindow;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/RecentsWindow;

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsWindow;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/RecentsWindow;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/RecentsWindow;)I
    .locals 1
    .param p0    # Lcom/android/systemui/recent/RecentsWindow;

    iget v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFlipFont:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentsWindow;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/recent/RecentsWindow;

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentsWindow;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recent/RecentsWindow;

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsWindow;->initMultiWindowTray()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentsWindow;)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
    .locals 1
    .param p0    # Lcom/android/systemui/recent/RecentsWindow;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    return-object v0
.end method

.method private initMultiWindowTray()V
    .locals 2

    new-instance v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->makeFlashBarList()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setMultiWindowTrayInfo(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->makeMultiWindowTray()V

    return-void
.end method

.method private initRecentPanel()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f040029

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    if-nez v0, :cond_4

    const-string v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsWindow;->initMultiWindowTray()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentsCallbacks(Lcom/android/systemui/recent/IRecentsUI;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setMinSwipeAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v1, Lcom/android/systemui/recent/RecentsWindow$TouchOutsideListener;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recent/RecentsWindow$TouchOutsideListener;-><init>(Lcom/android/systemui/recent/RecentsWindow;Lcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flip_font_style"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFlipFont:I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f04002a

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiWindowTrayInfo:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->setMultiWindowTrayInfo(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->makeMultiWindowTray()V

    goto :goto_1
.end method

.method private isShowing(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.RECENTSWINDOW_SHOWING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "isShowing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dismissAndGoBack()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    return-void
.end method

.method public dismissAndGoHome()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mPkgManagerReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mPkgManagerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mMultiUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mKnoxSetupCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mEmergencyChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mEmergencyChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public hide()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide mShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->dismissHelpPopupWindowTraybar()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelPreloadingRecentTasksList()V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    invoke-direct {p0, v3}, Lcom/android/systemui/recent/RecentsWindow;->isShowing(Z)V

    :cond_1
    return-void
.end method

.method public isActivityShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mFeatureMultiwindowRecentUI:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->isActivityShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->isMultiWindowShowing()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsWindow;->initRecentPanel()V

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recent/RecentsPanelView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->show()V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView;->showMultiWindowTray()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    const/4 v4, 0x1

    sget-object v1, Lcom/android/systemui/recent/RecentsWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show mShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/android/systemui/recent/RecentsWindow;->mShowing:Z

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseDisableRecentsHelpPopup:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsWindow;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->showTraybarHelpPopup()V

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/systemui/recent/RecentsWindow;->isShowing(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsWindow;->hide()V

    goto :goto_0
.end method
