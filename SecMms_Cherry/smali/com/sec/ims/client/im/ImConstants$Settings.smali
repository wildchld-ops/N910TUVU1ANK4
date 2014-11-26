.class public final Lcom/sec/ims/client/im/ImConstants$Settings;
.super Ljava/lang/Object;
.source "ImConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# instance fields
.field public CONFERENCE_NOTIFICATION_MUTING:Ljava/lang/String;

.field public CREATE_CLOSED_GROUP_CHAT:Ljava/lang/String;

.field public GROUP_CHAT_SUBJECT_LIMIT:Ljava/lang/String;

.field public SEND_DELIVERY_NOTIFICATION:Ljava/lang/String;

.field public SEND_DISPLAY_NOTIFICATION:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GROUP_CHAT_SUBJECT_LIMIT"

    iput-object v0, p0, Lcom/sec/ims/client/im/ImConstants$Settings;->GROUP_CHAT_SUBJECT_LIMIT:Ljava/lang/String;

    const-string v0, "CONFERENCE_NOTIFICATION_MUTING"

    iput-object v0, p0, Lcom/sec/ims/client/im/ImConstants$Settings;->CONFERENCE_NOTIFICATION_MUTING:Ljava/lang/String;

    const-string v0, "SEND_DISPLAY_NOTIFICATION"

    iput-object v0, p0, Lcom/sec/ims/client/im/ImConstants$Settings;->SEND_DISPLAY_NOTIFICATION:Ljava/lang/String;

    const-string v0, "SEND_DELIVERY_NOTIFICATION"

    iput-object v0, p0, Lcom/sec/ims/client/im/ImConstants$Settings;->SEND_DELIVERY_NOTIFICATION:Ljava/lang/String;

    const-string v0, "CREATE_CLOSED_GROUP_CHAT"

    iput-object v0, p0, Lcom/sec/ims/client/im/ImConstants$Settings;->CREATE_CLOSED_GROUP_CHAT:Ljava/lang/String;

    return-void
.end method
