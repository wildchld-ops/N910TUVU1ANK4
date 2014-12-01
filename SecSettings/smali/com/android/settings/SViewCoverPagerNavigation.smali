.class public Lcom/android/settings/SViewCoverPagerNavigation;
.super Landroid/widget/LinearLayout;
.source "SViewCoverPagerNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SViewCoverPagerNavigation$1;,
        Lcom/android/settings/SViewCoverPagerNavigation$PageType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentPage:I

.field private mDensity:F

.field private mIndicatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SViewCoverPagerNavigation"

    sput-object v0, Lcom/android/settings/SViewCoverPagerNavigation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/settings/SViewCoverPagerNavigation;->updateLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/SViewCoverPagerNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/android/settings/SViewCoverPagerNavigation;->updateLayout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mCurrentPage:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mDensity:F

    invoke-direct {p0}, Lcom/android/settings/SViewCoverPagerNavigation;->updateLayout()V

    return-void
.end method

.method private getNavigationImage(Lcom/android/settings/SViewCoverPagerNavigation$PageType;)I
    .locals 3

    const v0, 0x7f0200a7

    sget-object v1, Lcom/android/settings/SViewCoverPagerNavigation$1;->$SwitchMap$com$android$settings$SViewCoverPagerNavigation$PageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0200a6

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    if-ge v3, v4, :cond_0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    if-eq v3, v4, :cond_2

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mDensity:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x400c000000000000L

    mul-double/2addr v3, v5

    double-to-int v1, v3

    invoke-virtual {v2, v1, v7, v1, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    if-le v3, v4, :cond_2

    :goto_1
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mPageCount:I

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Lcom/android/settings/SViewCoverPagerNavigation$PageType;->normal:Lcom/android/settings/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v3}, Lcom/android/settings/SViewCoverPagerNavigation;->getNavigationImage(Lcom/android/settings/SViewCoverPagerNavigation$PageType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mIndicatorList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/settings/SViewCoverPagerNavigation;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget-object v4, Lcom/android/settings/SViewCoverPagerNavigation$PageType;->current_normal:Lcom/android/settings/SViewCoverPagerNavigation$PageType;

    invoke-direct {p0, v4}, Lcom/android/settings/SViewCoverPagerNavigation;->getNavigationImage(Lcom/android/settings/SViewCoverPagerNavigation$PageType;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
