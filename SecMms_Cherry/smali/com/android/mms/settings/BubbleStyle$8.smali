.class Lcom/android/mms/settings/BubbleStyle$8;
.super Ljava/lang/Object;
.source "BubbleStyle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/BubbleStyle;->setScrollPositionVertical()V
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

    iput-object p1, p0, Lcom/android/mms/settings/BubbleStyle$8;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle$8;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v0, v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollViewLand:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$8;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v3, p0, Lcom/android/mms/settings/BubbleStyle$8;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v3, v3, Lcom/android/mms/settings/DisplayStyleActivity;->mDisplayPreviewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/android/mms/settings/BubbleStyle$8;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v5, v5, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v6, p0, Lcom/android/mms/settings/BubbleStyle$8;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v6, v6, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_GRID_HEIGHT:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method
