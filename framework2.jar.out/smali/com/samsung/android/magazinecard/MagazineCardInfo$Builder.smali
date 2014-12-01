.class public Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
.super Ljava/lang/Object;
.source "MagazineCardInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/magazinecard/MagazineCardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCardId:I

.field private mCategory:I

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mExpandedContentView:Landroid/widget/RemoteViews;

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private mSecurityLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCardId:I

    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->SECURITY_LEVEL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mSecurityLevel:I

    sget v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->CATEGORY_NONE:I

    iput v0, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCategory:I

    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mExpandedContentView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mLaunchIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/magazinecard/MagazineCardInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;

    invoke-direct {v0}, Lcom/samsung/android/magazinecard/MagazineCardInfo;-><init>()V

    iget v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCardId:I

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    iget v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mSecurityLevel:I

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mSecurityLevel:I

    iget v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCategory:I

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCategory:I

    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mContentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mExpandedContentView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mExpandedContentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mLaunchIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    return-object v0
.end method

.method public setCardId(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCardId:I

    return-object p0
.end method

.method public setCategory(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mCategory:I

    return-object p0
.end method

.method public setContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setExpandedContentView(Landroid/widget/RemoteViews;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mExpandedContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setLaunchIntent(Landroid/app/PendingIntent;)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setSecurityLevel(I)Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/magazinecard/MagazineCardInfo$Builder;->mSecurityLevel:I

    return-object p0
.end method
