.class public Lcom/android/phone/rcs/RcsContentObserver;
.super Landroid/database/ContentObserver;
.source "RcsContentObserver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/os/Handler;
    .param p2    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "RcsShare"

    const-string v1, "RcsContentObserver()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->v(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/rcs/RcsContentObserver;->mRegistered:Z

    iput-object p2, p0, Lcom/android/phone/rcs/RcsContentObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x1

    const-string v0, "RcsShare"

    const-string v1, "onChange()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-nez p1, :cond_0

    const-string v0, "RcsShare"

    const-string v1, "calling update on buttons"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->OnChangeInContent(I)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1    # Landroid/content/ContentResolver;

    const/4 v2, 0x1

    const-string v0, "RcsShare"

    const-string v1, "registerSelfAsObserver()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v0, p0, Lcom/android/phone/rcs/RcsContentObserver;->mRegistered:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/phone/rcs/RcsContentObserver;->mRegistered:Z

    sget-object v0, Lcom/android/services/telephony/common/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .locals 4

    const-string v1, "RcsShare"

    const-string v2, "unregisterSelfAsObseverAndCloseCursor()"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v1, p0, Lcom/android/phone/rcs/RcsContentObserver;->mRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/rcs/RcsContentObserver;->mRegistered:Z

    iget-object v1, p0, Lcom/android/phone/rcs/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
