.class public Lcom/android/keyguard/sec/SecKeyguardClock;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardClock.java"


# instance fields
.field private batteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarm:Landroid/widget/TextView;

.field private mAlarmSpace:Landroid/view/View;

.field private mAmpmKorTypeface:Landroid/graphics/Typeface;

.field private mAmpmOpenTypeface:Landroid/graphics/Typeface;

.field private mBatteryLevel:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDualClock:Landroid/view/View;

.field private mDualClockHomeTotal:Landroid/view/View;

.field private mDualClockRoamingTotal:Landroid/view/View;

.field private mDualClockTypeface:Landroid/graphics/Typeface;

.field private mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualHomeDate:Landroid/widget/TextView;

.field private mDualHomeLocale:Landroid/widget/TextView;

.field private mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mDualRoamingDate:Landroid/widget/TextView;

.field private mDualRoamingLocale:Landroid/widget/TextView;

.field private mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mHandler:Landroid/os/Handler;

.field private mIsSingleClock:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mSingleClock:Landroid/view/View;

.field private mSingleClockTotal:Landroid/view/View;

.field private mSingleClockTypeface:Landroid/graphics/Typeface;

.field private mSingleDate:Landroid/widget/TextView;

.field protected mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

.field private mTravelText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClock$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClock$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClock$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$2;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/SecKeyguardClock$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardClock$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardClock;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardClock;

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/sec/SecKeyguardClock;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardClock;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardClock;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciption()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardClock;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardClock;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardClock;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->handleUpdateClock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardClock;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardClock;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleUpdateClock()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->updateClock()V

    return-void
.end method

