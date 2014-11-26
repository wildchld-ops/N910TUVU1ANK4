.class public Lcom/android/keyguard/sec/ContextualWidgetMonitor;
.super Ljava/lang/Object;
.source "ContextualWidgetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/ContextualWidgetMonitor$4;,
        Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;,
        Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/sec/ContextualWidgetMonitor;


# instance fields
.field private final CONTEXTUAL_WIDGET_RESET_DELAY:J

.field private final FM_RADIO_WIDGET_HIDE:Ljava/lang/String;

.field private final FM_RADIO_WIDGET_SHOW:Ljava/lang/String;

.field private final MISSED_EVENT_ADDED:Ljava/lang/String;

.field private final MISSED_EVENT_REMOVED:Ljava/lang/String;

.field private final MMS_PACKAGE:Ljava/lang/String;

.field private final MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private final PHONE_PACKAGE:Ljava/lang/String;

.field private final REMOTE_ADDED:Ljava/lang/String;

.field private final REMOTE_REMOVED:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

.field private final SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

.field private final TPHONE_PACKAGE:Ljava/lang/String;

.field private mAlreadyAddedWidgetId:I

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mDefaultFMRadioWidget:Landroid/content/ComponentName;

.field private mDefaultMissedWidget:Landroid/content/ComponentName;

.field private mDefaultMusicWidget:Landroid/content/ComponentName;

.field private mDefaultRemoteWidget:Landroid/content/ComponentName;

.field private mDefaultSecMusicWidget:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetContextualWidgetRunnable:Ljava/lang/Runnable;

.field private mShowMissedWidgetBecauseOfRoaming:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v3, "com.android.phone"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->PHONE_PACKAGE:Ljava/lang/String;

    const-string v3, "com.skt.prod.dialer"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->TPHONE_PACKAGE:Ljava/lang/String;

    const-string v3, "com.android.mms"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MMS_PACKAGE:Ljava/lang/String;

    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_ADDED:Ljava/lang/String;

    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MISSED_EVENT_REMOVED:Ljava/lang/String;

    const-string v3, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_SHOW:Ljava/lang/String;

    const-string v3, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->MUSIC_WIDGET_HIDE:Ljava/lang/String;

    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->REMOTE_ADDED:Ljava/lang/String;

    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->REMOTE_REMOVED:Ljava/lang/String;

    const-string v3, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_SHOW:Ljava/lang/String;

    const-string v3, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->SEC_MUSIC_WIDGET_HIDE:Ljava/lang/String;

    const-string v3, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->FM_RADIO_WIDGET_SHOW:Ljava/lang/String;

    const-string v3, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->FM_RADIO_WIDGET_HIDE:Ljava/lang/String;

    new-instance v3, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor$1;-><init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor$2;-><init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iput v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->CONTEXTUAL_WIDGET_RESET_DELAY:J

    new-instance v3, Lcom/android/keyguard/sec/ContextualWidgetMonitor$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor$3;-><init>(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->wipeContextualWidgets()V

    new-instance v3, Landroid/appwidget/AppWidgetHost;

    const v4, 0x4b455947

    invoke-direct {v3, p1, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f060011

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f060012

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f060013

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f060014

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f060015

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f060016

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f06001b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f06001c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    new-instance v3, Landroid/content/ComponentName;

    const v4, 0x7f06001d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f06001e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.internal.policy.impl.keyguard.sec.REMOTE_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.music.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.music.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.fm.intent.action.SHOW_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.fm.intent.action.HIDE_CONTEXTUAL_WIDGET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v3, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isRoamingFeature()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isIgnoreNationalRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMissedEventUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleRemoteWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleSecMusicWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/ContextualWidgetMonitor;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->handleFMRadioWidgetUpdate(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/ContextualWidgetMonitor;)Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    return-object v0
.end method

.method private addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .locals 2
    .param p1    # Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->appWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private appWidget(Landroid/content/ComponentName;)V
    .locals 8
    .param p1    # Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    invoke-interface {v4, v3}, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;->moveToContextualWidget(I)V

    :cond_0
    iput v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "appWidgetCategory"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, p1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->addContextualWidget(I)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "ContexualWidgetMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method private getContextualWidgetId(Landroid/content/ComponentName;)I
    .locals 6
    .param p1    # Landroid/content/ComponentName;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget v3, v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualWidgetMonitor;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->sInstance:Lcom/android/keyguard/sec/ContextualWidgetMonitor;

    return-object v0
.end method

.method private getWidgetId(Landroid/content/ComponentName;)I
    .locals 6
    .param p1    # Landroid/content/ComponentName;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    aget v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget v3, v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleFMRadioWidgetUpdate(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->fmRadio:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->fmRadio:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleMissedEventUpdate()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isMissedEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->missedWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleMusicWidgetUpdate(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->musicWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleRemoteWidgetUpdate(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->remoteWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private handleSecMusicWidgetUpdate(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->addContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;->secMusicWidget:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V

    goto :goto_0
.end method

.method private isIgnoreNationalRoaming()Z
    .locals 3

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PRT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->isNationalRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ContexualWidgetMonitor"

    const-string v2, "isIgnoreNationalRoaming() = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const-string v1, "ContexualWidgetMonitor"

    const-string v2, "isIgnoreNationalRoaming() = false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNationalRoaming()Z
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x0

    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gsm.operator.numeric"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "ContexualWidgetMonitor"

    const-string v5, "isNationalRoaming() = true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const-string v5, "ContexualWidgetMonitor"

    const-string v6, "isNationalRoaming() = false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v5, "ContexualWidgetMonitor"

    const-string v6, "isNationalRoaming() = false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRoamingFeature()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_EnableDataRoamingButtonInQuickPanel"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ContexualWidgetMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoamingFeature() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private removeContextualWidget(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;)V
    .locals 2
    .param p1    # Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidget;

    sget-object v0, Lcom/android/keyguard/sec/ContextualWidgetMonitor$4;->$SwitchMap$com$android$keyguard$sec$ContextualWidgetMonitor$ContextualWidget:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMissedWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultRemoteWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultSecMusicWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mDefaultFMRadioWidget:Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->removeWidget(Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private removeWidget(Landroid/content/ComponentName;)V
    .locals 6
    .param p1    # Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getWidgetId(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAlreadyAddedWidgetId:I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->getContextualWidgetId(Landroid/content/ComponentName;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeContextualWidget(I)Z

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mResetContextualWidgetRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public isMissedEvent()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const-string v6, "com.android.phone"

    invoke-virtual {v3, v6, v5}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v0

    const-string v6, "com.skt.prod.dialer"

    invoke-virtual {v3, v6, v5}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v2

    const-string v6, "com.android.mms"

    const/16 v7, 0x7b

    invoke-virtual {v3, v6, v7}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    iget-boolean v6, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mShowMissedWidgetBecauseOfRoaming:Z

    if-eqz v6, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    return v4
.end method

.method public registerCallback(Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    return-void
.end method

.method public removeCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/ContextualWidgetMonitor;->mCallbacks:Lcom/android/keyguard/sec/ContextualWidgetMonitor$ContextualWidgetMonitorCallback;

    return-void
.end method
