.class public Lcom/sec/ims/client/im/ImContract$ImSession;
.super Ljava/lang/Object;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImSession"
.end annotation


# static fields
.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final CONTRIBUTION_ID:Ljava/lang/String; = "contribution_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "_id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final IMDN_NOTIFICATIONS_AVAILABILITY:Ljava/lang/String; = "imdn_notifications_availability"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final IS_FT_GROUP_CHAT:Ljava/lang/String; = "is_ft_group_chat"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final IS_GROUP_CHAT:Ljava/lang/String; = "is_group_chat"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final IS_MUTED:Ljava/lang/String; = "is_muted"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final LAST_MESSAGE_BODY:Ljava/lang/String; = "last_message_body"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_PARTICIPANTS_COUNT:Ljava/lang/String; = "max_participants_count"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "message_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARTICIPANT_LIST:Ljava/lang/String; = "participant_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARTICIPANT_STATUSES:Ljava/lang/String; = "participant_statuses"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SDP_CONTENT_TYPE:Ljava/lang/String; = "sdp_content_type"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final STATUS:Ljava/lang/String; = "status"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final SUBJECT:Ljava/lang/String; = "subject"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "unread_message_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UPDATED_TIMESTAMP:Ljava/lang/String; = "updated_timestamp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URI:Ljava/lang/String; = "uri"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
