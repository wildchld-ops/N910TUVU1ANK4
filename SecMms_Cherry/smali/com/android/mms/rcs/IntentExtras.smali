.class public interface abstract Lcom/android/mms/rcs/IntentExtras;
.super Ljava/lang/Object;
.source "IntentExtras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/rcs/IntentExtras$RcsSettingConstants;,
        Lcom/android/mms/rcs/IntentExtras$ResponseIntents;,
        Lcom/android/mms/rcs/IntentExtras$RequestIntents;,
        Lcom/android/mms/rcs/IntentExtras$Constants;,
        Lcom/android/mms/rcs/IntentExtras$Extras;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_GROUP_CHAT_PARTICIPANTS:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS"

.field public static final ACTION_ADD_PARTICIPANTS:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS"

.field public static final ACTION_ANSWER_CHAT_INVITATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ANSWER_CHAT_INVITATION"

.field public static final ACTION_ANSWER_GROUP_CHAT_INVITATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ANSWER_CHAT_INVITATION"

.field public static final ACTION_BLOCK_BUDDY:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.BLOCK_BUDDY"

.field public static final ACTION_CLOSE_CHAT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CLOSE_CHAT"

.field public static final ACTION_CREATE_CHAT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT"

.field public static final ACTION_DELETE_ALL_MESSAGES:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_ALL_MESSAGES"

.field public static final ACTION_DELETE_CHATS:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_CHATS"

.field public static final ACTION_DELETE_MESSAGES:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_MESSAGES"

.field public static final ACTION_DISPLAY_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_DISPLAY_NOTIFICATION"

.field public static final ACTION_EXTEND_TO_GROUP_CHAT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS"

.field public static final ACTION_FINISH_GROUP_CHAT_SESSION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CLOSE_CHAT"

.field public static final ACTION_FINISH_SINGLE_CHAT_SESSION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CLOSE_CHAT"

.field public static final ACTION_READ_MESSAGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.READ_MESSAGE"

.field public static final ACTION_REJOIN_GROUP_CHAT_SESSION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_REJOIN_GROUP_CHAT_SESSION"

.field public static final ACTION_SEND_GROUP_MESSAGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE"

.field public static final ACTION_SEND_GROUP_MULTIMEDIA_MESSAGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_GROUP_MULTIMEDIA_MESSAGE"

.field public static final ACTION_SEND_GROUP_TYPING_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_TYPING_NOTIFICATION"

.field public static final ACTION_SEND_MESSAGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE"

.field public static final ACTION_SEND_MESSAGE_TO:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE"

.field public static final ACTION_SEND_MULTIMEDIA_MESSAGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_MULTIMEDIA_MESSAGE"

.field public static final ACTION_SEND_TYPING_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_TYPING_NOTIFICATION"

.field public static final ACTION_SET_CHAT_SETTING:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SETTING"

.field public static final ADD_PARTICIPANTS_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS_RESPONSE"

.field public static final ANSWER_CHAT_INVITATION_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ANSWER_CHAT_INVITATION_RESPONSE"

.field public static final CATEGORY_ACTION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.category.ACTION"

.field public static final CATEGORY_ACTION_FT:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.category.ACTION"

.field public static final CATEGORY_FT_ACTION:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.category.ACTION"

.field public static final CATEGORY_IM:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT"

.field public static final CATEGORY_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.category.ACTION"

.field public static final CATEGORY_NOTIFICATION_FT:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

.field public static final COMMUNICATION_ERROR:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.COMMUNICATION_ERROR"

.field public static final CREATE_CHAT_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

.field public static final DELETE_CHATS_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_CHATS_RESPONSE"

.field public static final DELETE_MESSAGES_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_MESSAGES_RESPONSE"

.field public static final MUTE_CHAT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.MUTE_CHAT"

.field public static final NOTIFY_EXTEND_TO_GROUP_CHAT_CHANGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INVITATION"

.field public static final NOTIFY_GROUP_CHAT_INVITATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INVITATION"

.field public static final RECEIVE_ALL_CHATS_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_ALL_CHATS_DELETED"

.field public static final RECEIVE_CHAT_CLOSED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_CLOSED"

.field public static final RECEIVE_CHAT_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_DELETED"

.field public static final RECEIVE_CHAT_INSERTED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INSERTED"

.field public static final RECEIVE_CHAT_INVITATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INVITATION"

.field public static final RECEIVE_CHAT_UPDATED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_UPDATED"

.field public static final RECEIVE_MESSAGE_INSERTED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_INSERTED"

.field public static final RECEIVE_MESSAGE_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_NOTIFICATION_STATUS"

.field public static final RECEIVE_MESSAGE_UPDATED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_UPDATED"

.field public static final RECEIVE_NEW_MESSAGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

.field public static final RECEIVE_PARTICIPANT_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_DELETED"

.field public static final RECEIVE_PARTICIPANT_INSERTED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_INSERTED"

.field public static final RECEIVE_PARTICIPANT_UPDATED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_UPDATED"

.field public static final RECEIVE_SEND_MESSAGE_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

.field public static final RECEIVE_TYPING_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_TYPING_NOTIFICATION"

.field public static final REQUEST_FAILED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.REQUEST_FAILED"

.field public static final SEND_DISPLAY_NOTIFICATION_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_DISPLAY_NOTIFICATION_RESPONSE"

.field public static final SEND_MESSAGE_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE_RESPONSE"

.field public static final SEND_TYPING_NOTIFICATION_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_TYPING_NOTIFICATION_RESPONSE"

.field public static final SET_CHAT_SUBJECT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SUBJECT"

.field public static final TRANSFERS_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFERS_DELETED"

.field public static final TRANSFER_ATTACHED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_ATTACHED"

.field public static final TRANSFER_CANCEL:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.action.TRANSFER_CANCEL"

.field public static final TRANSFER_CANCELED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_CANCELED"

.field public static final TRANSFER_COMPLETED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

.field public static final TRANSFER_CREATED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_CREATED"

.field public static final TRANSFER_INCOMING:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

.field public static final TRANSFER_INTERRUPTED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INTERRUPTED"

.field public static final TRANSFER_PENDING:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_PENDING"

.field public static final TRANSFER_PROGRESS:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_PROGRESS"

.field public static final TRANSFER_TRANSFER_QUEUED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_TRANSFER_QUEUED"

.field public static final T_TRANSFER_ATTACHED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.T_TRANSFER_ATTACHED"
