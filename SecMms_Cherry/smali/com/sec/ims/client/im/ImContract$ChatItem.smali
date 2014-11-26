.class public Lcom/sec/ims/client/im/ImContract$ChatItem;
.super Ljava/lang/Object;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatItem"
.end annotation


# static fields
.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content_type"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final DELIVERED_TIMESTAMP:Ljava/lang/String; = "delivered_timestamp"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final DIRECTION:Ljava/lang/String; = "direction"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "_id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final INSERTED_TIMESTAMP:Ljava/lang/String; = "inserted_timestamp"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final IS_FILE_TRANSFER:Ljava/lang/String; = "is_filetransfer"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final REMOTE_URI:Ljava/lang/String; = "remote_uri"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final STATUS:Ljava/lang/String; = "status"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "message_type"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final USER_ALIAS:Ljava/lang/String; = "sender_alias"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
