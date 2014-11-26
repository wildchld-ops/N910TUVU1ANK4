.class Lcom/android/mms/settings/BubbleStyle$7;
.super Ljava/lang/Object;
.source "BubbleStyle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/BubbleStyle;->setScrollPosition()V
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

    iput-object p1, p0, Lcom/android/mms/settings/BubbleStyle$7;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle$7;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v0, v0, Lcom/android/mms/settings/DisplayStyleActivity;->mBubbleItemScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/mms/settings/BubbleStyle$7;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    sget-object v3, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_RECEIVE_STYLE_ID:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/android/mms/settings/BubbleStyle$7;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v4, v4, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v5, p0, Lcom/android/mms/settings/BubbleStyle$7;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v5, v5, Lcom/android/mms/settings/DisplayStyleActivity;->BUBBLE_GRID_WIDTH:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/mms/settings/DisplayStyleActivity;->calculateScrollPosition(IIII)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method
