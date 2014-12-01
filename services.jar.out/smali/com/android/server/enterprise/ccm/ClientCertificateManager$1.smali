.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent recevied: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(I)Z
    invoke-static {v2, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v2

    if-nez v2, :cond_2

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error making CCM default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z
    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZ)Z

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCCMDefaultCertStore says: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z
    invoke-static {v4, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->unregisterPersonaObserver(I)V
    invoke-static {v2, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    goto :goto_0

    :cond_4
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v2, v1, v5, v5, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :cond_5
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v2, v1, v5, v5, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :cond_6
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v2, v1, v5, v5, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0
.end method
