.class public Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AdaptiveDisplayQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;
    }
.end annotation


# static fields
.field private static final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String; = "screen_mode_automatic_setting"

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "screen_mode_setting"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-AdaptiveDisplayQuickSettingButton"


# instance fields
.field private mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1    # Landroid/content/Context;

    const v2, 0x7f0b0117

    const v1, 0x7f0b0108

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    invoke-direct {p0, p1, v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    const v3, 0x7f02022e

    const v4, 0x7f02022d

    const v5, 0x7f02022c

    move-object v0, p0

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(IIIIIII)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->getAdaptiveDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_mode_automatic_setting"

    const/4 v2, -0x2

    invoke-static {v0, v1, v6, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v8, :cond_2

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mState:Z

    return-void

    :cond_0
    const v0, 0x7f0202c6

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->initLayout(III)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v8, v6

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->getAdaptiveDisplayEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mState:Z

    return p1
.end method

.method private getAdaptiveDisplayEnabled()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_automatic_setting"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private setAdaptiveDisplayEnabled(Z)V
    .locals 6
    .param p1    # Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, -0x2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mState:Z

    if-eq v3, p1, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mAdaptiveDisplayForVZW:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_mode_automatic_setting"

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ADAPTIVE_DISPLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_mode_automatic_setting"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ADAPTIVE_DISPLAY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v1, :cond_5

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ModePreviewTablet"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.NewModePreview"

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public deinit()V
    .locals 2

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public init()V
    .locals 5

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "STATUSBAR-AdaptiveDisplayQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdaptiveDisplay onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->setAdaptiveDisplayEnabled(Z)V

    return-void
.end method

.method public onLongClick()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsPhone:Z

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.ModePreviewTablet"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.NewModePreview"

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
    .param p1    # Landroid/content/pm/UserInfo;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton;->mAdaptiveDisplayObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AdaptiveDisplayQuickSettingButton$AdaptiveDisplayObserver;->onChange(Z)V

    return-void
.end method
