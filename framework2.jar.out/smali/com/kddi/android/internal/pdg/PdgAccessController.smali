.class public Lcom/kddi/android/internal/pdg/PdgAccessController;
.super Ljava/lang/Object;
.source "PdgAccessController.java"


# static fields
.field private static final AU_MARKET_PACKAGE:Ljava/lang/String; = "com.kddi.market"

.field private static final DATA_TYPE_UNKNOWN:I = -0x1

.field private static final DIALOG_PACKAGE_NAME:Ljava/lang/String; = "com.kddi.android.pdg"


# instance fields
.field private mAccessTime:J

.field private mContext:Landroid/content/Context;

.field private mDataType:I

.field private mDefaultPrivacy:Z

.field private mPackageName:Ljava/lang/String;

.field private mPrivacyEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdgAccessController( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    const-string v0, "PdgAccessController() end"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private getDataType(I)I
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int getDataType( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "int getDataType() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    return v0

    :pswitch_0
    move v0, p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultPrivacy()Z
    .locals 3

    const-string v1, "boolean getDefaultPrivacy() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kddi/android/internal/pdg/PdgSettingManager;->getBoolean(Landroid/content/Context;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean getDefaultPrivacy() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    return v0
.end method

.method private getPrivacyEnable()Z
    .locals 3

    const-string v1, "boolean getPrivacyEnable() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kddi/android/internal/pdg/PdgSettingManager;->getBoolean(Landroid/content/Context;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boolean getPrivacyEnable() end / return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    return v0
.end method

.method private getSelectedPrivacy()Z
    .locals 4

    const-string v2, "boolean getSelectedPrivacy() start"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPrivacyEnable:Z

    iget-boolean v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDefaultPrivacy:Z

    if-nez v1, :cond_0

    const-string v2, "boolean getSelectedPrivacy() end / return = true"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean getSelectedPrivacy() end / return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isCallActive(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const-string/jumbo v3, "void isCallActive() start"

    invoke-static {v3}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "void isCallActive() end / true state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "void isCallActive() end / false state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendFirstAccess(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v1, "void sendFirstAccess() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.kddi.android.pdg.intent.action.FIRST_ACCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.kddi.android.pdg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "void sendFirstAccess() end"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private sendShowDialog(Landroid/content/Context;Ljava/lang/String;IJZ)Z
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "boolean sendShowDialog( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.kddi.android.pdg.intent.action.SHOW_PDG_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.kddi.android.pdg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "packagename"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "datatype"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "accesstime"

    invoke-virtual {v1, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "currentprivacy"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "boolean sendShowDialog() end / return = true"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    const-string v2, "boolean sendShowDialog() end / return = false"

    invoke-static {v2}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendShowNotification(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2

    const-string/jumbo v1, "void sendShowNotification() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.kddi.android.pdg.intent.action.SHOW_PDG_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.kddi.android.pdg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "datatype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "accesstime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "void sendShowNotification() end"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method private sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 2

    const-string/jumbo v1, "void sendUpdatePdgStatus() start"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.kddi.android.pdg.intent.action.UPDATE_PDG_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.kddi.android.pdg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "packagename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "datatype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "accesstime"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "void sendUpdatePdgStatus() end"

    invoke-static {v1}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getPrivacy(I)Z
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getPrivacy( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "boolean getPrivacy() end / return = true / context = null"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "boolean getPrivacy() end / return = true / package name empty"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-eqz v9, :cond_2

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "boolean getPrivacy() end / return = true / ai = null or flag system"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v11

    const-string v0, "boolean getPrivacy() end / return = true / NameNotFoundException"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "com.kddi.market"

    iget-object v1, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "boolean getPrivacy() end / return = true / au Market app"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/kddi/android/internal/pdg/PdgAccessController;->getDataType(I)I

    move-result v0

    iput v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDataType:I

    iget v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDataType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const-string v0, "boolean getPrivacy() end / return = true / data tyep unknown"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kddi/android/internal/pdg/PdgWhiteListManager;->contain(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "boolean getPrivacy() end / return = true / white list match"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgSettingManager;->getFirstLaunch(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/pdg/PdgAccessController;->sendFirstAccess(Landroid/content/Context;)V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mAccessTime:J

    invoke-direct {p0}, Lcom/kddi/android/internal/pdg/PdgAccessController;->getDefaultPrivacy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDefaultPrivacy:Z

    invoke-direct {p0}, Lcom/kddi/android/internal/pdg/PdgAccessController;->getPrivacyEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPrivacyEnable:Z

    iget-boolean v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPrivacyEnable:Z

    if-nez v0, :cond_8

    const-string v0, "boolean getPrivacy() end / return = true / privacy disable"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDataType:I

    invoke-static {v0, v1, v2}, Lcom/kddi/android/internal/pdg/PdgStatusManager;->getPrivacyData(Landroid/content/Context;Ljava/lang/String;I)Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->getSettingState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    invoke-virtual {v13}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->getSettingState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    :cond_9
    invoke-virtual {v13}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->getAuthState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDataType:I

    iget-wide v4, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kddi/android/internal/pdg/PdgAccessController;->sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    const-string v0, "boolean getPrivacy() end / return = true / state configured"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v13}, Lcom/kddi/android/internal/pdg/PdgStatusManager$PrivacyData;->getAuthState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDataType:I

    iget-wide v4, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kddi/android/internal/pdg/PdgAccessController;->sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    const-string v0, "boolean getPrivacy() end / return = false / state configured"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "pdg settingState error !!!"

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->e(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/kddi/android/internal/pdg/PdgAccessController;->isCallActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v10, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDefaultPrivacy:Z

    iget-object v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDataType:I

    iget-wide v4, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kddi/android/internal/pdg/PdgAccessController;->sendUpdatePdgStatus(Landroid/content/Context;Ljava/lang/String;IJ)V

    iget-object v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDataType:I

    iget-wide v4, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kddi/android/internal/pdg/PdgAccessController;->sendShowNotification(Landroid/content/Context;Ljava/lang/String;IJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getPrivacy() end / calll active / defaultPrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/kddi/android/internal/pdg/PdgAccessController;->getSelectedPrivacy()Z

    move-result v6

    iget-object v1, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mDataType:I

    iget-wide v4, p0, Lcom/kddi/android/internal/pdg/PdgAccessController;->mAccessTime:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/kddi/android/internal/pdg/PdgAccessController;->sendShowDialog(Landroid/content/Context;Ljava/lang/String;IJZ)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "boolean getPrivacy() end / return = true / dialog show failed "

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "boolean getPrivacy() end / return = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kddi/android/internal/pdg/PdgLog;->d(Ljava/lang/String;)V

    move v10, v6

    goto/16 :goto_0
.end method
