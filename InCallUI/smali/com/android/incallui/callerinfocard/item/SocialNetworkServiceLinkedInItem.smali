.class public Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceLinkedInItem;
.super Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;
.source "SocialNetworkServiceLinkedInItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAppIconResourceId()I
    .locals 1

    const v0, 0x7f0200a0

    return v0
.end method

.method public getCommentsCountColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "comments_count"

    return-object v0
.end method

.method public getLikesCountColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "likes_count"

    return-object v0
.end method

.method public getLocationColumnName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessageColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "comment"

    return-object v0
.end method

.method public getPictureColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "submitted_url"

    return-object v0
.end method

.method public getUpdateColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "timestamp"

    return-object v0
.end method

.method public launch()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkedin://updates/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mCookieWrapper:Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;

    iget-object v2, v2, Lcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$CookieWrapper;->sync2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?referrer_partner=samsung_galaxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method
