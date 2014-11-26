.class public interface abstract Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFTRetry;
.super Ljava/lang/Object;
.source "RcsTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsFTRetry"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final LAST_TIME:Ljava/lang/String; = "last_time"

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "type"

.field public static final RCSDB_ID:Ljava/lang/String; = "rcsdb_id"

.field public static final RCS_FT_RETRY_ID:Ljava/lang/String; = "_id"

.field public static final RETRY_COUNTER:Ljava/lang/String; = "retry_counter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://im/ft_retry/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsFTRetry;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
