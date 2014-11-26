.class public final Lcom/sec/ims/client/im/ImContract;
.super Ljava/lang/Object;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/client/im/ImContract$ChatItem;,
        Lcom/sec/ims/client/im/ImContract$CsSession;,
        Lcom/sec/ims/client/im/ImContract$ImSession;,
        Lcom/sec/ims/client/im/ImContract$ImSessionData;,
        Lcom/sec/ims/client/im/ImContract$Message;,
        Lcom/sec/ims/client/im/ImContract$MessageNotification;,
        Lcom/sec/ims/client/im/ImContract$Participant;,
        Lcom/sec/ims/client/im/ImContract$Setting;
    }
.end annotation


# static fields
.field public static final AUTO_ACCEPT_FT:I = 0xc

.field public static final CHAT:I = 0x4

.field public static final CHATS:I = 0x3

.field public static final CHAT_IDS_BY_CONTENT_TYPE:I = 0x11

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENRICHED_CHATS:I = 0xd

.field public static final FILE_TRANSFER:I = 0xa

.field public static final FILE_TRANSFERS:I = 0x9

.field public static final MESSAGE:I = 0x1

.field public static final MESSAGES:I = 0x0

.field public static final MESSAGES_WITH_FT:I = 0xb

.field public static final MESSAGES_WITH_FT_COUNT:I = 0x10

.field public static final MESSAGE_COUNT:I = 0x2

.field public static final MESSAGE_NOTIFICATIONS:I = 0xf

.field public static final PARTICIPANTS:I = 0x5

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.rcs.im"

.field public static final SETTINGS:I = 0xe

.field public static final UNREAD_MESSAGES:I = 0x6

.field public static final UNREAD_MESSAGES_COUNT:I = 0x7

.field public static final UNREAD_MESSAGES_COUNT_BY_ID:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.rcs.im"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/client/im/ImContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
