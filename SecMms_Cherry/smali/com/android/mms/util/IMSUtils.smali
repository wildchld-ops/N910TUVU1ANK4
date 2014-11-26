.class public Lcom/android/mms/util/IMSUtils;
.super Ljava/lang/Object;
.source "IMSUtils.java"


# static fields
.field private static final CELL_ONLY:Ljava/lang/String; = "CELL_ONLY"

.field private static final IMS_LOWSIGNAL:Ljava/lang/String; = "IMS_LOWSIGNAL"

.field private static final IMS_LOWSIGNAL_STATUS:Ljava/lang/String; = "IMS_LOWSIGNAL_STATUS"

.field private static final IMS_LOWSIGNAL_VALUE:Ljava/lang/String; = "com.movial.IMS_LOWSIGNAL"

.field private static final TAG:Ljava/lang/String; = "Mms/IMSUtils"

.field private static getBoolean:Ljava/lang/reflect/Method;

.field private static sCellOnly:Ljava/lang/String;

.field private static sIPPhoneSettings:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sIPUtils:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sImsLowSignal:Ljava/lang/String;

.field private static sImsLowSignalStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/IMSUtils;->sIPUtils:Ljava/lang/Class;

    sput-object v0, Lcom/android/mms/util/IMSUtils;->sIPPhoneSettings:Ljava/lang/Class;

    sput-object v0, Lcom/android/mms/util/IMSUtils;->getBoolean:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/mms/util/IMSUtils;->sImsLowSignal:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/IMSUtils;->sImsLowSignalStatus:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/util/IMSUtils;->sCellOnly:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean()Ljava/lang/reflect/Method;
    .locals 5

    sget-object v0, Lcom/android/mms/util/IMSUtils;->getBoolean:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/util/IMSUtils;->getIPPhoneSettingsClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBoolean"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/IMSUtils;->getBoolean:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/android/mms/util/IMSUtils;->getBoolean:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getCellOnly()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/mms/util/IMSUtils;->sCellOnly:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/util/IMSUtils;->sCellOnly:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/mms/util/IMSUtils;->getIPPhoneSettingsClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2}, Lcom/android/mms/util/MethodReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/android/mms/util/IMSUtils;->sCellOnly:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/util/IMSUtils;->sCellOnly:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "CELL_ONLY"

    sput-object v1, Lcom/android/mms/util/IMSUtils;->sCellOnly:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/android/mms/util/IMSUtils;->sCellOnly:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getIPPhoneSettingsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/mms/util/IMSUtils;->sIPPhoneSettings:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.movial.ipphone.IPPhoneSettings"

    invoke-static {v0}, Lcom/android/mms/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/IMSUtils;->sIPPhoneSettings:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/android/mms/util/IMSUtils;->sIPPhoneSettings:Ljava/lang/Class;

    return-object v0
.end method

.method public static getIPUtilsClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/mms/util/IMSUtils;->sIPUtils:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.movial.ipphone.IPUtils"

    invoke-static {v0}, Lcom/android/mms/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/IMSUtils;->sIPUtils:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/android/mms/util/IMSUtils;->sIPUtils:Ljava/lang/Class;

    return-object v0
.end method

.method public static getImsLowSignal()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignal:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignal:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/mms/util/IMSUtils;->getIPUtilsClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IMS_LOWSIGNAL"

    invoke-static {v1, v2}, Lcom/android/mms/util/MethodReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignal:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignal:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "com.movial.IMS_LOWSIGNAL"

    sput-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignal:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignal:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getImsLowSignalStatus()Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignalStatus:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignalStatus:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/mms/util/IMSUtils;->getIPUtilsClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "IMS_LOWSIGNAL_STATUS"

    invoke-static {v1, v2}, Lcom/android/mms/util/MethodReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignalStatus:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignalStatus:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "IMS_LOWSIGNAL_STATUS"

    sput-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignalStatus:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/android/mms/util/IMSUtils;->sImsLowSignalStatus:Ljava/lang/String;

    goto :goto_0
.end method

.method public static registerImsReceiver(Landroid/content/Context;ZLandroid/content/BroadcastReceiver;Z)Z
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # Z
    .param p2    # Landroid/content/BroadcastReceiver;
    .param p3    # Z

    move v2, p3

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/mms/util/IMSUtils;->getBoolean()Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/mms/util/IMSUtils;->getBoolean()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/mms/util/IMSUtils;->getCellOnly()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    :try_start_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/mms/util/IMSUtils;->getImsLowSignal()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string v3, "Mms/IMSUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Mms/IMSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerImsReceiver FAILED. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
