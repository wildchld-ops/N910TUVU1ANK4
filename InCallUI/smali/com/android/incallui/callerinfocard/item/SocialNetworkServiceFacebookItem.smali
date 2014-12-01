.class public Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceFacebookItem;
.super Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;
.source "SocialNetworkServiceFacebookItem.java"


# instance fields
.field private mPostId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private setPostId(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceFacebookItem;->mPostId:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppIconResourceId()I
    .locals 1

    const v0, 0x7f02009e

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

    const-string v0, "place_name"

    return-object v0
.end method

.method public getMessageColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "message"

    return-object v0
.end method

.method public getPictureColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "picture"

    return-object v0
.end method

.method public getUpdateColumnName()Ljava/lang/String;
    .locals 1

    const-string v0, "updated_time"

    return-object v0
.end method

.method public launch()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fb://post/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceFacebookItem;->mPostId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    const-string v0, "post_id"

    invoke-direct {p0, p3, v0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceFacebookItem;->setPostId(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method protected setPhotoUrls(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 5

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "_s.jpg"

    const-string v4, "_n.jpg"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mPhotoUrls:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mPhotoUrls:Ljava/util/ArrayList;

    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mPhotoUrls:Ljava/util/ArrayList;

    goto :goto_0
.end method
