.class public Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;
.super Landroid/widget/BaseAdapter;
.source "EmoticonCustomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonCustomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmoticonAdapter"
.end annotation


# instance fields
.field private mEmoticonList:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/EmoticonCustomView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/EmoticonCustomView;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;

    return-object v0
.end method

.method private getItem(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    mul-int v1, p2, p1

    move v0, v1

    :goto_0
    add-int v3, v1, p2

    iget-object v4, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getTextView()Landroid/widget/TextView;
    .locals 9

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonCustomView;->access$200(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0113

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonCustomView;->access$300(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0114

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonCustomView;->access$400(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0115

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonCustomView;->access$500(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0116

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/EmoticonCustomView;->access$600(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v6, v5, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-direct {v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1, v4, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f0202eb

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusable(Z)V

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x41e80000

    invoke-virtual {v3, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v8}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    new-instance v6, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$1;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$1;-><init>(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;-><init>(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object v3
.end method


# virtual methods
.method public getCount()I
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I
    invoke-static {v1}, Lcom/android/mms/ui/EmoticonCustomView;->access$100(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    invoke-virtual {v2}, Lcom/android/mms/ui/EmoticonCustomView;->getEmoticonCountInRow()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v1, "Mms/EmoticonCustomView"

    const-string v2, "getCount() - differnt row count"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    invoke-virtual {v2}, Lcom/android/mms/ui/EmoticonCustomView;->getEmoticonCountInRow()I

    move-result v2

    # setter for: Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/EmoticonCustomView;->access$102(Lcom/android/mms/ui/EmoticonCustomView;I)I

    invoke-virtual {p0}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonCustomView;->access$100(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v2

    div-int v0, v1, v2

    iget-object v1, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I
    invoke-static {v2}, Lcom/android/mms/ui/EmoticonCustomView;->access$100(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v2

    rem-int/2addr v1, v2

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    move-object v3, p2

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/mms/ui/EmoticonCustomView;->access$000(Lcom/android/mms/ui/EmoticonCustomView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I
    invoke-static {v5}, Lcom/android/mms/ui/EmoticonCustomView;->access$100(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->getItem(II)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v5, v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-le v5, v0, :cond_2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-int v5, v0, p1

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v0, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setFocusable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v3, p1}, Landroid/view/View;->setId(I)V

    return-object v3
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string v0, "Mms/EmoticonCustomView"

    const-string v1, "EmoticonAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
