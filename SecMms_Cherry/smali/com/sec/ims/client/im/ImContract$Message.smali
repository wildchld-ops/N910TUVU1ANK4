.class public final Lcom/sec/ims/client/im/ImContract$Message;
.super Lcom/sec/ims/client/im/ImContract$ChatItem;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "body"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final DELIVERY_NOTIFICATION_STATUS:Ljava/lang/String; = "delivery_notification_status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISPLAYED_TIMESTAMP:Ljava/lang/String; = "displayed_timestamp"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final DISPLAY_NOTIFICATION_STATUS:Ljava/lang/String; = "display_notification_status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IMDN_MESSAGE_ID:Ljava/lang/String; = "imdn_message_id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "message_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFICATION_DISPOSITION_MASK:Ljava/lang/String; = "notification_disposition_mask"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final NOTIFICATION_STATUS:Ljava/lang/String; = "notification_status"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final NOT_DISPLAYED_COUNTER:Ljava/lang/String; = "not_displayed_counter"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final SENT_TIMESTAMP:Ljava/lang/String; = "sent_timestamp"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final SESSION:Ljava/lang/String; = "session_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/client/im/ImContract$ChatItem;-><init>()V

    return-void
.end method
