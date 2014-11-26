.class public Lcom/android/keyguard/sec/ContextualEventManager;
.super Ljava/lang/Object;
.source "ContextualEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/sec/ContextualEventManager;


# instance fields
.field private AIRPLANE_MODE_START_TIME:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

.field private mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private mSecKeyguardFlightModeView:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

.field private mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

.field private mSecKeyguardStatusView:Landroid/view/View;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v4, "starttime"

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->AIRPLANE_MODE_START_TIME:Ljava/lang/String;

    new-instance v4, Lcom/android/keyguard/sec/ContextualEventManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/sec/ContextualEventManager$1;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/keyguard/sec/ContextualEventManager$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/ContextualEventManager$2;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Lcom/android/keyguard/sec/ContextualEventManager$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/ContextualEventManager$3;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUseCustomWidget()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const v4, 0x7f030028

    invoke-static {p1, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardStatusView:Landroid/view/View;

    :goto_0
    const v4, 0x7f03004e

    invoke-static {p1, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v6, "statusView"

    iget-object v7, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardStatusView:Landroid/view/View;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x1336

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "requestClass"

    const-string v5, "flightmode"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "isFlightMode"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.android.sms.action.CLEAR_ALL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void

    :cond_1
    const v4, 0x7f030029

    invoke-static {p1, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardStatusView:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateMissedAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateMissedEventRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/ContextualEventManager;)Landroid/widget/RemoteViews$OnClickHandler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/ContextualEventManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEventAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEventRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;I)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/ContextualEventManager;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager;->handleUpdateFlightMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/ContextualEventManager;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/ContextualEventManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/ContextualEventManager;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/ContextualEventManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/ContextualEventManager;
    .locals 1
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/keyguard/sec/ContextualEventManager;->sInstance:Lcom/android/keyguard/sec/ContextualEventManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/ContextualEventManager;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/ContextualEventManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/ContextualEventManager;->sInstance:Lcom/android/keyguard/sec/ContextualEventManager;

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/ContextualEventManager;->sInstance:Lcom/android/keyguard/sec/ContextualEventManager;

    return-object v0
.end method

.method private handleUpdateEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    if-eqz p1, :cond_0

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v0

    :cond_1
    if-eqz v3, :cond_5

    const-string v4, "com.sec.android.shealth"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    # setter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$902(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;->onHealthContentsUpdated()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v5, "ContextualEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateContextualEvent() mOnClickHandler="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, "null"

    :goto_1
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p2, v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    # setter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$902(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateEvent() couldn\'t inflate view for contextual event of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "not null"

    goto :goto_1

    :cond_5
    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateEvent() add contextual event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "com.sec.android.shealth"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;->onHealthContentsUpdated()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    goto/16 :goto_0
.end method

.method private handleUpdateEventAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v5, "ContextualEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContextualEvent() mOnClickHandler="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "null"

    :goto_0
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopContextualEvent()Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    move-result-object v4

    # setter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v4, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$902(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p2, v4, v5, v6}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v4, "not null"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleUpdateEventAdded() couldn\'t inflate view for contextual event of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    if-eqz p1, :cond_4

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v3, v0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # setter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v3, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$902(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :goto_3
    const-string v4, "com.sec.android.shealth"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;->onHealthContentsUpdated()V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/widget/RemoteViews;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private handleUpdateEventRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    if-eqz p1, :cond_0

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v2, "com.sec.android.shealth"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;->onHealthContentsRemoved()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    goto :goto_0
.end method

.method private handleUpdateFlightMode(Ljava/lang/String;I)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const-string v2, "ContextualEventManager"

    const-string v3, "---handleUpdateFlightMode() "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    const v3, 0x7f03004c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iput-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardFlightModeView:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardFlightModeView:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->isTabletModel()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->AIRPLANE_MODE_START_TIME:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v2, "flightmode"

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string v2, "flightmode"

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ContextualEventManager"

    const-string v3, "handleUpdateFlightMode() old "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    goto :goto_0

    :cond_3
    const-string v2, "ContextualEventManager"

    const-string v3, "handleUpdateFlightMode() new "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v2, "flightmode"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v4, "flightmode"

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardFlightModeView:Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private handleUpdateMissedAdded(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    const-string v2, "ContextualEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleUpdateMissedAdded() requestClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " views="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "missedEvent"

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContextualEventManager"

    const-string v3, "handleUpdateMissedAdded() old "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->setMissedEventView(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "ContextualEventManager"

    const-string v3, "handleUpdateMissedAdded() new "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v2, "missedEvent"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->setMissedEventView(Ljava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v4, "missedEvent"

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    goto :goto_0
.end method

.method private handleUpdateMissedEventRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->removeMissedEventView(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    return-void
.end method

.method private isMissedEventMovedToPrivateMode(Ljava/lang/String;)Z
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "missedEvent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getSecretPackageList(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->isCallExist()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.android.phone"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->isMsgExist()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.android.mms"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isRequestClassMissedEvent(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isRequestClassMusic(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private updateContainer()V
    .locals 2

    const-string v0, "ContextualEventManager"

    const-string v1, "updateContainer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/ContextualEventContainer;->update()V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateMissedEvent(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->showBouncer(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected clearMissedEvent()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v2, "missedEvent"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContextualEventManager"

    const-string v3, "clearMissedEvent()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->clearMissedEventView()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    :cond_1
    return-void
.end method

.method public getHealthView()Landroid/widget/RemoteViews;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v3, "com.sec.android.shealth"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$900(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/widget/RemoteViews;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected getTopContextualEvent()Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "ContextualEventManager"

    const-string v8, "getTopContextualEvent()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "kids_home_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v2, v5

    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "emergency_mode"

    const/4 v9, -0x2

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_2

    move v1, v5

    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ultra_powersaving_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v3, v5

    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_3
    if-ltz v0, :cond_8

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.shealth"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_1
    move v2, v6

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    const-string v5, "statusView"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "music"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "com.sec.android.app.voicenote.common.service.VNWidgetProvider"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_5
    if-eqz v1, :cond_6

    const-string v5, "statusView"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "missedEvent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_6
    if-eqz v3, :cond_7

    const-string v5, "statusView"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "missedEvent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_7
    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/ContextualEventManager;->isMissedEventMovedToPrivateMode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    :goto_4
    return-object v5

    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    goto :goto_4
.end method

.method public getTopEventClass()Ljava/lang/String;
    .locals 3

    const-string v1, "ContextualEventManager"

    const-string v2, "getTopEventClass()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopContextualEvent()Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    move-result-object v0

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getTopEventView()Landroid/view/View;
    .locals 7

    const-string v4, "ContextualEventManager"

    const-string v5, "getTopEventView()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopContextualEvent()Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "statusView"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;->onStatusViewShowed()V

    :cond_0
    :goto_0
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "top view = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;->onStatusViewGone()V

    goto :goto_0

    :cond_3
    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$900(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_4

    :try_start_0
    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "top view = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->remoteViews:Landroid/widget/RemoteViews;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$900(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/widget/RemoteViews;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v4, v5, v3, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "ContextualEventManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopEventView() couldn\'t inflate view for contextual event of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/ContextualEventManager;->removeContextualEvent(Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const-string v4, "ContextualEventManager"

    const-string v5, "top view == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public hideBouncer()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->hideBouncer()V

    :cond_0
    return-void
.end method

.method public isClockTop()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statusView"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ContextualEventManager"

    const-string v2, "isClockTop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "ContextualEventManager"

    const-string v2, "!isClockTop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMissedEventTop()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->getTopEventClass()Ljava/lang/String;

    move-result-object v0

    const-string v1, "missedEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isMusicShowing()Z
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v2, "music"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onUserSwitched()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/KeyguardProperties;->isDualLCDFolderDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x1336

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "requestClass"

    const-string v5, "flightmode"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "isFlightMode"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public registerContextualEventManagerCallback(Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->registerContextualEventManagerCallback(Lcom/android/keyguard/sec/SecKeyguardMissedEventView$ContextualEventManagerCallback;)V

    :cond_0
    return-void
.end method

.method public removeContextualEvent(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;

    const/16 v7, 0x1338

    const/16 v6, 0x1330

    const/16 v5, 0x1332

    const-string v2, "ContextualEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeContextualEvent(): requestClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "statusView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ContextualEventManager"

    const-string v3, "removeContextualEvent() Status view should be protected!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->isRequestClassMissedEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "com.android.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v6, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestClass"

    const-string v3, "com.android.phone"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v2, "com.android.mms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestClass"

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    const-string v2, "com.android.roaming"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v7, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestClass"

    const-string v3, "com.android.roaming"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x1334

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public removeContextualEventManagerCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->removeContextualEventManagerCallback()V

    :cond_0
    return-void
.end method

.method public removeContextualMusicEvent(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const-string v2, "ContextualEventManager"

    const-string v3, "removeContextualMusicEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->isRequestClassMusic(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v2, "music"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    :cond_2
    return-void
.end method

.method public setContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    const/16 v8, 0x1337

    const/16 v7, 0x1333

    const/16 v6, 0x1331

    const/16 v5, 0x132f

    const-string v3, "ContextualEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContextualEvent() remote view: requestClass="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " views="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_1

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "statusView"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ContextualEventManager"

    const-string v3, "cannot replace clock view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v2, "not null"

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->isRequestClassMissedEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "com.android.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestClass"

    const-string v3, "com.android.phone"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_4
    const-string v2, "com.android.mms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v6, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestClass"

    const-string v3, "com.android.mms"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_6
    const-string v2, "com.android.roaming"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v8, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestClass"

    const-string v3, "com.android.roaming"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v7, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1
.end method

.method protected setContextualEventContainer(Lcom/android/keyguard/sec/ContextualEventContainer;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/sec/ContextualEventContainer;

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mContextualEventContainer:Lcom/android/keyguard/sec/ContextualEventContainer;

    return-void
.end method

.method public setContextualMusicEvent(Ljava/lang/String;Landroid/view/View;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/view/View;

    const-string v2, "ContextualEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContextualEvent() view: requestClass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/ContextualEventManager;->isRequestClassMusic(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->isMusicShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v2, "music"

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->requestClass:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$800(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContextualEventManager"

    const-string v3, "MUSIC_VIEW()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v4, "music"

    invoke-direct {v3, p0, v4, p2}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->updateContainer()V

    goto :goto_0
.end method

.method public setHealthViewCallback(Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mHealthViewCallback:Lcom/android/keyguard/KeyguardHostView$HealthViewCallback;

    return-void
.end method

.method public setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2
    .param p1    # Landroid/widget/RemoteViews$OnClickHandler;

    const-string v0, "ContextualEventManager"

    const-string v1, "setOnClickHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mSecKeyguardMissedEventView:Lcom/android/keyguard/sec/SecKeyguardMissedEventView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/sec/SecKeyguardMissedEventView;->setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    return-void
.end method

.method protected setStatusView(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const-string v0, "ContextualEventManager"

    const-string v1, "status view added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    const-string v3, "statusView"

    invoke-direct {v2, p0, v3, p1}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;-><init>(Lcom/android/keyguard/sec/ContextualEventManager;Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public updateClock()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/ContextualEventManager;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ContextualEventManager"

    const-string v2, "updateClock()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mViewStack:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;

    # getter for: Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->view:Landroid/view/View;
    invoke-static {v1}, Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;->access$1100(Lcom/android/keyguard/sec/ContextualEventManager$ContextualEvent;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/keyguard/sec/SecKeyguardStatusView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/sec/SecKeyguardStatusView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecKeyguardStatusView;->updateClock()V

    :cond_0
    instance-of v1, v0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardCustomStatusView;->updateClock()V

    :cond_1
    return-void
.end method

.method public updateContextualEvent(Ljava/lang/String;Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/widget/RemoteViews;

    const/16 v5, 0x1335

    const-string v3, "ContextualEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateContextualEvent() remote view: requestClass="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " views="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string v2, "not null"

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "requestClass"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "views"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/keyguard/sec/ContextualEventManager;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
