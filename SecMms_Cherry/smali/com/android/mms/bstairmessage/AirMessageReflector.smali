.class public Lcom/android/mms/bstairmessage/AirMessageReflector;
.super Ljava/lang/Object;
.source "AirMessageReflector.java"


# static fields
.field private static final AIR_MESSAGE_CLASS:Ljava/lang/String; = "com.android.mms.bstairmessage.SAirMessage"

.field private static Destory:Ljava/lang/reflect/Method;

.field private static MsgSendMMSToAirMsg:Ljava/lang/reflect/Method;

.field private static MsgSendSMSToAirMsg:Ljava/lang/reflect/Method;

.field private static UpdateMsgStatus:Ljava/lang/reflect/Method;

.field private static UpdateSentMsgId:Ljava/lang/reflect/Method;

.field private static getInstance:Ljava/lang/reflect/Method;

.field private static init:Ljava/lang/reflect/Method;

.field private static sAirMessageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sAirMessageObject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->sAirMessageClass:Ljava/lang/Class;

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->sAirMessageObject:Ljava/lang/Object;

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->getInstance:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->init:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->Destory:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateMsgStatus:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateSentMsgId:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendSMSToAirMsg:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Destory()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->Destory:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getAirMessageClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Destory"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->Destory:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->Destory:Ljava/lang/reflect/Method;

    invoke-static {v5, v0, v5}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static MsgSendMMSToAirMsg(Landroid/content/Context;JZ)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getAirMessageClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "MsgSendMMSToAirMsg"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg:Ljava/lang/reflect/Method;

    :cond_0
    invoke-static {p0}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendMMSToAirMsg:Ljava/lang/reflect/Method;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static MsgSendSMSToAirMsg(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendSMSToAirMsg:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getAirMessageClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "MsgSendSMSToAirMsg"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendSMSToAirMsg:Ljava/lang/reflect/Method;

    :cond_0
    invoke-static {p0}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/mms/bstairmessage/AirMessageReflector;->MsgSendSMSToAirMsg:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static UpdateMsgStatus(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateMsgStatus:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getAirMessageClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "UpdateMsgStatus"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateMsgStatus:Ljava/lang/reflect/Method;

    :cond_0
    invoke-static {p0}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateMsgStatus:Ljava/lang/reflect/Method;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static UpdateSentMsgId(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateSentMsgId:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getAirMessageClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "UpdateSentMsgId"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Landroid/net/Uri;

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateSentMsgId:Ljava/lang/reflect/Method;

    :cond_0
    invoke-static {p0}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getInstance(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/mms/bstairmessage/AirMessageReflector;->UpdateSentMsgId:Ljava/lang/reflect/Method;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAirMessageClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->sAirMessageClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.android.mms.bstairmessage.SAirMessage"

    invoke-static {v0}, Lcom/android/mms/util/MethodReflector;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->sAirMessageClass:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->sAirMessageClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->sAirMessageObject:Ljava/lang/Object;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->getInstance:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getAirMessageClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->getInstance:Ljava/lang/reflect/Method;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/mms/bstairmessage/AirMessageReflector;->getInstance:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->sAirMessageObject:Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->sAirMessageObject:Ljava/lang/Object;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->init:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/bstairmessage/AirMessageReflector;->getAirMessageClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "init"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/mms/bstairmessage/AirMessageReflector;->init:Ljava/lang/reflect/Method;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/mms/bstairmessage/AirMessageReflector;->init:Ljava/lang/reflect/Method;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
