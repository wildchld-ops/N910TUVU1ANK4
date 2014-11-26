.class public Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;
.source "SocialNetworkServiceGooglePlusQueryArgs.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sns3.sp.googleplus/status_stream"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$1;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs$1;-><init>()V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceGooglePlusQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mUri:Landroid/net/Uri;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "message"

    aput-object v2, v1, v4

    const-string v2, "media_url"

    aput-object v2, v1, v5

    const-string v2, "timestamp_utc"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "likes_count"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "comments_count"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "reshares_count"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "location_name"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v1, "from_id=? AND timestamp_utc>=?"

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelection:Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->sourceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "g:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v4

    const-wide/16 v2, 0x23

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    const-string v1, "timestamp_utc DESC LIMIT 1"

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mOrderBy:Ljava/lang/String;

    return-void
.end method
