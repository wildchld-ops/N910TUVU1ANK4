.class public Lcom/android/mms/reflector/AmbsReflector;
.super Lcom/android/mms/reflector/BaseReflector;
.source "AmbsReflector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/AmbsReflect"

.field protected static sThisInstance:Lcom/android/mms/reflector/AmbsReflector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/reflector/BaseReflector;-><init>()V

    const-string v0, "com.samsung.acms.AcmsWrapper"

    iput-object v0, p0, Lcom/android/mms/reflector/BaseReflector;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/android/mms/reflector/AmbsReflector;
    .locals 1

    sget-object v0, Lcom/android/mms/reflector/AmbsReflector;->sThisInstance:Lcom/android/mms/reflector/AmbsReflector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/reflector/AmbsReflector;

    invoke-direct {v0}, Lcom/android/mms/reflector/AmbsReflector;-><init>()V

    sput-object v0, Lcom/android/mms/reflector/AmbsReflector;->sThisInstance:Lcom/android/mms/reflector/AmbsReflector;

    :cond_0
    sget-object v0, Lcom/android/mms/reflector/AmbsReflector;->sThisInstance:Lcom/android/mms/reflector/AmbsReflector;

    return-object v0
.end method


# virtual methods
.method public MSG_MARK_READ()I
    .locals 3

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v1

    const-string v2, "MSG_MARK_READ"

    invoke-virtual {v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUidFromDB(J)Ljava/lang/String;
    .locals 6
    .param p1    # J

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "getUidFromDB"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getUidWillBeDeleted(Landroid/net/Uri;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 9
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # Lorg/json/JSONArray;
    .param p4    # Lorg/json/JSONArray;

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "getUidWillBeDeleted"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v6

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    aput-object p4, v1, v7

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getUidWillBeDeleted(Lcom/android/mms/ui/MessageItem;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 8
    .param p1    # Lcom/android/mms/ui/MessageItem;
    .param p2    # Lorg/json/JSONArray;
    .param p3    # Lorg/json/JSONArray;

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "getUidWillBeDeleted"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Lcom/android/mms/ui/MessageItem;

    aput-object v3, v2, v4

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v5

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getUidWillBeDeleted([Ljava/lang/Long;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 9
    .param p1    # [Ljava/lang/Long;
    .param p2    # Ljava/lang/String;
    .param p3    # Lorg/json/JSONArray;
    .param p4    # Lorg/json/JSONArray;

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "getUidWillBeDeleted"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/Long;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v6

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    aput-object p4, v1, v7

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getUidWillBeMarkRead(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # Ljava/lang/String;
    .param p4    # Lorg/json/JSONArray;
    .param p5    # Lorg/json/JSONArray;
    .param p6    # I

    const-string v1, "getUidWillBeMarkRead"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lorg/json/JSONArray;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Lorg/json/JSONArray;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public insertAcmsOptMenuItem(Landroid/preference/PreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroid/preference/PreferenceActivity;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "insertAcmsOptMenuItem"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/preference/PreferenceActivity;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public insertedUri(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onInsertNewMessage"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isInitSync()Z
    .locals 2

    const-string v1, "isInitSync"

    invoke-virtual {p0, v1}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmsZcode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "isSmsZcode"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-static {v0, v4}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public listenInitSyncBusyChange(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "listenInitSyncBusyChange"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public listenOOBEChange(Landroid/app/Activity;)V
    .locals 6
    .param p1    # Landroid/app/Activity;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "listenOOBEChange"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public listenOptInSettingChange(Landroid/preference/PreferenceActivity;)V
    .locals 6
    .param p1    # Landroid/preference/PreferenceActivity;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "listenOptInSettingChange"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/preference/PreferenceActivity;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyImNotDefaultSmsApp()V
    .locals 1

    const-string v0, "notifyImNotDefaultSmsApp"

    invoke-virtual {p0, v0}, Lcom/android/mms/reflector/BaseReflector;->invoke(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public onDeleteMessage(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 7
    .param p1    # Lorg/json/JSONArray;
    .param p2    # Lorg/json/JSONArray;

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onDeleteMessage"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v4

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onInsertNewMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onInsertNewMessage"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onMarkReadMessage(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 7
    .param p1    # Lorg/json/JSONArray;
    .param p2    # Lorg/json/JSONArray;

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onMarkReadMessage"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v4

    const-class v3, Lorg/json/JSONArray;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSendMessageFail(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    const-string v1, "onSendMessageFail"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/reflector/BaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public onSendingMessage(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/net/Uri;

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onSendingMessage"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSentMessage(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "onSentMessage"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/reflector/BaseReflector;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {v0, v1}, Lcom/android/mms/util/MethodReflector;->invokeStatic(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public stopListenInitSyncUpdated()V
    .locals 1

    const-string v0, "stopListenInitSyncUpdated"

    invoke-virtual {p0, v0}, Lcom/android/mms/reflector/BaseReflector;->invoke(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public stopListenOOBEChange()V
    .locals 1

    const-string v0, "stopListenOOBEChange"

    invoke-virtual {p0, v0}, Lcom/android/mms/reflector/BaseReflector;->invoke(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public wakeupAcms()V
    .locals 1

    const-string v0, "wakeupAcms"

    invoke-virtual {p0, v0}, Lcom/android/mms/reflector/BaseReflector;->invoke(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
