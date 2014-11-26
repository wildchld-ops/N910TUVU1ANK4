.class public interface abstract Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;
.super Ljava/lang/Object;
.source "RcsTransaction.java"

# interfaces
.implements Lcom/android/mms/rcs/transaction/RcsTransaction$RcsCommonColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsChat"
.end annotation


# static fields
.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IMDM_ID:Ljava/lang/String; = "imdn_message_id"

.field public static final MESSAGE_SERVICE_TYPE:Ljava/lang/String; = "message_service_type"

.field public static final NOT_DISPLAYED_COUNTER:Ljava/lang/String; = "not_displayed_counter"

.field public static final TYPE_STR:Ljava/lang/String; = "im"

.field public static final URI_SCHEDULED_IM:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://im/chat/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://im/scheduled_chat"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    return-void
.end method
