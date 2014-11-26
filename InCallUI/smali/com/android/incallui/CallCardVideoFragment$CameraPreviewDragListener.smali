.class Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;
.super Ljava/lang/Object;
.source "CallCardVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraPreviewDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardVideoFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/CallCardVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallCardVideoFragment;Lcom/android/incallui/CallCardVideoFragment$1;)V
    .locals 0
    .param p1    # Lcom/android/incallui/CallCardVideoFragment;
    .param p2    # Lcom/android/incallui/CallCardVideoFragment$1;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;-><init>(Lcom/android/incallui/CallCardVideoFragment;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/DragEvent;

    const/high16 v8, 0x3f800000

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v6

    :pswitch_1
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v5, "Drag STARTED"

    invoke-virtual {v4, v5}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1500(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v5, "Drag ENTERED"

    invoke-virtual {v4, v5}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v5, "Drag EXITED"

    invoke-virtual {v4, v5}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    :pswitch_4
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v5, "Drop DROP"

    invoke-virtual {v4, v5}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v2, v4, v5

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    if-gez v2, :cond_3

    const/4 v2, 0x0

    :cond_0
    :goto_1
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mOrientation:I
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1700(Lcom/android/incallui/CallCardVideoFragment;)I

    move-result v4

    if-ne v4, v6, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mBottomOffsetForDrag:I
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1800(Lcom/android/incallui/CallCardVideoFragment;)I

    move-result v1

    :cond_1
    if-gez v3, :cond_4

    const/4 v3, 0x0

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1900(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setX(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainterTemplate:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1900(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setY(F)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1600(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1600(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v2, v4, v5

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1600(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mFarEndView:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1600(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v3, v4, v1

    goto/16 :goto_2

    :pswitch_5
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v5, "Drag ENDED"

    invoke-virtual {v4, v5}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndContainter:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1400(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mNearEndView:Landroid/view/TextureView;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1500(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragListener;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->mIsCameraViewMoved:Z
    invoke-static {v4, v6}, Lcom/android/incallui/CallCardVideoFragment;->access$2002(Lcom/android/incallui/CallCardVideoFragment;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
