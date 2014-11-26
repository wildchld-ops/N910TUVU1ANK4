.class Lcom/android/mms/ui/MessageListItem$5;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->bindNotifInd(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v12, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v11, v12}, Lcom/android/mms/util/TelephonyUtils;->getMessageIdbyUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/util/TelephonyUtils;->isDuplicateMMSbyMId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0c00cb

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v10, v11}, Lcom/android/mms/util/TelephonyUtils;->deleteExpiredMMS(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v10, "Mms/MessageListItem"

    const-string v11, "isDuplicateMMSbyMId then deleteExpiredMMS"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v10

    if-eqz v10, :cond_15

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SKT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v10

    const-string v11, "KT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v10

    const-string v11, "LGU+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v10

    const-string v11, "KOR_OPEN"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_2
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/mms/util/TelephonyUtils;->checkPSAvailability(Landroid/content/Context;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    :goto_0
    return-void

    :cond_3
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "Mms/MessageListItem"

    const-string v11, "Message app does not set to default app. so can not download MMS message just return!!"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isAllowTextMessaging(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "Mms/MessageListItem"

    const-string v11, "Discard MMS downaloding by IT Policy"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0c034e

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAvailableSizeForRestrictAutoDownload()I

    move-result v10

    mul-int/lit16 v10, v10, 0x400

    mul-int/lit16 v10, v10, 0x400

    int-to-long v6, v10

    cmp-long v10, v1, v6

    if-gez v10, :cond_6

    const-string v10, "Mms/MessageListItem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Available Storage Size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v1, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0c014a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v10

    const-string v11, "SKT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0c03d9

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    :cond_7
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v12

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_8

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0c014a

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Lcom/android/mms/util/DownloadManager;->Isexpired(Landroid/net/Uri;)Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Lcom/android/mms/util/DownloadManager;->markExpriedState(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v8

    const-string v10, "persist.sys.dataprefer.simid"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v10

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget v10, v10, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-static {v10}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUseDataSwitchDialog()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    if-le v8, v10, :cond_c

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget v10, v10, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    if-eq v10, v3, :cond_c

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v10, v10, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v10, v10, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipInRoaming()Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_b
    const/4 v0, 0x1

    const-string v10, "Mms/MessageListItem"

    const-string v11, "bindNotifInd onClick() : bl_DataSwitch is true"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_1
    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipInRoaming()Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v10

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    const/4 v0, 0x0

    :cond_e
    const/4 v10, 0x1

    if-ne v0, v10, :cond_10

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v10

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    # setter for: Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;
    invoke-static {v10, v11}, Lcom/android/mms/ui/MessageListItem;->access$602(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0c04a1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c04a0

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c004d

    new-instance v12, Lcom/android/mms/ui/MessageListItem$5$1;

    invoke-direct {v12, p0}, Lcom/android/mms/ui/MessageListItem$5$1;-><init>(Lcom/android/mms/ui/MessageListItem$5;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0c004e

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_f
    const-string v10, "Mms/MessageListItem"

    const-string v11, "bindNotifInd onClick() : msgItem.mSimImsi is null"

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_10
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v10

    const v11, 0x7f0c0014

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadingTextView:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLinksClickable(Z)V

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v10

    if-eqz v10, :cond_14

    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const-class v11, Lcom/android/mms/transaction/TransactionServiceSecondary;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v10, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v10, "sim-slot"

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageItem;->getSimSlot()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_12
    const-string v10, "uri"

    iget-object v11, p0, Lcom/android/mms/ui/MessageListItem$5;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v11, v11, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_13
    const-string v10, "type"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_14
    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const-class v11, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    :cond_15
    iget-object v10, p0, Lcom/android/mms/ui/MessageListItem$5;->this$0:Lcom/android/mms/ui/MessageListItem;

    # getter for: Lcom/android/mms/ui/MessageListItem;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/MessageListItem;->access$500(Lcom/android/mms/ui/MessageListItem;)Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0c00d1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
