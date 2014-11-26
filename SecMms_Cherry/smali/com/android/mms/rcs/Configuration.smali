.class public Lcom/android/mms/rcs/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/Configuration$Ish;,
        Lcom/android/mms/rcs/Configuration$Ft;,
        Lcom/android/mms/rcs/Configuration$Im;,
        Lcom/android/mms/rcs/Configuration$AutoAcceptState;,
        Lcom/android/mms/rcs/Configuration$SessionDirection;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELIVERY_TIMEOUT:I = 0x12c

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.im"

.field private static final SIP_URI_SCHEME:Ljava/lang/String; = "sip"

.field static final TAG:Ljava/lang/String; = "Mms/Configuration"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsGroupChatAutoAccept()Z
    .locals 1

    const-string v0, "root/application/1/im/autacceptgroupchat"

    invoke-static {v0}, Lcom/android/mms/AutoConfigurationReader;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getApn()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getCapexExpiry()I
    .locals 3

    const-string v1, "Mms/Configuration"

    const-string v2, "getCapexExpiry()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "root/application/1/capdiscovery/capinfoexpiry"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static getDeliveryTimeout()I
    .locals 2

    const-string v1, "root/application/1/serviceproviderext/joyn/messagingdeliverytimeout"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x12c

    :cond_0
    return v0
.end method

.method public static getDomain()Ljava/lang/String;
    .locals 2

    const-string v1, "root/application/0/home_network_domain_name"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getIntUrlFormat()I
    .locals 1

    invoke-static {}, Lcom/android/mms/rcs/Configuration;->getNatUrlFormat()I

    move-result v0

    return v0
.end method

.method public static getMessagingUX()Z
    .locals 1

    const-string v0, "root/application/1/serviceproviderext/joyn/uxmessagingux"

    invoke-static {v0}, Lcom/android/mms/AutoConfigurationReader;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static getMsgCapValidity()I
    .locals 3

    const-string v1, "Mms/Configuration"

    const-string v2, "getMsgCapValidity()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "root/application/1/capdiscovery/ext/joynmsgcapvalidity"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static getNatUrlFormat()I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    throw v0

    move-result-object v2

    const-string v3, "sip"

    throw v2

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getNoteMaxSize()I
    .locals 3

    const-string v1, "Mms/Configuration"

    const-string v2, "getNoteMaxSize()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "root/application/1/presence/notemaxsize"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static getPhoneContext()Ljava/lang/String;
    .locals 2

    const-string v1, "root/application/0/phonecontext_list/0/phonecontext"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getPollingPeriod()I
    .locals 3

    const-string v1, "Mms/Configuration"

    const-string v2, "getPollingPeriod()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "root/application/1/capdiscovery/pollingperiod"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static getPublicUri()Ljava/lang/String;
    .locals 3

    const-string v1, "Mms/Configuration"

    const-string v2, "getPublicUri()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "root/application/0/private_user_identity"

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static getValidValue(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    move v0, p2

    move v0, p2

    return v0
.end method

.method public static getValidValue(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # J

    move-wide v0, p2

    return-wide v0
.end method

.method public static getXdmAddress()Ljava/lang/String;
    .locals 2

    const-string v0, "Mms/Configuration"

    const-string v1, "getXdmAddress()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "foo.example.com:8080"

    return-object v0
.end method

.method public static isDiscoveryByPresence()Z
    .locals 2

    const-string v0, "Mms/Configuration"

    const-string v1, "isDiscoveryByPresence()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "root/application/1/capdiscovery/presencedisc"

    invoke-static {v0}, Lcom/android/mms/AutoConfigurationReader;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isPresence()Z
    .locals 2

    const-string v0, "Mms/Configuration"

    const-string v1, "isPresence()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "root/application/1/capdiscovery/presencedisc"

    invoke-static {v0}, Lcom/android/mms/AutoConfigurationReader;->getBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
