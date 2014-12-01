.class public abstract Lcom/android/mms/rcs/transaction/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;
    }
.end annotation


# static fields
.field static final IS_TYPING_UNDEFINED:Z = false

.field static final MESSAGE_UNDEFINED:J = -0x1L

.field static final REFRESH_INTERVAL_UNDEFINED:I = -0x1

.field static final REQUEST_FAILED:I = -0x1

.field static final TAG:Ljava/lang/String; = "Mms/NotificationReceiver"

.field static final defaultProgress:I = 0x5

.field public static mChatInvitationList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static mapProgress:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

.field notificationStatus:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mChatInvitationList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getInviteStatus(Ljava/lang/String;)Z
    .locals 3

    sget-object v2, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mChatInvitationList:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static setInviteStatus(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mChatInvitationList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract onAddParticipantResponse(Ljava/lang/String;ZLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onChatClosed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onChatInvitation(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDeleteChatsCompletedReceived(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeleteCompletedReceived(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFTAttached(Ljava/lang/Long;)V
.end method

.method public abstract onFTCanceled(Ljava/lang/Long;I)V
.end method

.method public abstract onFTCompleted(Ljava/lang/Long;I)V
.end method

.method public abstract onFTIncoming(Ljava/lang/Long;I)V
.end method

.method public abstract onFTInterrupted(Ljava/lang/Long;I)V
.end method

.method public abstract onFTProgress(Ljava/lang/Long;II)V
.end method

.method public abstract onFTRequestFailed(Ljava/lang/Long;I)V
.end method

.method public abstract onMessageReceived(Ljava/lang/String;J)V
.end method

.method public abstract onMessageResend(Ljava/lang/String;I)V
.end method

.method public abstract onMessageSent(JI)V
.end method

.method public abstract onMessageSentNotiUpdate(Ljava/lang/Long;I)V
.end method

.method public abstract onMessageSentUpdate(Ljava/lang/Long;ZLjava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 56

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/mms/rcs/RcsChatManager;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/android/mms/rcs/RcsChatManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v4, "Mms/NotificationReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS NotificationReceiver onReceive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: CREATE_CHAT_RESPONSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INVITATION"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_CHAT_INVITATION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "subject"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v14, v1}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onChatInvitation(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INSERTED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_CHAT_INSERTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_UPDATED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_CHAT_UPDATED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_DELETED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_CHAT_DELETED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_ALL_CHATS_DELETED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_ALL_CHATS_DELETED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_CLOSED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_CHAT_CLOSED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "chat_status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v14, v1}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onChatClosed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS_RESPONSE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: ADD_PARTICIPANTS_RESPONSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "response_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    const-string v4, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "participants_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v39

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver ADD_PARTICIPANTS_RESPONSE Chat ID is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v39

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onAddParticipantResponse(Ljava/lang/String;ZLjava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_a
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_INSERTED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_PARTICIPANT_INSERTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "participant"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v4, "participant_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver RECEIVE_PARTICIPANT_INSERTED Chat ID is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onReceiveParticipantResponseInsertOrLeft(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_UPDATED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_PARTICIPANT_UPDATED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "participant"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const-string v4, "participant_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v50

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver RECEIVE_PARTICIPANT_UPDATED Chat ID is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string v4, "Mms/NotificationReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS NotificationReceiver onReceive: RECEIVE_PARTICIPANT_UPDATED, status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    move/from16 v0, v50

    if-ne v0, v4, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v50

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onReceiveParticipantResponseInsertOrLeft(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v14, v1}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onReceiveParticipantResponseUpdated(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "message_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v33

    const-string v4, "Mms/NotificationReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS NotificationReceiver onReceive: wow wow MsgId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v33

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const-wide/16 v4, 0x0

    cmp-long v4, v33, v4

    if-gez v4, :cond_11

    :cond_10
    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver RECEIVE_NEW_MESSAGE Chat ID is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const-string v4, "is_group_chat"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    new-instance v42, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/rcs/transaction/ImTransactionService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "on-message-received"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "chatId"

    move-object/from16 v0, v42

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "messageId"

    move-object/from16 v0, v42

    move-wide/from16 v1, v33

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "isGroupChat"

    move-object/from16 v0, v42

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_12
    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_NEW_MESSAGE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_UPDATED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_MESSAGE_UPDATED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_TYPING_NOTIFICATION"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "participant"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v4, "interval"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    const-string v4, "is_typing"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    const-string v5, "Mms/NotificationReceiver"

    const-string v6, "onReceive: Typing notification received(chatId: %s, isTyping: %s)"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v14, v7, v4

    const/4 v8, 0x1

    if-eqz v31, :cond_15

    const-string v4, "true"

    :goto_1
    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move/from16 v2, v24

    move/from16 v3, v31

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onTypingNotification(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_0

    :cond_15
    const-string v4, "false"

    goto :goto_1

    :cond_16
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.DELETE_MESSAGES_RESPONSE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: DELETE_MESSAGES_RESPONSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "response_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    const-string v4, "request_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: DELETE_MESSAGES_RESPONSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.DELETE_CHATS_RESPONSE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: DELETE_CHATS_RESPONSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "response_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    const-string v4, "chats_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v29, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onDeleteChatsCompletedReceived(Ljava/util/ArrayList;)V

    :cond_18
    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: DELETE_CHATS_RESPONSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_19
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE_RESPONSE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: SEND_MESSAGE_RESPONSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "message_number"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    const-string v4, "response_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    if-eqz v28, :cond_1b

    const-string v4, "message_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;->Sending:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->notificationStatus:Lcom/android/mms/rcs/transaction/NotificationReceiver$NotificationStatus;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "request_message_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    new-instance v55, Landroid/content/ContentValues;

    invoke-direct/range {v55 .. v55}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "rcsdb_id"

    move-object/from16 v0, v55

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v45

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v47, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/rcs/transaction/ImTransactionService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "on-message-sent"

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "messageId"

    move-object/from16 v0, v47

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "requestMsgId"

    move-object/from16 v0, v47

    move-wide/from16 v1, v45

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_1a
    const-string v4, "request_message_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onMessageSent(JI)V

    goto/16 :goto_0

    :cond_1b
    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver SEND_MESSAGE_RESPONSE: Sent is failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "error_reason"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const/4 v4, 0x4

    move/from16 v0, v18

    if-ne v0, v4, :cond_0

    const-string v4, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v14, v1}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onRequestChat(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1c
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_SEND_MESSAGE_RESPONSE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "response_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v28

    const-string v4, "message_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    const-string v4, "error_reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "request_message_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    new-instance v53, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/rcs/transaction/ImTransactionService;

    move-object/from16 v0, v53

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "on-message-sent-update"

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "update"

    const/4 v5, 0x1

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "requestMsgId"

    move-object/from16 v0, v53

    move-wide/from16 v1, v45

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "messageId"

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "reason"

    move-object/from16 v0, v53

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "errorReason"

    move-object/from16 v0, v53

    move-object/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v28

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onMessageSentUpdate(Ljava/lang/Long;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_1e
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_NOTIFICATION_STATUS"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_MESSAGE_NOTIFICATION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "message_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    const-string v4, "message_notification_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v50

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onMessageSentNotiUpdate(Ljava/lang/Long;I)V

    goto/16 :goto_0

    :cond_1f
    const-string v4, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_ATTACHED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: TRANSFER_ATTACHED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sessionId"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "request_session_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v43

    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/rcs/transaction/ImTransactionService;

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "on-ft-attached"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ftSessionId"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "requestMsgId"

    move-object/from16 v0, v21

    move-wide/from16 v1, v43

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onFTAttached(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_21
    const-string v4, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_CANCELED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: TRANSFER_CANCELED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sessionId"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    const-string v4, "reason"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v41

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "resumable_option_code"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string v4, "request_session_id"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v43

    const-wide/16 v4, 0x0

    cmp-long v4, v43, v4

    if-gtz v4, :cond_23

    const/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "type"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "session_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_22

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_22

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v43

    :cond_22
    if-eqz v16, :cond_23

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_23
    new-instance v55, Landroid/content/ContentValues;

    invoke-direct/range {v55 .. v55}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "session_id"

    move-object/from16 v0, v55

    move-object/from16 v1, v49

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v43

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v22, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/rcs/transaction/ImTransactionService;

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "on-ft-canceled"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ftSessionId"

    move-object/from16 v0, v22

    move-object/from16 v1, v49

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "requestMsgId"

    move-object/from16 v0, v22

    move-wide/from16 v1, v43

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "isResumeable"

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "cancel_reason"

    move-object/from16 v0, v22

    move/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v4, "Mms/NotificationReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS NotificationReceiver onReceive: TRANSFER_CANCELED, sessionId ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isResumeable= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    if-eqz v16, :cond_24

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_24
    throw v4

    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onFTCanceled(Ljava/lang/Long;I)V

    goto :goto_2

    :cond_26
    const-string v4, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_PROGRESS"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: TRANSFER_PROGRESS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sessionId"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    const-string v4, "bytesDone"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v4, "bytesTotal"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    if-lez v13, :cond_0

    if-lez v20, :cond_0

    mul-int/lit8 v4, v13, 0x64

    div-int v52, v4, v20

    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move/from16 v0, v52

    int-to-long v5, v0

    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x5

    add-long/2addr v7, v9

    cmp-long v4, v5, v7

    if-lez v4, :cond_2a

    const/16 v32, 0x1

    :goto_3
    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    if-nez v32, :cond_27

    move/from16 v0, v20

    if-ne v13, v0, :cond_2d

    :cond_27
    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move/from16 v0, v52

    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v16, 0x0

    const-wide/16 v45, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "type"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "session_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_28

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_28

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v45

    :cond_28
    if-eqz v16, :cond_29

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_29
    new-instance v40, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/rcs/transaction/ImTransactionService;

    move-object/from16 v0, v40

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "on-ft-progress"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ftSessionId"

    move-object/from16 v0, v40

    move-object/from16 v1, v49

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "requestMsgId"

    move-object/from16 v0, v40

    move-wide/from16 v1, v45

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "bytes_transf"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "file_size"

    move-object/from16 v0, v40

    move/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_2a
    const/16 v32, 0x0

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    if-eqz v16, :cond_2b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_2b
    throw v4

    :cond_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onFTProgress(Ljava/lang/Long;II)V

    goto/16 :goto_0

    :cond_2d
    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "TRANSFER_PROGRESS skip !!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2e
    const-string v4, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: TRANSFER_COMPLETED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sessionId"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    const-string v4, "notification_status"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v50

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_32

    const/16 v16, 0x0

    const-wide/16 v45, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "type"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "session_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_2f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v45

    :cond_2f
    if-eqz v16, :cond_30

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_30
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/rcs/transaction/ImTransactionService;

    invoke-direct {v15, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "on-ft-complete"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ftSessionId"

    move-object/from16 v0, v49

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "requestMsgId"

    move-wide/from16 v0, v45

    invoke-virtual {v15, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "status"

    move/from16 v0, v50

    invoke-virtual {v15, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_4
    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    if-eqz v16, :cond_31

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_31
    throw v4

    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onFTCompleted(Ljava/lang/Long;I)V

    goto :goto_4

    :cond_33
    const-string v4, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: TRANSFER_INCOMING"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sessionId"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    const-string v4, "reason"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v41

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    move/from16 v0, v41

    invoke-static {v4, v5, v6, v0, v7}, Lcom/android/mms/rcs/RcsChatManager;->startFtReceivingService(Landroid/content/Context;JIZ)V

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onFTIncoming(Ljava/lang/Long;I)V

    goto/16 :goto_0

    :cond_35
    const-string v4, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INTERRUPTED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: TRANSFER_INTERRUPTED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sessionId"

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    const-string v4, "reason"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v41

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_39

    const/16 v16, 0x0

    const-wide/16 v45, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "session_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v49

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_36

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_36

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-wide v45

    :cond_36
    if-eqz v16, :cond_37

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_37
    new-instance v23, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/rcs/transaction/ImTransactionService;

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "on-ft-interrupted"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ftSessionId"

    move-object/from16 v0, v23

    move-object/from16 v1, v49

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "requestMsgId"

    move-object/from16 v0, v23

    move-wide/from16 v1, v45

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "cancel_reason"

    move-object/from16 v0, v23

    move/from16 v1, v41

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_5
    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    if-eqz v16, :cond_38

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v4

    :cond_39
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onFTInterrupted(Ljava/lang/Long;I)V

    goto :goto_5

    :cond_3a
    const-string v4, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_INSERTED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: RECEIVE_MESSAGE_INSERTED "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "chat_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "message_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v33

    const-string v4, "message_type"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    const-string v4, "message_direction"

    const/4 v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const-string v4, "message_service"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const/4 v4, 0x4

    move/from16 v0, v36

    if-lt v0, v4, :cond_3b

    const/4 v4, 0x7

    move/from16 v0, v36

    if-gt v0, v4, :cond_3b

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    move/from16 v3, v36

    invoke-virtual {v0, v14, v1, v2, v3}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onSystemMessageReceived(Ljava/lang/String;JI)V

    goto/16 :goto_0

    :cond_3b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-wide/16 v4, 0x0

    cmp-long v4, v33, v4

    if-gez v4, :cond_3d

    :cond_3c
    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver RECEIVE_NEW_MESSAGE Chat ID is Null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3d
    if-nez v17, :cond_0

    const-string v4, "IM"

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onMessageReceived(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_3e
    const-string v4, "com.samsung.rcs.framework.filetransfer.notification.REQUEST_FAILED"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Mms/NotificationReceiver"

    const-string v5, "MMS NotificationReceiver onReceive: REQUEST_FAILED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sessionId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    const-string v4, "invokingAction"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v4, "Mms/NotificationReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceived REQUEST FAILED sessionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invokingAction : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v49, :cond_0

    if-eqz v25, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_42

    const/16 v16, 0x0

    const-wide/16 v45, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "session_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {v49 .. v49}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_3f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-wide v45

    :cond_3f
    if-eqz v16, :cond_40

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_40
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/rcs/transaction/ImTransactionService;

    move-object/from16 v0, v19

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "on-ft-request-fail"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "ftSessionId"

    invoke-static/range {v49 .. v49}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "requestMsgId"

    move-object/from16 v0, v19

    move-wide/from16 v1, v45

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "reason"

    const/4 v5, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_6
    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mapProgress:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    if-eqz v16, :cond_41

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v4

    :cond_42
    invoke-static/range {v49 .. v49}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/rcs/transaction/NotificationReceiver;->onFTRequestFailed(Ljava/lang/Long;I)V

    goto :goto_6
.end method

.method public abstract onReceiveMessageUpdate(Ljava/lang/String;J)V
.end method

.method public abstract onReceiveParticipantResponseInsertOrLeft(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onReceiveParticipantResponseUpdated(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onRequestChat(Ljava/lang/String;I)V
.end method

.method public abstract onSystemMessageReceived(Ljava/lang/String;JI)V
.end method

.method public abstract onTypingNotification(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public register(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_TYPING_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INVITATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    :cond_0
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
