.class Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "EmoticonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagersAdapter"
.end annotation


# instance fields
.field private mEmoticonCacheView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    return-void
.end method

.method private getPage(I)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1200(Lcom/android/mms/ui/EmoticonContainer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/ui/EmoticonCustomView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mOnEmoticonSelectedListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$1600(Lcom/android/mms/ui/EmoticonContainer;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/EmoticonCustomView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter$1;-><init>(Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/EmoticonCustomView;->setCategory(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonContainer;->access$900(Lcom/android/mms/ui/EmoticonContainer;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/EmoticonCustomView;->setEmoticonsPager(Landroid/support/v4/view/ViewPager;)V

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 2

    sget v1, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonCategory:I

    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq v1, v0, :cond_0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    sput v0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonCategory:I

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer;->mEmoticonTabManager:Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/EmoticonContainer$EmoticonTabManager;->onTabChangedByPager()V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    # getter for: Lcom/android/mms/ui/EmoticonContainer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/EmoticonContainer;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "instantiateItem position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, p2, -0x1

    invoke-direct {p0, v4}, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->getPage(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->mEmoticonCacheView:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-nez p2, :cond_2

    move-object v2, v3

    check-cast v2, Lcom/android/mms/ui/EmoticonCustomView;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/mms/ui/EmoticonCustomView;->setCategory(I)V

    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    :cond_3
    check-cast p1, Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
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
