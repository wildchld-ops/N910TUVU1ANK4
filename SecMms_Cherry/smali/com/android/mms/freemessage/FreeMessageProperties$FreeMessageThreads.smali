.class public interface abstract Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;
.super Ljava/lang/Object;
.source "FreeMessageProperties.java"

# interfaces
.implements Lcom/android/mms/freemessage/FreeMessageProperties$ImThreadColumn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/freemessage/FreeMessageProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FreeMessageThreads"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FT_CONTENT_URI:Landroid/net/Uri;

.field public static final ID_PROJECTION:[Ljava/lang/String;

.field public static final URI_FREEMSG_THREAD_INFO_BY_SESSION_ID:Landroid/net/Uri;

.field public static final URI_FREEMSG_THREAD_INFO_BY_THREAD_ID:Landroid/net/Uri;

.field public static final URI_FREEMSG_TRANSACTION_ID_INFO:Landroid/net/Uri;

.field public static final URI_HAS_FREEMSG:Landroid/net/Uri;

.field public static final URI_INTEGRATED_CONVERSATIONS:Landroid/net/Uri;

.field public static final URI_INTEGRATED_CONVERSATIONS_IM_N_FT_ONLY:Landroid/net/Uri;

.field public static final URI_INTEGRATED_DRAFT:Landroid/net/Uri;

.field public static final URI_INTEGRATED_THREADS:Landroid/net/Uri;

.field public static final URI_MARK_AS_READ_CONVERSATIONS_IM_N_FT:Landroid/net/Uri;

.field public static final URI_THREAD_BY_SESSION_ID:Landroid/net/Uri;

.field public static final URI_UPDATE_IMTYPE_BY_CLOSED_GROUP:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://mms-sms/im-threads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/thread-by-sessionId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_THREAD_BY_SESSION_ID:Landroid/net/Uri;

    const-string v0, "content://mms-sms/integrated-threads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_INTEGRATED_THREADS:Landroid/net/Uri;

    const-string v0, "content://mms-sms/integrated-conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_INTEGRATED_CONVERSATIONS:Landroid/net/Uri;

    const-string v0, "content://mms-sms/integrated-conversations_imft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_INTEGRATED_CONVERSATIONS_IM_N_FT_ONLY:Landroid/net/Uri;

    const-string v0, "content://mms-sms/ftcontents/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->FT_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://mms-sms/im-info-by-thread/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_FREEMSG_THREAD_INFO_BY_THREAD_ID:Landroid/net/Uri;

    const-string v0, "content://mms-sms/im-info-by-sessionid/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_FREEMSG_THREAD_INFO_BY_SESSION_ID:Landroid/net/Uri;

    const-string v0, "content://mms-sms/im-info-by-transactionid/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_FREEMSG_TRANSACTION_ID_INFO:Landroid/net/Uri;

    const-string v0, "content://mms-sms/mark-as-read-conversations_imft/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_MARK_AS_READ_CONVERSATIONS_IM_N_FT:Landroid/net/Uri;

    const-string v0, "content://mms-sms/integrated-draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_INTEGRATED_DRAFT:Landroid/net/Uri;

    const-string v0, "content://mms-sms/update-imtype-by-closed-group"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_UPDATE_IMTYPE_BY_CLOSED_GROUP:Landroid/net/Uri;

    const-string v0, "content://mms-sms/has-im-thread/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->URI_HAS_FREEMSG:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method
