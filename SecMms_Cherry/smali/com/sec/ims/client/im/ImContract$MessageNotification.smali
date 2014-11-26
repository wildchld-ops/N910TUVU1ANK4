.class public final Lcom/sec/ims/client/im/ImContract$MessageNotification;
.super Ljava/lang/Object;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/client/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageNotification"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final IMDN_ID:Ljava/lang/String; = "imdn_id"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final SENDER_URI:Ljava/lang/String; = "sender_uri"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final STATUS:Ljava/lang/String; = "status"
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
