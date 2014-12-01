.class public Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;
.source "MessageQueryArgs.java"


# static fields
.field private static mContentObserver:Landroid/database/ContentObserver;

.field private static mHandler:Landroid/os/Handler;

.field private static mObserverUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs$1;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs$1;-><init>()V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mHandler:Landroid/os/Handler;

    sput-object v1, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mObserverUri:Landroid/net/Uri;

    sput-object v1, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 5

    const-wide/16 v3, 0x23

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    const-string v0, "content://mms-sms/unread-messages/first-text"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mUri:Landroid/net/Uri;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "text"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mProjection:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-wide v1, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->getPeriods(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelection:Ljava/lang/String;

    const-string v0, "normalized_date DESC LIMIT 1"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mOrderBy:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPeriods(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x3c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x18

    mul-long/2addr v2, p1

    mul-long/2addr v2, v4

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerContentObserver(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mObserverUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs$2;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    const-string v0, "MessageQueryArgs"

    const-string v1, "registerContentObserver"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mObserverUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static unregisterContentObserver(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    const-string v0, "MessageQueryArgs"

    const-string v1, "unregisterContentObserver"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/MessageQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method
