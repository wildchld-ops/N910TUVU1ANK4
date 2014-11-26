.class public Lcom/android/keyguard/sec/KeyguardWidgetNavigation;
.super Landroid/widget/LinearLayout;
.source "KeyguardWidgetNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardWidgetNavigation$1;,
        Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;
    }
.end annotation


# instance fields
.field private mCurrentPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mLockpatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMainQueue:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mMainQueue:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLockpatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private getNavigationImage(Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;)I
    .locals 4
    .param p1    # Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;

    const v0, 0x7f020128

    const v1, 0x7f02012b

    sget-object v2, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$1;->$SwitchMap$com$android$keyguard$sec$KeyguardWidgetNavigation$PageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    const v0, 0x7f02012a

    goto :goto_0

    :pswitch_3
    const v0, 0x7f020129

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getPagesList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isAddPage(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v4

    if-ne v1, v4, :cond_3

    sget-object v4, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_add:Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;->add:Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-ne v1, v0, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v4

    if-ne v1, v4, :cond_5

    sget-object v4, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_home:Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;->home:Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v4

    if-ne v1, v4, :cond_7

    sget-object v4, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_normal:Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;->normal:Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c0029

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_1

    sget-object v10, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$1;->$SwitchMap$com$android$keyguard$sec$KeyguardWidgetNavigation$PageType:[I

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    packed-switch v9, :pswitch_data_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020128

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v9, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f02012b

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v6, v9, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_2
    new-instance v2, Landroid/widget/ImageView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f02012a

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v6, v9, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_3
    new-instance v4, Landroid/widget/ImageView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020129

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v9, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_4
    new-instance v3, Landroid/widget/ImageView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020128

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v6, v9, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :pswitch_5
    new-instance v7, Landroid/widget/ImageView;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v9, 0x7f02012b

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v9, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_1
    iget-object v9, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-virtual {p0, v9, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->getNavigationImage(Lcom/android/keyguard/sec/KeyguardWidgetNavigation$PageType;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardWidgetPager;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/keyguard/KeyguardWidgetPager;

    return-void
.end method

.method public updateWidgetNavigation()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->getPagesList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigationLayout(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    goto :goto_0
.end method
