.class Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;
.super Ljava/lang/Object;
.source "EmoticonCustomView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->getTextView()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "Mms/EmoticonCustomView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onKey() - keyCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v0

    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_8

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v6, v6, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v1

    :goto_2
    packed-switch p2, :pswitch_data_1

    :cond_1
    :goto_3
    packed-switch p2, :pswitch_data_2

    :cond_2
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    :cond_3
    move v6, v7

    :cond_4
    :goto_5
    return v6

    :pswitch_0
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_5

    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->access$800(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v9, v9, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mCategory:I
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView;->access$900(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    move v6, v7

    goto :goto_5

    :pswitch_1
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->access$800(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_6

    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->access$800(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    if-eqz v8, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v6, v6, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v6, v6, Lcom/android/mms/ui/EmoticonCustomView;->mEmoticonsPager:Landroid/support/v4/view/ViewPager;

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v9, v9, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mCategory:I
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView;->access$900(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    move v6, v7

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v9, v9, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView;->access$100(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->access$800(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ge v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->access$800(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    iget-object v11, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v11, v11, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I
    invoke-static {v11}, Lcom/android/mms/ui/EmoticonCustomView;->access$100(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v11

    add-int/2addr v10, v11

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v8

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v9, v9, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView;->access$100(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v9

    sub-int/2addr v8, v9

    if-ltz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v8, v8, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    iget-object v9, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->mEmoticonList:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->access$800(Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v10

    iget-object v11, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v11, v11, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    # getter for: Lcom/android/mms/ui/EmoticonCustomView;->mItemCountInRow:I
    invoke-static {v11}, Lcom/android/mms/ui/EmoticonCustomView;->access$100(Lcom/android/mms/ui/EmoticonCustomView;)I

    move-result v11

    sub-int/2addr v10, v11

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_7
    move v0, v6

    goto/16 :goto_1

    :cond_8
    move v1, v6

    goto/16 :goto_2

    :pswitch_4
    if-lt v0, v4, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v6, v6, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_3

    :pswitch_5
    if-lt v4, v1, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v6, v6, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_3

    :pswitch_6
    if-lt v0, v4, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v6, v6, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_4

    :pswitch_7
    if-lt v4, v1, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter$2;->this$1:Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;

    iget-object v6, v6, Lcom/android/mms/ui/EmoticonCustomView$EmoticonAdapter;->this$0:Lcom/android/mms/ui/EmoticonCustomView;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x13
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
