.class public Lcom/touchtype/personalizer/PersonalizerService;
.super Landroid/app/IntentService;
.source "PersonalizerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;,
        Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;,
        Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;,
        Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;,
        Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;
    }
.end annotation


# static fields
.field public static final ACTION_ENABLE_PERSONALIZATION:Ljava/lang/String; = "com.touchtype.personalizer.ACTION_ENABLE_PERSONALIZATION"

.field public static final INTENT_REQUIRED:Z = true

.field public static final KEY_DISABLED:Ljava/lang/String; = "enabled"

.field public static final KEY_ENABLE_TIME:Ljava/lang/String; = "enable_time"

.field public static final KEY_LASTRUN:Ljava/lang/String; = "lastrun"

.field public static final KEY_PERSONALIZER_ERROR:Ljava/lang/String; = "com.touchtype.personalizer.error"

.field public static final KEY_PREVIOUS_STATE:Ljava/lang/String; = "previous_state"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final MAX_SERVICE_TRY_COUNT:I = 0x5

.field public static final NO_INTENT_REQUIRED:Z = false

.field public static final PERSONALIZERS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSONALIZER_COMPLETE:I = 0x3

.field public static final PERSONALIZER_DISABLED:I = -0x1

.field public static final PERSONALIZER_FAILED:I = 0x2

.field public static final PERSONALIZER_NOT_RUN:I = 0x0

.field public static final PERSONALIZER_NO_CONTACTS:I = 0x5

.field public static final PERSONALIZER_NO_MESSAGES:I = 0x4

.field public static final PERSONALIZER_PREFS:Ljava/lang/String; = "personalizer_service"

.field public static final PERSONALIZER_RUNNING:I = 0x1

.field public static final SERVICE:Ljava/lang/String; = "service"

.field private static final SERVICE_SLEEP_TIME:J = 0x2710L

.field private static final SLEEP_TIME:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mContactsTimedTask:Ljava/lang/Runnable;

.field private mContactsTryCount:I

.field private mContext:Landroid/content/Context;

.field private mDeleteRemoteTimedTask:Ljava/lang/Runnable;

.field private mDeleteTryCount:I

.field private mGotContactsProgress:Z

.field private mGotSmsProgress:Z

.field private mHandler:Landroid/os/Handler;

.field private mPersonalizerHandler:Landroid/os/Handler;

.field private mPersonalizerLastRun:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonalizerPreviousState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonalizerState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

.field private mSmsTimedTask:Ljava/lang/Runnable;

