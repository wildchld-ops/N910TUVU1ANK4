.class public Landroid/net/MultiSimMobileDataStateTracker;
.super Landroid/net/MobileDataStateTracker;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MultiSimMobileDataStateTracker$1;,
        Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;,
        Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiSimMobileDataStateTracker"

.field private static final VDBG:Z


# instance fields
.field private mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

.field mSelectedSimSlot:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSelectedSimSlot:I

    return-void
.end method

.method static synthetic access$000(Landroid/net/MultiSimMobileDataStateTracker;)[Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method private isSlot2DataFuncImplementedOnCtcNonCggModel()Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "gsm.sim.operator.numeric2"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "ril.ICC_TYPE"

    invoke-static {v6, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v6, "ja3gduosctc"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    if-ne v1, v6, :cond_0

    const-string v6, "20404"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setEnableApn(Ljava/lang/String;ZI)I
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/net/MultiSimMobileDataStateTracker;->getPhoneService(Z)V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Landroid/net/MultiSimMobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v4, :cond_1

    const-string v4, "Ignoring feature request because could not acquire PhoneService"

    invoke-virtual {p0, v4}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_6

    const-string v4, "enable"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " APN type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    const/4 v4, 0x3

    :goto_2
    return v4

    :cond_1
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const-string v4, "phone2"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz p2, :cond_3

    if-nez p3, :cond_2

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_2
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_4
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_2

    :catch_0
    move-exception v0

    if-nez v3, :cond_5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/net/MultiSimMobileDataStateTracker;->getPhoneService(Z)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const-string v4, "disable"

    goto :goto_1
.end method


# virtual methods
.method protected getPhoneService(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    return-void
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Landroid/net/MobileDataStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reconnect(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setTeardownRequested(Z)V

    iget-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Landroid/net/MultiSimMobileDataStateTracker;->setEnableApn(Ljava/lang/String;ZI)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "Error in reconnect - unexpected response."

    invoke-virtual {p0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDependencyMet(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setDependencyMet(Z)V

    return-void
.end method

.method public setEnableFailFastMobileData(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setPolicyDataEnable(Z)V

    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setUserDataEnable(Z)V

    return-void
.end method

.method public setUserDataEnableEx(ZI)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->setUserDataEnable(Z)V

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/net/MobileDataStateTracker;->startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/MobileDataStateTracker;->supplyMessenger(Landroid/os/Messenger;)V

    return-void
.end method

.method public teardown(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/net/MultiSimMobileDataStateTracker;->setTeardownRequested(Z)V

    iget-object v2, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Landroid/net/MultiSimMobileDataStateTracker;->setEnableApn(Ljava/lang/String;ZI)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
