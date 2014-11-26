.class Lcom/android/mms/rcs/RcsOwnCapsManager$2;
.super Landroid/database/ContentObserver;
.source "RcsOwnCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsOwnCapsManager;->registerFtDisabler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsOwnCapsManager;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    iput-object p3, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->val$appContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1    # Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "Mms/RcsOwnCapsManager"

    const-string v4, "Own caps changed"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mFtObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$100(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v4, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->queryOwnCaps()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->canStartRcsUI()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    # setter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsEnableRcs:Z
    invoke-static {v4, v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$202(Lcom/android/mms/rcs/RcsOwnCapsManager;Z)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsLocalOffline:Z
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$300(Lcom/android/mms/rcs/RcsOwnCapsManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # setter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsEnableRcs:Z
    invoke-static {v1, v3}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$202(Lcom/android/mms/rcs/RcsOwnCapsManager;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsEnableRcs:Z
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$200(Lcom/android/mms/rcs/RcsOwnCapsManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/ims/settings/RcsConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mConfigurationChangeObserver:Landroid/database/ContentObserver;
    invoke-static {v4}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$400(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/database/ContentObserver;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->setRcsConfiguration()V

    :cond_1
    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/AutoConfigurationReader;->init(Landroid/content/Context;)Z

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->val$appContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->val$appContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/rcs/Configuration$Ft;->isFtAutoAcceptInHome(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->val$appContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/rcs/Configuration$Ft;->isFtAutoAcceptInRoaming(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRcsAutoAccept(Landroid/content/Context;ZZ)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.mms.ui.TransferContent"

    invoke-static {v1, v4, v2}, Lcom/android/mms/ui/MessageUtils;->setComponent(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.mms.ui.ComposeMessageMmsNoVItem"

    invoke-static {v1, v4, v3}, Lcom/android/mms/ui/MessageUtils;->setComponent(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "CREATE_CLOSED_GROUP_CHAT"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/rcs/transaction/ActionsFactory;->setChatSetting(Ljava/lang/String;Ljava/lang/Boolean;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/mms/rcs/transaction/FtRetryAlarmReceiver;->getIsFromBootAction()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/rcs/FtRetryAlarmHelper;->registerAlarmReceiverWithPendingMessages(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/android/mms/rcs/transaction/FtRetryAlarmReceiver;->setIsFromBootAction(Z)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/rcs/transaction/ServiceProvider;->OWN_CAPS_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mFtObserver:Landroid/database/ContentObserver;
    invoke-static {v4}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$100(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/database/ContentObserver;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "Mms/RcsOwnCapsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsEnableRCS ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mIsEnableRcs:Z
    invoke-static {v3}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$200(Lcom/android/mms/rcs/RcsOwnCapsManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getCapStatusManager()Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    invoke-virtual {v2}, Lcom/android/mms/rcs/RcsOwnCapsManager;->isEnableRcsService()Z

    move-result v2

    # invokes: Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->notiftStateListeners(Z)V
    invoke-static {v1, v2}, Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;->access$500(Lcom/android/mms/rcs/RcsOwnCapsManager$CapStatusManager;Z)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    :cond_5
    move v1, v3

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.mms.ui.ComposeMessageMms"

    invoke-static {v1, v4, v3}, Lcom/android/mms/ui/MessageUtils;->setComponent(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.mms.ui.TransferContent"

    invoke-static {v1, v4, v3}, Lcom/android/mms/ui/MessageUtils;->setComponent(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.mms.ui.ComposeMessageMmsNoVItem"

    invoke-static {v1, v4, v2}, Lcom/android/mms/ui/MessageUtils;->setComponent(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableVItemAttachment()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/rcs/RcsOwnCapsManager$2;->this$0:Lcom/android/mms/rcs/RcsOwnCapsManager;

    # getter for: Lcom/android/mms/rcs/RcsOwnCapsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->access$000(Lcom/android/mms/rcs/RcsOwnCapsManager;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.android.mms.ui.ComposeMessageMms"

    invoke-static {v1, v4, v2}, Lcom/android/mms/ui/MessageUtils;->setComponent(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_2
.end method