.field private mSmsTryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/touchtype/personalizer/PersonalizerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_facebook"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_weibo"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_gmail"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_twitter"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_renren"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_sms"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_contacts"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    const-string v1, "pref_personalize_delremote"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "PersonalizerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;-><init>(Lcom/touchtype/personalizer/PersonalizerService;)V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$1200(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 1

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteTryCount:I

    return v0
.end method

.method static synthetic access$1208(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 2

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteTryCount:I

    return v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteRemoteTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/touchtype/personalizer/PersonalizerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mGotSmsProgress:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/touchtype/personalizer/PersonalizerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mGotSmsProgress:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$2100(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 1

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTryCount:I

    return v0
.end method

.method static synthetic access$2108(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 2

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTryCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/touchtype/personalizer/PersonalizerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mGotContactsProgress:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/touchtype/personalizer/PersonalizerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mGotContactsProgress:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 1

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I

    return v0
.end method

.method static synthetic access$2708(Lcom/touchtype/personalizer/PersonalizerService;)I
    .locals 2

    iget v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/touchtype/personalizer/PersonalizerService;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/touchtype/personalizer/PersonalizerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    return-void
.end method

.method static synthetic access$600(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/touchtype/personalizer/PersonalizerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->disableRemotePersonalizers()V

    return-void
.end method

.method static synthetic access$800(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizationRequest;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    return-object v0
.end method

.method static synthetic access$902(Lcom/touchtype/personalizer/PersonalizerService;Lcom/touchtype/personalizer/PersonalizationRequest;)Lcom/touchtype/personalizer/PersonalizationRequest;
    .locals 0

    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mRequest:Lcom/touchtype/personalizer/PersonalizationRequest;

    return-object p1
.end method

.method private createNotification(ILjava/lang/String;IZ)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "%1$s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p2, v6, v8

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const/4 v0, 0x0

    if-eqz p4, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v6, "com.touchtype.personalizer.PERSONALIZER_SETTINGS_ACTIVITY"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.touchtype.personalizer.PersonalizerSettingsActivity"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x20000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v6, 0x5

    if-eq p3, v6, :cond_0

    const/4 v6, 0x6

    if-eq p3, v6, :cond_0

    invoke-virtual {p0, p3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const-string v6, "com.touchtype.personalizer.error"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const/high16 v7, 0x8000000

    invoke-static {v6, v8, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification;

    const v6, 0x7f020391

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v6, v5, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const v8, 0x7f0e000f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v6, v7, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v6, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, p3, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    move-object v5, v4

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto :goto_1
.end method

.method private disableRemotePersonalizers()V
    .locals 5

    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    return-void
.end method

.method private enableRemotePersonalizers()V
    .locals 5

    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerPreviousState(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    return-void
.end method

.method private getPersonalizerPreviousState(I)I
    .locals 2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Intent;)V
    .locals 12

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v10, "com.touchtype.personalizer.ACTION_ENABLE_PERSONALIZATION"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v10, "Got intent with ACTION_ENABLE_PERSONALIZATION"

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->enableRemotePersonalizers()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v1, "id"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "path"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "params"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "modelname"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "packagename"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v1, "name"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "serviceid"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v1, 0x5

    if-ne v8, v1, :cond_2

    const/4 v1, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v1, v10, v11}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;

    invoke-direct {v1, p0, v2, v3, v8}, Lcom/touchtype/personalizer/PersonalizerService$RunSmsParser;-><init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;I)V

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTimedTask:Ljava/lang/Runnable;

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v10, "Adding SMS parse job to queue"

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerService;->mSmsTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    if-ne v8, v1, :cond_3

    const/4 v1, 0x6

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v1, v10, v11}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    invoke-direct {v1, p0, v2, v3, v8}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;-><init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;I)V

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v10, "Adding Contacts parse job to queue"

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    if-ne v8, v1, :cond_4

    const/4 v1, 0x7

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v1, v10, v11}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    new-instance v1, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    invoke-direct {v1, p0, v5, v4, v8}, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;-><init>(Lcom/touchtype/personalizer/PersonalizerService;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteRemoteTimedTask:Ljava/lang/Runnable;

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v10, "Adding delete remote data job to queue"

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/touchtype/personalizer/PersonalizerService;->mDeleteRemoteTimedTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    new-instance v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;-><init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " parse job to queue"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private initStoredState()V
    .locals 8

    const/4 v7, 0x0

    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v2, v3, v7}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastrun_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previous_state_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerPreviousState(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setPersonalizerLastRun(IJ)V
    .locals 3

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPersonalizerPreviousState(II)V
    .locals 3

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPersonalizerState(IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerPreviousState(II)V

    :cond_0
    return-void
.end method

.method private writeStoredState()V
    .locals 7

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v4, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastrun_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerLastRun(I)J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_2
    iget-object v4, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previous_state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerPreviousState(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public clearLanguageData()Z
    .locals 12

    const/4 v11, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getSwiftKeySession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v4

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    :try_start_0
    invoke-virtual {v4, v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)Z
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    :goto_0
    if-eqz v5, :cond_2

    sget-object v7, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v7, Lcom/touchtype/personalizer/PersonalizerService;->PERSONALIZERS:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerPreviousState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    :cond_2
    return v5
.end method

.method public getPersonalizerLastRun(I)J
    .locals 2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerLastRun:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonalizerState(I)I
    .locals 2

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    const/4 v7, 0x1

    sget-object v5, Lcom/touchtype/personalizer/PersonalizerService;->TAG:Ljava/lang/String;

    const-string v6, "Creating personalizer service"

    invoke-static {v5, v6}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    const-string v5, "personalizer_service"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/touchtype/personalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->initStoredState()V

    const/4 v4, 0x0

    sget-object v0, Lcom/touchtype/personalizer/Personalizer;->SERVICE_LIST:[I

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-direct {p0, v3}, Lcom/touchtype/personalizer/PersonalizerService;->getPersonalizerPreviousState(I)I

    move-result v5

    invoke-direct {p0, v3, v5, v7}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerService;->init(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerService;->init(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setFailed(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V

    invoke-direct {p0}, Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V

    return-void
.end method
