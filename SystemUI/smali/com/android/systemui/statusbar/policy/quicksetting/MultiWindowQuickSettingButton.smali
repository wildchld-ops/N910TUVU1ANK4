.class public Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "MultiWindowQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;,
        Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;
    }
.end annotation


# static fields
.field private static final CONTAINER_CHANGE_MODE_INTENT:Ljava/lang/String; = "com.sec.knox.containersettings.changemode.knoxlauncher"

.field private static final DB_MULTI_WINDOW_MODE_ON:Ljava/lang/String; = "multi_window_enabled"

.field private static final EASY_MODE_OFF:Ljava/lang/String; = "easy_mode_switch"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-MultiWindowSettingButton"


# instance fields
.field private final MAX_TASKS:I

.field private bGotoKnoxMode:Z

.field private isActive:Ljava/lang/Boolean;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMasterState:Z

.field private mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

.field private mQuicksettingbtn:Landroid/view/View;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const v1, 0x7f0b00f9

    const/4 v9, 0x2

    const/4 v10, -0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->bGotoKnoxMode:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->MAX_TASKS:I

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMasterState:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_1

    const v2, 0x7f0b0122

    const v3, 0x7f020266

    const v4, 0x7f020265

    const v5, 0x7f020264

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    :goto_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mQuicksettingbtn:Landroid/view/View;

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_2

    move v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMasterState:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mQuicksettingbtn:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMasterState:Z

    if-eqz v0, :cond_4

    const v0, 0x3ecccccd

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMasterState:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v9}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v8, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_5

    :goto_4
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    return-void

    :cond_1
    const v0, 0x7f0b0122

    const v2, 0x7f020267

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    :cond_2
    move v0, v9

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    const/high16 v0, 0x3f800000

    goto :goto_3

    :cond_5
    move v8, v6

    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->bGotoKnoxMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->bGotoKnoxMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->changeStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMasterState:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMasterState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mQuicksettingbtn:Landroid/view/View;

    return-object v0
.end method

.method private changeStatus()V
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "easy_mode_switch"

    const/4 v5, -0x2

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMasterState:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mQuicksettingbtn:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMasterState:Z

    if-eqz v0, :cond_2

    const v0, 0x3ecccccd

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->bGotoKnoxMode:Z

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMasterState:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_4
.end method

.method private getMode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private isPopupWindowActive()Ljava/lang/Boolean;
    .locals 5

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private showConfirmPopup()V
    .locals 5

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->isLightTheme:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f0b0122

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0266

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public doNext()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->removeEnabledScreenReaderValue()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setMode(I)V

    return-void
.end method

.method public doPrevious()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.knox.containersettings.changemode.knoxlauncher"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onClick(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "STATUSBAR-MultiWindowSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "STATUSBAR-MultiWindowSettingButton"

    const-string v1, "onClick(): Multi window state change is not allowed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->isPopupWindowActive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->showConfirmPopup()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    const/4 v4, -0x2

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0267

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    if-eqz v0, :cond_4

    const-string v0, "STATUSBAR-MultiWindowSettingButton"

    const-string v1, "onClick(): Processing..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->isEnabledScreenReaderService()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0b0136

    const v1, 0x7f0b0137

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->showTalkBackDisablePopup(II)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    if-eqz p1, :cond_6

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->setMode(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->statusBarCollapse()V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method public onLongClick()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_2013_SETTINGS_UI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "settings_listui"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$MultiWindowSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$DisplaySettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userSwitched(Landroid/content/pm/UserInfo;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mMultiWindowModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->mEasyModeObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$EasyModeObserver;->onChange(Z)V

    return-void
.end method
