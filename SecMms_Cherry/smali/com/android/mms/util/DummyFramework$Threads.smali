.class public interface abstract Lcom/android/mms/util/DummyFramework$Threads;
.super Ljava/lang/Object;
.source "DummyFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DummyFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Threads"
.end annotation


# static fields
.field public static final ALERTS_ALL_ONE_THREAD:I = 0x6e

.field public static final ALERT_AMBER_THREAD:I = 0x67

.field public static final ALERT_EXTREME_THREAD:I = 0x65

.field public static final ALERT_PRESIDENTIAL_THREAD:I = 0x64

.field public static final ALERT_SEVERE_THREAD:I = 0x66

.field public static final ALERT_TEST_MESSAGE_THREAD:I = 0x68

.field public static final CMAS_URI:Landroid/net/Uri;

.field public static final GROUP_SNIPPET:Ljava/lang/String; = "group_snippet"

.field public static final LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

.field public static final MESSAGE_TYPE:Ljava/lang/String; = "message_type"

.field public static final REPLY_ALL_STATUS:Ljava/lang/String; = "reply_all"

.field public static final REPLY_ALL_URI:Landroid/net/Uri;

.field public static final THREAD_TYPE_ALL:I = 0x0

.field public static final THREAD_TYPE_DRAFT:I = 0x1

.field public static final THREAD_TYPE_FAILED:I = 0x3

.field public static final THREAD_TYPE_RECEIVE:I = 0x5

.field public static final THREAD_TYPE_SENDING:I = 0x2

.field public static final THREAD_TYPE_SENT:I = 0x4

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unread_count"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "reply_all"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/DummyFramework$Threads;->REPLY_ALL_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "last_msg_time"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/DummyFramework$Threads;->LAST_MESSAGE_TIME_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cmas"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/DummyFramework$Threads;->CMAS_URI:Landroid/net/Uri;

    return-void
.end method
