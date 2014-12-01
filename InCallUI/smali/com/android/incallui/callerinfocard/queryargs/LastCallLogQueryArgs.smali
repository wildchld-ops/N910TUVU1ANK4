.class public Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;
.source "LastCallLogQueryArgs.java"


# static fields
.field private static mContentObserver:Landroid/database/ContentObserver;

.field private static mHandler:Landroid/os/Handler;

.field private static mObserverUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs$1;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs$1;-><init>()V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mHandler:Landroid/os/Handler;

    sput-object v1, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mObserverUri:Landroid/net/Uri;

    sput-object v1, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/incallui/callerinfocard/CallerInfoCardConstants$Logs;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mUri:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableVIPMode"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "number"

    aput-object v2, v1, v5

    const-string v2, "duration"

    aput-object v2, v1, v4

    const-string v2, "type"

    aput-object v2, v1, v6

    const-string v2, "date"

    aput-object v2, v1, v7

    const-string v2, "logtype"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "reject_flag"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v1, "number=? AND (logtype=? OR logtype=? OR logtype=? OR logtype=?) AND date>=? AND reject_flag=?"

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelection:Ljava/lang/String;

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v1, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    const/4 v1, 0x5

    const-wide/16 v3, 0x23

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x6

    const-string v3, "0"

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    :goto_0
    const-string v1, "date DESC LIMIT 1"

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mOrderBy:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "number"

    aput-object v2, v1, v5

    const-string v2, "duration"

    aput-object v2, v1, v4

    const-string v2, "type"

    aput-object v2, v1, v6

    const-string v2, "date"

    aput-object v2, v1, v7

    const-string v2, "logtype"

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v1, "number=? AND (logtype=? OR logtype=? OR logtype=? OR logtype=?) AND date>=?"

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelection:Ljava/lang/String;

    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v1, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    const/4 v1, 0x5

    const-wide/16 v3, 0x23

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static registerContentObserver(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "content://logs/allcalls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mObserverUri:Landroid/net/Uri;

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs$2;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    const-string v0, "LastCallLogQueryArgs"

    const-string v1, "registerContentObserver"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mObserverUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static unregisterContentObserver(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    const-string v0, "LastCallLogQueryArgs"

    const-string v1, "unregisterContentObserver"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/LastCallLogQueryArgs;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method
