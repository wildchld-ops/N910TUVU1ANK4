.class public Landroid/telephony/MultiSimTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "MultiSimTelephonyManager.java"


# static fields
.field private static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "MultiSimTelephonyManager"

.field private static cnt:I

.field private static sInstance:[Landroid/telephony/MultiSimTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "ro.product_ship"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/MultiSimTelephonyManager;->SHIP_BUILD:Z

    const/4 v1, 0x0

    sput v1, Landroid/telephony/MultiSimTelephonyManager;->cnt:I

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/MultiSimTelephonyManager;

    sput-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    new-instance v2, Landroid/telephony/MultiSimTelephonyManager;

    invoke-direct {v2, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    iput p1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getDefault()Landroid/telephony/MultiSimTelephonyManager;
    .locals 2

    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefault(I)Landroid/telephony/MultiSimTelephonyManager;
    .locals 2

    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v1

    const-string v4, "CHN"

    const-string v5, "USA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/MultiSimTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget v4, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v4}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;I)Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v3

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTypeFromProperty()I
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    return v0
.end method

.method protected getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    return v0
.end method

.method public isVoiceCapable()Z
    .locals 1

    invoke-super {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
