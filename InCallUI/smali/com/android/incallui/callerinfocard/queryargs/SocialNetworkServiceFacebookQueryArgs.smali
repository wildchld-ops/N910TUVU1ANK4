.class public Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceFacebookQueryArgs;
.super Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;
.source "SocialNetworkServiceFacebookQueryArgs.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sns3.sp.facebook/status_stream"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceFacebookQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceFacebookQueryArgs$1;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceFacebookQueryArgs$1;-><init>()V

    sput-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceFacebookQueryArgs;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 6
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;-><init>(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/incallui/callerinfocard/queryargs/SocialNetworkServiceFacebookQueryArgs;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mUri:Landroid/net/Uri;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "post_id"

    aput-object v1, v0, v3

    const-string v1, "message"

    aput-object v1, v0, v4

    const-string v1, "picture"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "updated_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "likes_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "comments_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "place_name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mProjection:[Ljava/lang/String;

    const-string v0, "from_id=? AND updated_time>=?"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelection:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    check-cast p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v1, p2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->sourceId:Ljava/lang/String;

    aput-object v1, v0, v3

    const-wide/16 v1, 0x23

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->getPeriod(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mSelectionArgs:[Ljava/lang/String;

    const-string v0, "updated_time DESC LIMIT 1"

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/queryargs/CallerInfoCardQueryArgs;->mOrderBy:Ljava/lang/String;

    return-void
.end method
