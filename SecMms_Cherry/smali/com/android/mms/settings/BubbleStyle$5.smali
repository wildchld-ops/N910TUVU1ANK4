.class Lcom/android/mms/settings/BubbleStyle$5;
.super Ljava/lang/Object;
.source "BubbleStyle.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/android/mms/settings/BubbleStyle$5;->this$0:Lcom/android/mms/settings/BubbleStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle$5;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iput p3, v0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle$5;->this$0:Lcom/android/mms/settings/BubbleStyle;

    # getter for: Lcom/android/mms/settings/BubbleStyle;->mImageAdapter:Lcom/android/mms/settings/BubbleStyle$ImageAdapter;
    invoke-static {v0}, Lcom/android/mms/settings/BubbleStyle;->access$000(Lcom/android/mms/settings/BubbleStyle;)Lcom/android/mms/settings/BubbleStyle$ImageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/settings/BubbleStyle$5;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget-object v1, p0, Lcom/android/mms/settings/BubbleStyle$5;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v1, v1, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    iget-object v2, p0, Lcom/android/mms/settings/BubbleStyle$5;->this$0:Lcom/android/mms/settings/BubbleStyle;

    iget v2, v2, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBubbleReceiveIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/settings/DisplayStyleActivity;->updatePreviewItems(II)V

    return-void
.end method
