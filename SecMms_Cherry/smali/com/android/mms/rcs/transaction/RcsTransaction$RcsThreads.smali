.class public interface abstract Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;
.super Ljava/lang/Object;
.source "RcsTransaction.java"

# interfaces
.implements Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreadColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/RcsTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsThreads"
.end annotation


# static fields
.field public static final ALIAS:Ljava/lang/String; = "alias"

.field public static final CHAT_ID:Ljava/lang/String; = "session_id"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FT_CONTENT_URI:Landroid/net/Uri;

.field public static final ID_PROJECTION:[Ljava/lang/String;

.field public static final OPENED:Ljava/lang/String; = "opened"

.field public static final URI_INTEGRATED_CONVERSATIONS:Landroid/net/Uri;

.field public static final URI_INTEGRATED_CONVERSATIONS_IM_N_FT_ONLY:Landroid/net/Uri;

.field public static final URI_INTEGRATED_DRAFT:Landroid/net/Uri;

.field public static final URI_INTEGRATED_THREADS:Landroid/net/Uri;

.field public static final URI_MARK_AS_READ_CONVERSATIONS_IM_N_FT:Landroid/net/Uri;

.field public static final URI_RCS_PENINDG_MESSAGES:Landroid/net/Uri;

.field public static final URI_RCS_THREAD_INFO_BY_SESSION_ID:Landroid/net/Uri;

.field public static final URI_RCS_THREAD_INFO_BY_THREAD_ID:Landroid/net/Uri;

.field public static final URI_RCS_TRANSACTION_ID_INFO:Landroid/net/Uri;

.field public static final URI_THREAD_BY_SESSION_ID:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://mms-sms/im-threads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/thread-by-sessionId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_THREAD_BY_SESSION_ID:Landroid/net/Uri;

    const-string v0, "content://mms-sms/integrated-threads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_INTEGRATED_THREADS:Landroid/net/Uri;

    const-string v0, "content://mms-sms/integrated-conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_INTEGRATED_CONVERSATIONS:Landroid/net/Uri;

    const-string v0, "content://mms-sms/integrated-conversations_imft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_INTEGRATED_CONVERSATIONS_IM_N_FT_ONLY:Landroid/net/Uri;

    const-string v0, "content://mms-sms/ftcontents/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->FT_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/im-info-by-thread/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_RCS_THREAD_INFO_BY_THREAD_ID:Landroid/net/Uri;

    const-string v0, "content://mms-sms/im-info-by-sessionid/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_RCS_THREAD_INFO_BY_SESSION_ID:Landroid/net/Uri;

    const-string v0, "content://mms-sms/im-info-by-transactionid/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_RCS_TRANSACTION_ID_INFO:Landroid/net/Uri;

    const-string v0, "content://mms-sms/mark-as-read-conversations_imft/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_MARK_AS_READ_CONVERSATIONS_IM_N_FT:Landroid/net/Uri;

    const-string v0, "content://mms-sms/integrated-draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_INTEGRATED_DRAFT:Landroid/net/Uri;

    const-string v0, "content://im/queue-messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_RCS_PENINDG_MESSAGES:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method
