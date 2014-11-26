.class Lcom/android/phone/TPhoneService$5;
.super Ljava/lang/Object;
.source "TPhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/TPhoneService;->InstallTPhonePkg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$5;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/TPhoneService$5;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/phone/TPhoneService$5;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v5}, Lcom/android/phone/TPhoneService;->GetTPhonePath()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v4, "TPhoneService"

    const-string v5, "[TPhone] InstallTPhonePkg path is null "

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v5, "TPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TPhone] InstallTPhonePkg path= "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v7, "com.skt.prod.phone"

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    or-int/lit8 v3, v3, 0x2

    const-string v5, "TPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TPhone]Replacing package : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v2, Lcom/android/phone/TPhoneService$PackageInstallObserver;

    iget-object v5, p0, Lcom/android/phone/TPhoneService$5;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {v2, v5}, Lcom/android/phone/TPhoneService$PackageInstallObserver;-><init>(Lcom/android/phone/TPhoneService;)V

    iget-object v5, p0, Lcom/android/phone/TPhoneService$5;->this$0:Lcom/android/phone/TPhoneService;

    const/16 v6, 0x12d

    invoke-virtual {v5, v6}, Lcom/android/phone/TPhoneService;->SetTPhoneInstallState(I)V

    iget-object v5, p0, Lcom/android/phone/TPhoneService$5;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->CreateTphoneInstallNotification()V
    invoke-static {v5}, Lcom/android/phone/TPhoneService;->access$3200(Lcom/android/phone/TPhoneService;)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneUpgradeInstallingState(I)V

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManager;->installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v5, "TPhoneService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TPhone]New Install : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
