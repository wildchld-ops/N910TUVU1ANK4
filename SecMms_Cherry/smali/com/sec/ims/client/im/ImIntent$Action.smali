.class public interface abstract Lcom/sec/ims/client/im/ImIntent$Action;
.super Ljava/lang/Object;
.source "ImIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Action"
.end annotation


# static fields
.field public static final ADD_PARTICIPANTS:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS"

.field public static final ADD_PARTICIPANTS_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ADD_PARTICIPANTS_RESPONSE"

.field public static final ALL_CHAT_MESSAGE_NOTIFICATIONS_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ALL_CHAT_MESSAGE_NOTIFICATIONS_DELETED"

.field public static final ALL_CHAT_MESSAGE_NOTIFICATIONS_FOR_CHAT_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ALL_CHAT_MESSAGE_NOTIFICATIONS_FOR_CHAT_DELETED"

.field public static final ALL_CHAT_MESSAGE_NOTIFICATIONS_FOR_MESSAGE_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ALL_CHAT_MESSAGE_NOTIFICATIONS_FOR_MESSAGE_DELETED"

.field public static final ANSWER_CHAT_INVITATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ANSWER_CHAT_INVITATION"

.field public static final ANSWER_CHAT_INVITATION_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.ANSWER_CHAT_INVITATION_RESPONSE"

.field public static final CLOSE_CHAT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CLOSE_CHAT"

.field public static final CLOSE_CHAT_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CLOSE_CHAT_RESPONSE"

.field public static final CREATE_CHAT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT"

.field public static final CREATE_CHAT_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.CREATE_CHAT_RESPONSE"

.field public static final DELETE_ALL_CHATS:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_ALL_CHATS"

.field public static final DELETE_ALL_CHATS_BY_CONTENT_TYPE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_ALL_CHATS_BY_CONTENT_TYPE"

.field public static final DELETE_ALL_MESSAGES:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_ALL_MESSAGES"

.field public static final DELETE_CHATS:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_CHATS"

.field public static final DELETE_CHATS_BY_CONTENT_TYPE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_CHATS_BY_CONTENT_TYPE"

.field public static final DELETE_CHATS_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_CHATS_RESPONSE"

.field public static final DELETE_MESSAGES:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_MESSAGES"

.field public static final DELETE_MESSAGES_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.DELETE_MESSAGES_RESPONSE"

.field public static final IM_SERVICE_AVAILABILITY:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.IM_SERVICE_AVAILABILITY"

.field public static final MESSAGE_NOTIFICATION_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.MESSAGE_NOTIFICATION_DELETED"

.field public static final MESSAGE_NOTIFICATION_INSERTED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.MESSAGE_NOTIFICATION_INSERTED"

.field public static final MESSAGE_NOTIFICATION_UPDATED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.MESSAGE_NOTIFICATION_UPDATED"

.field public static final MUTE_CHAT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.MUTE_CHAT"

.field public static final READ_MESSAGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.READ_MESSAGE"

.field public static final RECEIVE_ALL_CHATS_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_ALL_CHATS_DELETED"

.field public static final RECEIVE_CHAT_CLOSED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_CLOSED"

.field public static final RECEIVE_CHAT_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_DELETED"

.field public static final RECEIVE_CHAT_INSERTED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INSERTED"

.field public static final RECEIVE_CHAT_INVITATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_INVITATION"

.field public static final RECEIVE_CHAT_UPDATED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CHAT_UPDATED"

.field public static final RECEIVE_CONFIGURATION_UPDATED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_CONFIGURATION_UPDATED"

.field public static final RECEIVE_MESSAGE_INSERTED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_INSERTED"

.field public static final RECEIVE_MESSAGE_NOTIFICATION_STATUS:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_NOTIFICATION_STATUS"

.field public static final RECEIVE_MESSAGE_UPDATED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_MESSAGE_UPDATED"

.field public static final RECEIVE_NEW_MESSAGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

.field public static final RECEIVE_PARTICIPANT_DELETED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_DELETED"

.field public static final RECEIVE_PARTICIPANT_INSERTED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_INSERTED"

.field public static final RECEIVE_PARTICIPANT_UPDATED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_PARTICIPANT_UPDATED"

.field public static final RECEIVE_SEND_MESSAGE_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

.field public static final RECEIVE_TYPING_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_TYPING_NOTIFICATION"

.field public static final SEND_DISPLAY_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_DISPLAY_NOTIFICATION"

.field public static final SEND_DISPLAY_NOTIFICATION_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_DISPLAY_NOTIFICATION_RESPONSE"

.field public static final SEND_MESSAGE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE"

.field public static final SEND_MESSAGE_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_MESSAGE_RESPONSE"

.field public static final SEND_TYPING_NOTIFICATION:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_TYPING_NOTIFICATION"

.field public static final SEND_TYPING_NOTIFICATION_RESPONSE:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SEND_TYPING_NOTIFICATION_RESPONSE"

.field public static final SET_CHAT_SETTING:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SETTING"

.field public static final SET_CHAT_SUBJECT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.SET_CHAT_SUBJECT"
