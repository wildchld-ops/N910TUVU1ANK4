.class Lcom/android/mms/settings/BubbleStyle$4;
.super Ljava/lang/Object;
.source "BubbleStyle.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/BubbleStyle;->setGalleryData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/BubbleStyle;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/BubbleStyle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iput p3, v2, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # getter for: Lcom/android/mms/settings/BubbleStyle;->mImageAdapter:Lcom/android/mms/settings/BubbleStyle$ImageAdapter;
    invoke-static {v2}, Lcom/android/mms/settings/BubbleStyle;->access$000(Lcom/android/mms/settings/BubbleStyle;)Lcom/android/mms/settings/BubbleStyle$ImageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-boolean v2, v2, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v1, v2, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    if-gt p3, v3, :cond_2

    invoke-virtual {v1, v6, v6}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v3, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v3, v3, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/settings/DisplayStyleActivity;->updatePreviewItems(II)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v3, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v3, v3, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v5, v5, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_GRID_HEIGHT:I

    invoke-virtual {v2, v3, v4, p3, v5}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v0, v2, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    if-gt p3, v3, :cond_4

    invoke-virtual {v0, v6, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v3

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_SEND_STYLE_ID:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v5, v5, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_GRID_WIDTH:I

    invoke-virtual {v2, v3, v4, p3, v5}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v2

    invoke-virtual {v0, v2, v6}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-boolean v0, v0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # invokes: Lcom/android/mms/settings/BubbleStyle;->setScrollPositionVertical()V
    invoke-static {v0}, Lcom/android/mms/settings/BubbleStyle;->access$100(Lcom/android/mms/settings/BubbleStyle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle$4;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # invokes: Lcom/android/mms/settings/BubbleStyle;->setScrollPosition()V
    invoke-static {v0}, Lcom/android/mms/settings/BubbleStyle;->access$200(Lcom/android/mms/settings/BubbleStyle;)V

    goto :goto_0
.end method