.method private hasFile(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "SecKeyguardClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v2, "SecKeyguardClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not exist File("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPreferedActivity(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTravelWallpaperSet()Z
    .locals 4

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper_path"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/com.samsung.android.service.travel/files/images/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private plusFullDateDescription(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 3

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10400f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10400f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private refreshAlarm()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0600b7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarmSpace:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarmSpace:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    const-string v1, "SecKeyguardClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshAlarm(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshOwnerInfo()V
    .locals 10

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v9, -0x2

    const/4 v4, 0x1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmFeature()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v7}, Lcom/android/keyguard/sec/SecKeyguardClock;->isPreferedActivity(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_show_info"

    invoke-static {v7, v8, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v4, :cond_2

    move v1, v4

    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v3

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_additional_info"

    invoke-static {v7, v8, v4, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v4, :cond_4

    move v0, v4

    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const/4 v4, 0x4

    :goto_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_2

    :cond_5
    move v4, v6

    goto :goto_3
.end method

.method private refreshTravelInfo()V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->isTravelWallpaperSet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_name"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static setAutoHomeTimezone(Landroid/content/Context;)V
    .locals 12
    .param p0    # Landroid/content/Context;

    const/4 v11, 0x5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "homecity_timezone"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v8

    if-ge v4, v8, :cond_0

    invoke-static {v4}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v11, :cond_2

    const/4 v5, 0x5

    :cond_0
    const-string v8, "SecKeyguardClock"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HomeTimezone(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne v5, v11, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    const-string v3, "Asia/Shanghai"

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "homecity_timezone"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "homecity_timezone"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private setClockContentDesciption()V
    .locals 8

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v4, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    const-string v6, "ko"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    :goto_1
    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    :goto_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    :goto_3
    iget-boolean v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    if-ne v6, v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v5, v6, v3, v2}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    :goto_4
    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v5, v6, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    iget-object v6, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-direct {p0, v5, v6, v0, v2}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V

    goto :goto_4
.end method

.method private setClockContentDesciptionPlusBattery(Landroid/view/View;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Z)V
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p3    # Lcom/android/keyguard/sec/SecKeyguardTextClock;
    .param p4    # Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardClock$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecKeyguardClock$5;-><init>(Lcom/android/keyguard/sec/SecKeyguardClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;Lcom/android/keyguard/sec/SecKeyguardTextClock;ZLandroid/view/View;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setDualClockStyle(I)V
    .locals 7
    .param p1    # I

    const/high16 v6, 0x41700000

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v3

    if-eqz v3, :cond_5

    int-to-float v3, v0

    div-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v3

    if-eqz v3, :cond_6

    int-to-float v3, v0

    div-float/2addr v3, v6

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_3
    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v4, v0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_1

    :pswitch_2
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_1

    :cond_5
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_2

    :cond_6
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateDualClock()V
    .locals 11

    const/4 v7, 0x4

    const/4 v10, -0x2

    const/16 v9, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    const v8, 0x7f0b011d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    const v8, 0x7f0b015b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v5, :cond_0

    if-eqz v4, :cond_4

    const-string v5, "ko"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    if-eqz v5, :cond_2

    const-string v5, "ar"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "fa"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_2
    :goto_1
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "homecity_timezone"

    invoke-static {v5, v8, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_screen_date_and_year"

    invoke-static {v5, v8, v2, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v2, :cond_6

    :goto_2
    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v0}, Landroid/widget/TextClock;->setTimeZone(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "Asia/Seoul"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0600ba

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/view/View;->setVisibility(I)V

    const-string v5, "SecKeyguardClock"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateDualClock() home: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    invoke-direct {p0, v5, v1}, Lcom/android/keyguard/sec/SecKeyguardClock;->plusFullDateDescription(Landroid/widget/TextView;Ljava/util/Calendar;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSktModel()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0600bb

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    :goto_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const-string v5, "SecKeyguardClock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDualClock() roaming: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    invoke-direct {p0, v5, v3}, Lcom/android/keyguard/sec/SecKeyguardClock;->plusFullDateDescription(Landroid/widget/TextView;Ljava/util/Calendar;)V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutDirection(I)V

    goto/16 :goto_1

    :cond_6
    move v2, v6

    goto/16 :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0600b8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0600b8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    move v5, v7

    goto/16 :goto_4

    :cond_a
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isATTFeature()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingLocale:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_b
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingLocale:Landroid/widget/TextView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v9, 0x7f0600b9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_c
    move v6, v7

    goto/16 :goto_6
.end method

.method private updateSingleClock()V
    .locals 13

    const/4 v12, -0x2

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    const v10, 0x7f0b011d

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    const v10, 0x7f0b015b

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleDate:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/android/keyguard/sec/KeyguardProperties;->getDateFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleDate:Landroid/widget/TextView;

    invoke-direct {p0, v5, v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->plusFullDateDescription(Landroid/widget/TextView;Ljava/util/Calendar;)V

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "lock_screen_date_and_year"

    invoke-static {v5, v10, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v1, v6

    :goto_0
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "lock_screen_show_clock"

    invoke-static {v5, v10, v6, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v2, v6

    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    if-eqz v2, :cond_7

    move v5, v7

    :goto_2
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleDate:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    move v5, v7

    :goto_3
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    const-string v5, "SecKeyguardClock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSingleClock(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardClock;->setAutoHomeTimezone(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTProject()Z

    move-result v3

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v5, :cond_1

    if-eqz v4, :cond_c

    const-string v5, "ko"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v10, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_9

    move v5, v8

    :goto_4
    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->is24HourModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_a

    :goto_5
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_6
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    if-eqz v5, :cond_3

    const-string v5, "ar"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "fa"

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_3
    :goto_7
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDcmFeature()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "com.nttdocomo.android.dhome"

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/SecKeyguardClock;->isPreferedActivity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_4
    :goto_8
    return-void

    :cond_5
    move v1, v7

    goto/16 :goto_0

    :cond_6
    move v2, v7

    goto/16 :goto_1

    :cond_7
    move v5, v8

    goto/16 :goto_2

    :cond_8
    move v5, v8

    goto/16 :goto_3

    :cond_9
    move v5, v9

    goto :goto_4

    :cond_a
    move v8, v9

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_c
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v3, :cond_d

    :goto_9
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_d
    move v8, v9

    goto :goto_9

    :cond_e
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutDirection(I)V

    goto :goto_7

    :cond_f
    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_8
.end method


# virtual methods
.method public isSingleClock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const-string v2, "SecKeyguardClock"

    const-string v3, "onAttachedToWindow()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dualclock_menu_settings"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->updateClock()V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "SecKeyguardClock"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->batteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const v0, 0x7f0b013f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    const v0, 0x7f0b0140

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTotal:Landroid/view/View;

    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockRoamingTotal:Landroid/view/View;

    const v0, 0x7f0b013a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockHomeTotal:Landroid/view/View;

    const v0, 0x7f0b0142

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0143

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0141

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0144

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleDate:Landroid/widget/TextView;

    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingLocale:Landroid/widget/TextView;

    const v0, 0x7f0b0136

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0137

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b0138

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualRoamingDate:Landroid/widget/TextView;

    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeLocale:Landroid/widget/TextView;

    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpm:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    const v0, 0x7f0b013e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualHomeDate:Landroid/widget/TextView;

    const v0, 0x7f0b011d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarm:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    const v1, 0x7f0b0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAlarmSpace:Landroid/view/View;

    const v0, 0x7f0b015b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0b0162

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mTravelText:Landroid/widget/TextView;

    const-string v0, "samsung-neo-num3T"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTypeface:Landroid/graphics/Typeface;

    const-string v0, "samsung-neo-num3T"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClockTypeface:Landroid/graphics/Typeface;

    const-string v0, "/system/fonts/SECRobotoLight-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    const-string v0, "/system/fonts/SamsungSans-Light.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciption()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1    # Z
    .param p2    # I
    .param p3    # Landroid/graphics/Rect;

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->refreshOwnerInfo()V

    return-void
.end method

.method protected setSingleClockStyle(I)V
    .locals 6
    .param p1    # I

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClockTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmOpen:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmOpenTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleAmpmKor:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mAmpmKorTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardTextClock;->isFirstDigitOne()Z

    move-result v2

    if-eqz v2, :cond_4

    int-to-float v2, v0

    const/high16 v3, 0x41700000

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    const-string v2, "SecKeyguardClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fontSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lp.leftMargin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleTime:Lcom/android/keyguard/sec/SecKeyguardTextClock;

    int-to-float v3, v0

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto/16 :goto_1

    :cond_4
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected updateClock()V
    .locals 15

    const/16 v14, 0x8

    const/4 v13, -0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "SecKeyguardClock"

    const-string v12, "updateClock()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dualclock_menu_settings"

    invoke-static {v11, v12, v10, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v9, :cond_5

    move v1, v9

    :goto_0
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_screen_clock_size"

    invoke-static {v11, v12, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "easy_mode_switch"

    invoke-static {v11, v12, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v9, :cond_6

    move v2, v10

    :goto_1
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "homecity_timezone"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    move v4, v10

    :goto_2
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "emergency_mode"

    invoke-static {v11, v12, v10, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v9, :cond_8

    move v3, v9

    :goto_3
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_show_info"

    invoke-static {v11, v12, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v9, :cond_9

    move v7, v9

    :goto_4
    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "lock_screen_show_clock"

    invoke-static {v11, v12, v9, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v9, :cond_a

    move v6, v9

    :goto_5
    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x2

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isIgnoreNationalRoaming()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v5, 0x0

    :cond_2
    const-string v12, "SecKeyguardClock"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isShowClock = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", isDualClock = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", isNetworkRoaming = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", !isEasyUxOn = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v2, :cond_b

    move v11, v9

    :goto_6
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", isHometimeExist = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", isEmergencyOn = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", isShowInformation = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_c

    if-eqz v1, :cond_c

    if-eqz v5, :cond_c

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isKoreaFeature()Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_3
    if-eqz v4, :cond_c

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->updateDualClock()V

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setDualClockStyle(I)V

    iput-boolean v10, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    :goto_7
    if-nez v7, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mSingleClock:Landroid/view/View;

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mDualClock:Landroid/view/View;

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setClockContentDesciption()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->refreshAlarm()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->refreshOwnerInfo()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->refreshTravelInfo()V

    return-void

    :cond_5
    move v1, v10

    goto/16 :goto_0

    :cond_6
    move v2, v9

    goto/16 :goto_1

    :cond_7
    move v4, v9

    goto/16 :goto_2

    :cond_8
    move v3, v10

    goto/16 :goto_3

    :cond_9
    move v7, v10

    goto/16 :goto_4

    :cond_a
    move v6, v10

    goto/16 :goto_5

    :cond_b
    move v11, v10

    goto :goto_6

    :cond_c
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardClock;->updateSingleClock()V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecKeyguardClock;->setSingleClockStyle(I)V

    iput-boolean v9, p0, Lcom/android/keyguard/sec/SecKeyguardClock;->mIsSingleClock:Z

    goto :goto_7
.end method
