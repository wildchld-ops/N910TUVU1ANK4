.class public Lcom/android/incallui/operator/kdi/Emergency3LM;
.super Ljava/lang/Object;
.source "Emergency3LM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCallcardInfo(Lcom/android/incallui/CallerInfo;)V
    .locals 4
    .param p0    # Lcom/android/incallui/CallerInfo;

    :try_start_0
    const-string v2, "OemExtendedApi3LM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IOemExtendedApi3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOemExtendedApi3LM;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/os/IOemExtendedApi3LM;->getEmergencyLockState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "Emergency3LM"

    const-string v3, "oem3lm setCallcardInfo is not null. hide name"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string v2, ""

    iput-object v2, p0, Lcom/android/incallui/CallerInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/CallerInfo;->contactExists:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/incallui/CallerInfo;->photoResource:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/CallerInfo;->isCachedPhotoCurrent:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/incallui/CallerInfo;->person_id:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Emergency3LM"

    const-string v3, "oem3lm setCallcardInfo is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Emergency3LM"

    const-string v3, "RemoteException in setCallcardInfo fillCallerInfo - 3LM"

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
