.class Lcom/android/mms/MmsApp$1;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->onCreate()V
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

    iput-object p1, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v3, "Mms/MmsApp"

    const-string v4, " start initViewCache mms"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isKnoxExist(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->initViewCache()V

    :cond_0
    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/Synchronizer;->doProcessing(Landroid/content/Context;)V

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->checkBadgeCount(Landroid/content/Context;)V

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyDBUtils;->getPendingSmsCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_1

    const-string v3, "Mms/MmsApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pending sms is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v4, 0x0

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v5

    const-class v6, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/mms/MmsApp$1;->this$0:Lcom/android/mms/MmsApp;

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x0

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/mms/util/TelephonyDBUtils;->getPendingMmsCount(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "sim-slot"

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/mms/util/TelephonyDBUtils;->getPendingMmsCount(Landroid/content/Context;I)I

    move-result v3

    if-lez v3, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Landroid/content/Intent;

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    const-string v3, "sim-slot"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string v3, "Mms/MmsApp"

    const-string v4, "not default sms app, dont process pending sms"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/content/Intent;

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/TransactionServiceSecondary;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_7
    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyDBUtils;->getPendingMmsCount(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_4

    const-string v3, "Mms/MmsApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pending mms is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v3

    if-eqz v3, :cond_8

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    # getter for: Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    invoke-static {}, Lcom/android/mms/MmsApp;->access$000()Lcom/android/mms/MmsApp;

    move-result-object v5

    const-class v6, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2

    :cond_8
    const-string v3, "Mms/MmsApp"

    const-string v4, "not default sms app, dont process pending mms"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
