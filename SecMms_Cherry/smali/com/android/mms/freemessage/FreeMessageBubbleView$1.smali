.class Lcom/android/mms/freemessage/FreeMessageBubbleView$1;
.super Ljava/lang/Object;
.source "FreeMessageBubbleView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FreeMessageBubbleView;->setHover(Landroid/view/View;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

.field final synthetic val$image:Lcom/android/mms/model/ImageModel;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$video:Lcom/android/mms/model/VideoModel;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FreeMessageBubbleView;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/VideoModel;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iput-object p2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$image:Lcom/android/mms/model/ImageModel;

    iput-object p3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$video:Lcom/android/mms/model/VideoModel;

    iput-object p4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v6

    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    # setter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverEnterTime:J
    invoke-static {v2, v3, v4}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$002(Lcom/android/mms/freemessage/FreeMessageBubbleView;J)J

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverEnterTime:J
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$000(Lcom/android/mms/freemessage/FreeMessageBubbleView;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v3, v3, Lcom/android/mms/freemessage/FreeMessageBubbleView;->inflate:Landroid/view/LayoutInflater;

    const v4, 0x7f040027

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    # setter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImgContent:Landroid/view/View;
    invoke-static {v2, v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$102(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/view/View;)Landroid/view/View;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImgContent:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$100(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b00a7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    # setter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v3, v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$202(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImgContent:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$100(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b00a8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    # setter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPlayImage:Landroid/widget/ImageView;
    invoke-static {v3, v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$302(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImgContent:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$100(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b00a9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    # setter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSavebtn:Landroid/widget/Button;
    invoke-static {v3, v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$402(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/Button;)Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mSavebtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$400(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$image:Lcom/android/mms/model/ImageModel;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$200(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$image:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$500(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$200(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$image:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$image:Lcom/android/mms/model/ImageModel;

    invoke-virtual {v5}, Lcom/android/mms/model/ImageModel;->getHeight()I

    move-result v5

    # invokes: Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V
    invoke-static {v2, v3, v4, v5, v7}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$600(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/ImageView;IIZ)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$200(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$500(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    # setter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;
    invoke-static {v2, v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$802(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow;

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$800(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverPopupWindowimg:Landroid/widget/HoverPopupWindow;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$800(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/HoverPopupWindow;

    move-result-object v2

    new-instance v3, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;

    invoke-direct {v3, p0}, Lcom/android/mms/freemessage/FreeMessageBubbleView$1$1;-><init>(Lcom/android/mms/freemessage/FreeMessageBubbleView$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    :cond_2
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # setter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverEnterTime:J
    invoke-static {v2, v8, v9}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$002(Lcom/android/mms/freemessage/FreeMessageBubbleView;J)J

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$video:Lcom/android/mms/model/VideoModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPlayImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$300(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$200(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$video:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPlayImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$300(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->val$video:Lcom/android/mms/model/VideoModel;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$700(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$200(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$700(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v5}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$700(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    # invokes: Lcom/android/mms/freemessage/FreeMessageBubbleView;->preCalculateImageBounds(Landroid/widget/ImageView;IIZ)V
    invoke-static {v2, v3, v4, v5, v7}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$600(Lcom/android/mms/freemessage/FreeMessageBubbleView;Landroid/widget/ImageView;IIZ)V

    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$200(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # getter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mVideoBitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$700(Lcom/android/mms/freemessage/FreeMessageBubbleView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$1;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    # setter for: Lcom/android/mms/freemessage/FreeMessageBubbleView;->mHoverEnterTime:J
    invoke-static {v2, v8, v9}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->access$002(Lcom/android/mms/freemessage/FreeMessageBubbleView;J)J

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
