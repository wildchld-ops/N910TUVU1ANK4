.class public Lcom/android/incallui/callerinfocard/CallerInfoCardView;
.super Landroid/widget/RelativeLayout;
.source "CallerInfoCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;,
        Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardItemClickListener;
    }
.end annotation


# instance fields
.field private mCallerInfoCardItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerInfoCardListView:Landroid/widget/ListView;

.field private mCallerInfoCardScrollHeaderView:Landroid/view/View;

.field private mCallerInfoCardScrollView:Landroid/widget/ScrollView;

.field private mCallerInfoCardView:Landroid/view/View;

.field private mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

.field private mCallerInfoCardViewShadow:Landroid/view/View;

.field private final mCollapseMaxHeight:I

.field private final mCollapseMinHeight:I

.field private mContext:Landroid/content/Context;

.field private final mDividerHeight:I

.field private final mDividerMoreHeight:I

.field private final mDividerOneHeight:I

.field private mFilePath:Ljava/lang/String;

.field private mFirst:Z

.field private mItemUpdated:Z

.field private mNotifyDataSetChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFirst:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCollapseMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCollapseMaxHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0246

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerOneHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0248

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerMoreHeight:I

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private add(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->replace(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFirst:Z

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseMinHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setScrollHeaderHeight(I)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getViewExpandHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private getChildExpandHeight()I
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getDividerHeight(III)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getCollapseHeight()I
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getDividerHeight(II)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6, v4, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getDividerHeight(II)I

    move-result v0

    :cond_1
    iget v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCollapseMaxHeight:I

    if-le v0, v3, :cond_2

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCollapseMaxHeight:I

    :cond_2
    return v0
.end method

.method private getCollapseMinHeight()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCollapseMinHeight:I

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCollapseMinHeight:I

    :cond_1
    return v0
.end method

.method private getDividerHeight(II)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerHeight:I

    add-int/2addr p2, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerOneHeight:I

    add-int/2addr p2, v0

    :goto_0
    return p2

    :cond_0
    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerMoreHeight:I

    add-int/2addr p2, v0

    goto :goto_0
.end method

.method private getDividerHeight(III)I
    .locals 1

    add-int/lit8 v0, p2, -0x1

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mDividerHeight:I

    add-int/2addr p3, v0

    :cond_0
    return p3
.end method

.method private getViewExpandHeight()I
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getDividerHeight(III)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private notifyDataSetChanged(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mItemUpdated:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mNotifyDataSetChanged:Z

    :cond_0
    return-void
.end method

.method private onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3

    const-string v0, "CallerInfoCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryCompleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->add(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->sort()V

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->notifyDataSetChanged(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    const-string v0, "CallerInfoCardView"

    const-string v1, "notifyDataSetChanged()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return-void
.end method

.method private replace(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)Z
    .locals 14

    const/16 v13, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v3

    div-int/lit8 v11, v6, 0x64

    if-ne v11, v9, :cond_4

    div-int/lit8 v11, v3, 0x64

    if-ne v11, v9, :cond_4

    if-eq v6, v3, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTime()J

    move-result-wide v7

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getUpdateTime()J

    move-result-wide v4

    cmp-long v10, v7, v4

    if-gez v10, :cond_2

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    :cond_1
    :goto_0
    return v9

    :cond_2
    cmp-long v10, v7, v4

    if-nez v10, :cond_1

    if-le v6, v3, :cond_1

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-ne v6, v3, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_1

    iput v10, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v10, v11, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v9}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDirty(Z)V

    goto :goto_0

    :cond_6
    move v9, v10

    goto :goto_0
.end method

.method private scrollToUp()V
    .locals 3

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseMinHeight()I

    move-result v2

    sub-int v0, v1, v2

    invoke-direct {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->scrollToUp(I)V

    return-void
.end method

.method private scrollToUp(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->scrollViewTo(II)V

    return-void
.end method

.method private scrollViewTo(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mItemUpdated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mItemUpdated:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFirst:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private setScrollHeaderHeight(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollHeaderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollHeaderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->scrollToUp()V

    return-void
.end method

.method private sort()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->clear()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardView:Landroid/view/View;

    const v0, 0x7f0e0067

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollHeaderView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollHeaderView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0e0066

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewShadow:Landroid/view/View;

    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040018

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardItemClickListener;

    invoke-direct {v1, p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardItemClickListener;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mNotifyDataSetChanged:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseMinHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setScrollHeaderHeight(I)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getChildExpandHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->scrollToUp()V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iput-boolean v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mNotifyDataSetChanged:Z

    iput-boolean v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mItemUpdated:Z

    iput-boolean v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFirst:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseMinHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setScrollHeaderHeight(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public setActionMemoFilePath(ILjava/lang/String;)V
    .locals 7

    const-string v4, "CallerInfoCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setActionMemoFilePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFilePath:Ljava/lang/String;

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x12e

    if-ne p1, v4, :cond_2

    iput-object p2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFilePath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/incallui/InCallUtils;->setActionMemoFilePathForLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x12f

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v0

    const/16 v4, 0x12d

    if-ne v0, v4, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getActionMemoFilePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActionMemoFilePath["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFilePath:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/incallui/InCallUtils;->setActionMemoFilePathForLog(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v4, "CallerInfoCardView"

    const-string v5, "It should not be here... only for MEMO_DURING_CALL || MEMO_DELETE_DURING_CALL"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0
.end method

.method public setActionMemoFilePath(ILjava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v6, "CallerInfoCardView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setActionMemoFilePath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFilePath:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v6, 0x12f

    if-ne p1, v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v0

    const/16 v6, 0x12d

    if-ne v0, v6, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getActionMemoFilePath()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getActionMemoFilePath["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    :goto_1
    if-ltz v3, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "filePath["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFilePath:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/incallui/InCallUtils;->setActionMemoFilePathForLog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    const-string v6, "CallerInfoCardView"

    const-string v7, "It should not be here... only for MEMO_DELETE_DURING_CALL"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardViewAdapter:Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardViewAdapter;->allItemsEnabled(Z)V

    :cond_0
    const-string v0, "support_folder_hardkey"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method public setVisibility(IZ)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getCollapseMinHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setScrollHeaderHeight(I)V

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    const v2, 0x7f050005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    const v2, 0x7f050004

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 6

    const/16 v1, 0x12e

    if-eq p2, v1, :cond_0

    const/16 v1, 0x12f

    if-ne p2, v1, :cond_1

    :cond_0
    new-instance v0, Lcom/android/incallui/callerinfocard/item/MemoItem;

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mFilePath:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/callerinfocard/item/MemoItem;-><init>(Landroid/content/Context;ILjava/lang/String;ZLcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;)V

    invoke-static {p1, p2, v1, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQuery(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_0
.end method
