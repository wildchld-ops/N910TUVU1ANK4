.class Lcom/android/mms/MmsApp$2;
.super Landroid/content/BroadcastReceiver;
.source "MmsApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/MmsApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/MmsApp$2;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "Mms/MmsApp"

    const-string v3, "mEmergencyStateChangedReceiver onReceive()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const-string v2, "reason"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "Mms/MmsApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEmergencyStateChangedReceiver reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x8

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->clearCache()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessagePriorityCheckFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/ui/CMASDialog;->getInstance()Lcom/android/mms/ui/CMASDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-boolean v5, v0, Lcom/android/mms/ui/CMASDialog;->mDialogHandled:Z

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASDialog;->dismissDialogForPriority()V

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->killMessage()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->updateEmergencyMode()V

    goto :goto_0
.end method
