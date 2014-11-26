.class Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    const-string v2, "Mms/ConversationList.DeleteThreadListener"

    const-string v3, "deleteRun()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v3, 0x1

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleting:Z
    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$4202(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v3, 0x0

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeletedCount:J
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ConversationListFragment;->access$4302(Lcom/android/mms/ui/ConversationListFragment;J)J

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v22, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3800(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v3

    const/4 v2, 0x0

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v3, v2, v0, v14, v15}, Lcom/android/mms/reflector/AmbsReflector;->getUidWillBeDeleted(Landroid/net/Uri;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/rcs/RcsQuery;->getAllChatIds(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_3
    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteChats(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationComposer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/16 v3, 0x709

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/accessory/WatchRelay;->sendClearAllMsgIntent(Landroid/content/Context;)V

    :cond_5
    :goto_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "GATE"

    const-string v3, "<GATE-M>MSG_DELETED</GATE-M>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v2, "ril.sms.gcf-mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "On"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "Mms/ConversationList.DeleteThreadListener"

    const-string v3, "GCF Mode On"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    sput v2, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Lcom/android/mms/reflector/AmbsReflector;->onDeleteMessage(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_8
    const-string v2, "Mms/ConversationList.DeleteThreadListener"

    const-string v3, "deleteRun()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const-string v22, "locked=0"

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, v17

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->onDeleteRcsThreads(Ljava/util/ArrayList;)V
    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5000(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3800(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0, v14, v15}, Lcom/android/mms/reflector/AmbsReflector;->getUidWillBeDeleted([Ljava/lang/Long;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v2

    array-length v0, v2

    move/from16 v16, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    const-wide/16 v20, -0x1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v11, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getThreadTypeByThreadId(Landroid/content/Context;J)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->getSessionIdByThreadId(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mHasLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-eq v0, v2, :cond_15

    const/16 v18, -0x1

    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mHasLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mHasLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5300(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v20, v2

    if-nez v2, :cond_11

    if-eqz v24, :cond_11

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedLockedMsgThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5400(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_f

    if-eqz v23, :cond_14

    const/4 v2, 0x3

    move/from16 v0, v24

    if-ne v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v24

    if-ne v0, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedSmsThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5700(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v3

    aget-object v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v3

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v4, v0}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/16 v3, 0x70a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v4

    const/4 v5, 0x1

    new-instance v6, Lcom/android/mms/ui/DeleteInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v7

    aget-object v7, v7, v11

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    add-int/lit8 v7, v16, -0x1

    if-ne v7, v11, :cond_16

    const/4 v7, 0x1

    :goto_7
    move-wide/from16 v0, v26

    invoke-direct {v6, v0, v1, v7}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    goto/16 :goto_6

    :cond_16
    const/4 v7, 0x0

    goto :goto_7

    :cond_17
    if-eqz v23, :cond_1a

    const/4 v2, 0x3

    move/from16 v0, v24

    if-ne v0, v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_18
    const/4 v2, 0x2

    move/from16 v0, v24

    if-ne v0, v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedSmsThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5700(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v3

    aget-object v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgSingleThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5600(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedSingleThread()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5800(Lcom/android/mms/ui/ConversationListFragment;)V

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->makeCannotDeleteChatDialog()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedSingleThread()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5800(Lcom/android/mms/ui/ConversationListFragment;)V

    goto/16 :goto_2

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->requestEndChatInList(Ljava/util/ArrayList;)V
    invoke-static {v2, v10}, Lcom/android/mms/ui/ConversationListFragment;->access$6000(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedFreeMsgGroupThread:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedSingleThread()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5800(Lcom/android/mms/ui/ConversationListFragment;)V

    goto/16 :goto_2

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteEventHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->makeCannotDeleteChatDialog()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedSingleThread()V
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$5800(Lcom/android/mms/ui/ConversationListFragment;)V

    goto/16 :goto_2

    :cond_22
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_8
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v3

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/ConversationListAdapter;->hasLockedMsg(J)Z

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-nez v2, :cond_24

    new-instance v6, Lcom/android/mms/ui/DeleteInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v2, v16, -0x1

    if-ne v2, v11, :cond_23

    const/4 v2, 0x1

    :goto_9
    invoke-direct {v6, v3, v4, v2}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/16 v3, 0x70a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_23
    const/4 v2, 0x0

    goto :goto_9

    :cond_24
    new-instance v6, Lcom/android/mms/ui/DeleteInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v2

    aget-object v2, v2, v11

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v16, -0x1

    if-ne v3, v11, :cond_25

    const/4 v3, 0x1

    :goto_b
    invoke-direct {v6, v4, v5, v2, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLjava/lang/String;Z)V

    goto :goto_a

    :cond_25
    const/4 v3, 0x0

    goto :goto_b

    :cond_26
    const/4 v11, 0x0

    :goto_c
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v3

    aget-object v3, v3, v11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v4, v0}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/16 v3, 0x70a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v4

    const/4 v5, 0x1

    new-instance v6, Lcom/android/mms/ui/DeleteInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v7

    aget-object v7, v7, v11

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    add-int/lit8 v7, v16, -0x1

    if-ne v7, v11, :cond_27

    const/4 v7, 0x1

    :goto_d
    move-wide/from16 v0, v26

    invoke-direct {v6, v0, v1, v7}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_27
    const/4 v7, 0x0

    goto :goto_d

    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_29
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    :cond_2a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_2b

    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v14, v15}, Lcom/android/mms/reflector/AmbsReflector;->getUidWillBeDeleted(Landroid/net/Uri;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_2b
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v4, v0}, Lcom/android/mms/accessory/WatchRelay;->getUnreadMsgFromThread(Landroid/content/Context;J[I)[Landroid/net/Uri;

    move-result-object v25

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-nez v2, :cond_2c

    new-instance v6, Lcom/android/mms/ui/DeleteInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v6, v2, v3, v4}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/16 v3, 0x70a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$6300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$5200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/android/mms/accessory/WatchRelay;->sendReadNotificationProvider(Landroid/content/Context;[Landroid/net/Uri;[I)V

    goto/16 :goto_2

    :cond_2c
    new-instance v6, Lcom/android/mms/ui/DeleteInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mSessionId:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$6100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLjava/lang/String;Z)V

    goto :goto_e

    :cond_2d
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    if-nez v2, :cond_2e

    new-instance v6, Lcom/android/mms/ui/DeleteInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v6, v2, v3, v4}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    goto :goto_e

    :cond_2e
    new-instance v6, Lcom/android/mms/ui/DeleteInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatId:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$6200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/mms/ui/DeleteInfo;-><init>(JLjava/lang/String;Z)V

    goto/16 :goto_e

    :cond_2f
    new-instance v6, Lcom/android/mms/ui/DeleteInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    # getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-direct {v6, v2, v3, v4}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    goto/16 :goto_e
.end method
