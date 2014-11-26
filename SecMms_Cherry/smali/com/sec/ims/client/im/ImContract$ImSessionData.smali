.class public final Lcom/sec/ims/client/im/ImContract$ImSessionData;
.super Lcom/sec/ims/client/im/ImContract$ImSession;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImSessionData"
.end annotation


# static fields
.field public static final LAST_MESSAGE_BODY:Ljava/lang/String; = "last_message_body"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "message_count"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final PARTICIPANT_LIST:Ljava/lang/String; = "participant_list"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final PARTICIPANT_STATUSES:Ljava/lang/String; = "participant_statuses"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final UNREAD_MESSAGE_COUNT:Ljava/lang/String; = "unread_message_count"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/ims/client/im/ImContract$ImSession;-><init>()V

    return-void
.end method
