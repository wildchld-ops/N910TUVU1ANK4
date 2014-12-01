.class public Lcom/sec/epdg/mapcon/AppPolicy;
.super Ljava/lang/Object;
.source "AppPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;
    }
.end annotation


# static fields
.field private static final EXTRA_APNTYPE:Ljava/lang/String; = "apntype"

.field private static final EXTRA_RESULT:Ljava/lang/String; = "result"

.field private static final INTENT_HANDOVER_LTE_TO_WLAN:Ljava/lang/String; = "HANDOVER_LTE_TO_WLAN"

.field private static final INTENT_HANDOVER_WLAN_TO_LTE:Ljava/lang/String; = "HANDOVER_WLAN_TO_LTE"

.field private static final TAG:Ljava/lang/String; = "[AppPolicy]"

.field private static mAppPolicies:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            "Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/sec/epdg/mapcon/AppPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/mapcon/AppPolicy;->mAppPolicies:Ljava/util/EnumMap;

    sput-object v0, Lcom/sec/epdg/mapcon/AppPolicy;->mInstance:Lcom/sec/epdg/mapcon/AppPolicy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/epdg/mapcon/AppPolicy;->mAppPolicies:Ljava/util/EnumMap;

    return-void
.end method

.method private fillPendingIntentResult(Z)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;
    .locals 1

    sget-object v0, Lcom/sec/epdg/mapcon/AppPolicy;->mAppPolicies:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    return-object v0
.end method

.method private getCallingPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v2, :cond_0

    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_1
    const-string v5, "[AppPolicy]"

    const-string v6, "Failed to get process name"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected static getInstance()Lcom/sec/epdg/mapcon/AppPolicy;
    .locals 1

    sget-object v0, Lcom/sec/epdg/mapcon/AppPolicy;->mInstance:Lcom/sec/epdg/mapcon/AppPolicy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/epdg/mapcon/AppPolicy;

    invoke-direct {v0}, Lcom/sec/epdg/mapcon/AppPolicy;-><init>()V

    sput-object v0, Lcom/sec/epdg/mapcon/AppPolicy;->mInstance:Lcom/sec/epdg/mapcon/AppPolicy;

    :cond_0
    sget-object v0, Lcom/sec/epdg/mapcon/AppPolicy;->mInstance:Lcom/sec/epdg/mapcon/AppPolicy;

    return-object v0
.end method

.method private sendX2XHandoverBroadcast(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Z)V
    .locals 5

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v2, p3, :cond_0

    const-string v1, "HANDOVER_LTE_TO_WLAN"

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "apntype"

    invoke-virtual {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "[AppPolicy]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handover broadcast: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "HANDOVER_WLAN_TO_LTE"

    goto :goto_0
.end method

.method private sendX2XHandoverResultIntent(Landroid/content/Context;Landroid/app/PendingIntent;Z)V
    .locals 5

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/sec/epdg/mapcon/AppPolicy;->fillPendingIntentResult(Z)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    const-string v2, "[AppPolicy]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handover intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "[AppPolicy]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send failed : intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/AppPolicy;->getAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->getPreferredRat()Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    goto :goto_0
.end method

.method protected notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/epdg/mapcon/AppPolicy;->getAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->getPreferredRat()Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    if-ne p3, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Lcom/sec/epdg/mapcon/AppPolicy;->sendX2XHandoverResultIntent(Landroid/content/Context;Landroid/app/PendingIntent;Z)V

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p5, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/epdg/mapcon/AppPolicy;->sendX2XHandoverBroadcast(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Z)V

    :cond_1
    return-void
.end method

.method protected resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V
    .locals 1

    sget-object v0, Lcom/sec/epdg/mapcon/AppPolicy;->mAppPolicies:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V
    .locals 3

    sget-object v0, Lcom/sec/epdg/mapcon/AppPolicy;->mAppPolicies:Ljava/util/EnumMap;

    new-instance v1, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/AppPolicy;->getCallingPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2, p4}, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;-><init>(Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Ljava/lang/String;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, p3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v3, Ljava/lang/String;

    const-string v4, "APP POLICY\n"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/epdg/mapcon/AppPolicy;->mAppPolicies:Ljava/util/EnumMap;

    invoke-virtual {v4}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    sget-object v4, Lcom/sec/epdg/mapcon/AppPolicy;->mAppPolicies:Ljava/util/EnumMap;

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/mapcon/AppPolicy$PolicyDetails;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    return-object v3
.end method
