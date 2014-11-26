.class public abstract Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "SocialNetworkServiceItem.java"


# instance fields
.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # Landroid/database/Cursor;
    .param p4    # Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private setAppIcon()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getAppIconResourceId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppIcon(I)V

    return-void
.end method

.method private setCommentsCount()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getCommentsCountColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setOptionalBottomText2(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method private setLikesCount()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getLikesCountColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setOptionalBottomText1(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method private setLocation()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getLocationColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setOptionalIconText(Landroid/database/Cursor;ZLjava/lang/String;)V

    return-void
.end method

.method private setMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getMessageColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setMainText(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method private setPicture()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getPictureColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setPhotoUrls(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method

.method private setUpdateTime()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->getUpdateColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setUpdateTime(Landroid/database/Cursor;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getAppIconResourceId()I
.end method

.method public abstract getCommentsCountColumnName()Ljava/lang/String;
.end method

.method public abstract getLikesCountColumnName()Ljava/lang/String;
.end method

.method public abstract getLocationColumnName()Ljava/lang/String;
.end method

.method public abstract getMessageColumnName()Ljava/lang/String;
.end method

.method public abstract getPictureColumnName()Ljava/lang/String;
.end method

.method public abstract getUpdateColumnName()Ljava/lang/String;
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .param p3    # Landroid/database/Cursor;
    .param p4    # Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setAppIcon()V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setMessage()V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setLocation()V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setPicture()V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setLikesCount()V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setCommentsCount()V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/item/SocialNetworkServiceItem;->setUpdateTime()V

    return-void
.end method

.method protected setOptionalBottomText1(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;
    .param p2    # Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalBottomText1:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalBottomText1:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalBottomText1:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected setOptionalBottomText2(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;
    .param p2    # Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalBottomText2:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalBottomText2:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalBottomText2:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected setOptionalIconText(Landroid/database/Cursor;ZLjava/lang/String;)V
    .locals 3
    .param p1    # Landroid/database/Cursor;
    .param p2    # Z
    .param p3    # Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalText:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected setPhotoUrls(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

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

.method protected setUpdateTime(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/database/Cursor;
    .param p2    # Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mUpdateTime:J

    const-wide/32 v3, 0x5265c00

    const-wide/32 v5, 0x240c8400

    const/high16 v7, 0x40000

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->mOptionalBottomUpdateTimeString:Ljava/lang/String;

    :cond_0
    return-void
.end method
