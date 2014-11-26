.class public final Lcom/sec/ims/client/im/ImContract$Participant;
.super Ljava/lang/Object;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Participant"
.end annotation


# static fields
.field public static final ALIAS:Ljava/lang/String; = "alias"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "_id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final PARTICIPANT_STATUS:Ljava/lang/String; = "status"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final SESSION_ID:Ljava/lang/String; = "chat_id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "type"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final URI:Ljava/lang/String; = "uri"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
