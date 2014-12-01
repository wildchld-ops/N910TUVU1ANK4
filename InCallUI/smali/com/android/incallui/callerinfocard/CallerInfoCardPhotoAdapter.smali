.class public Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "CallerInfoCardPhotoAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mPhotoManager:Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;

.field private mPhotoUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mPhotoManager:Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mPhotoUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mPhotoManager:Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mPhotoUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManager;->loadPhoto(Landroid/widget/ImageView;Ljava/lang/String;)V

    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPhotoUrls(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardPhotoAdapter;->mPhotoUrls:Ljava/util/ArrayList;

    return-void
.end method
