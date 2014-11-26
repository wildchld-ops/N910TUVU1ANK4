.class public final Lcom/sec/ims/client/im/ImContract$CsSession;
.super Lcom/sec/ims/client/im/ImContract$ChatItem;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CsSession"
.end annotation


# static fields
.field public static final BYTES_TRANSFERED:Ljava/lang/String; = "bytes_transf"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final FILE_PATH:Ljava/lang/String; = "file_path"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final FILE_SIZE:Ljava/lang/String; = "file_size"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final IS_RESUMABLE:Ljava/lang/String; = "is_resumable"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final REASON:Ljava/lang/String; = "reason"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final STATE:Ljava/lang/String; = "state"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final STATUS:Ljava/lang/String; = "ft_status"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THUMBNAIL_PATH:Ljava/lang/String; = "thumbnail_path"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TIME_STAMP:Ljava/lang/String; = "time_stamp"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/client/im/ImContract$ChatItem;-><init>()V

    return-void
.end method
