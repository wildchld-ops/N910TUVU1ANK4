.class final Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;
.super Ljava/lang/Object;
.source "CallCardVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraPreviewTouchListerner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardVideoFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/CallCardVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallCardVideoFragment;Lcom/android/incallui/CallCardVideoFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;-><init>(Lcom/android/incallui/CallCardVideoFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " motionEvent = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const-string v7, "common_volte_vt_kor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getType()I

    move-result v0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v8, "CameraPreviewTouchListerner Action down"

    invoke-virtual {v7, v8}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v7

    if-nez v7, :cond_3

    if-eq v0, v6, :cond_3

    const-string v6, ""

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    new-instance v4, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragShadowBuilder;

    invoke-direct {v4, p1}, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v6, 0x0

    invoke-virtual {p1, v2, v4, v6, v5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mZoomed:Z
    invoke-static {v6}, Lcom/android/incallui/CallCardVideoFragment;->access$2200(Lcom/android/incallui/CallCardVideoFragment;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v6}, Lcom/android/incallui/CallCardVideoFragment;->togglePrimaryCallBanner()V

    :cond_4
    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->mZoomed:Z
    invoke-static {v6, v5}, Lcom/android/incallui/CallCardVideoFragment;->access$2202(Lcom/android/incallui/CallCardVideoFragment;Z)Z

    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->zoomGestureState:I
    invoke-static {v6, v5}, Lcom/android/incallui/CallCardVideoFragment;->access$2302(Lcom/android/incallui/CallCardVideoFragment;I)I

    goto :goto_0

    :pswitch_3
    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v8, "Multi touch down"

    invoke-virtual {v7, v8}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    if-ne v0, v6, :cond_0

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    iget-object v7, v7, Lcom/android/incallui/CallCardVideoFragment;->mVideoCallManager:Lcom/android/incallui/vt/VideoCallManager;

    invoke-virtual {v7}, Lcom/android/incallui/vt/VideoCallManager;->getCameraDirection()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    iget-object v8, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # invokes: Lcom/android/incallui/CallCardVideoFragment;->spacing(Landroid/view/MotionEvent;)F
    invoke-static {v8, p2}, Lcom/android/incallui/CallCardVideoFragment;->access$2500(Lcom/android/incallui/CallCardVideoFragment;Landroid/view/MotionEvent;)F

    move-result v8

    float-to-int v8, v8

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->previousDist:I
    invoke-static {v7, v8}, Lcom/android/incallui/CallCardVideoFragment;->access$2402(Lcom/android/incallui/CallCardVideoFragment;I)I

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->previousDist:I
    invoke-static {v7}, Lcom/android/incallui/CallCardVideoFragment;->access$2400(Lcom/android/incallui/CallCardVideoFragment;)I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->zoomGestureState:I
    invoke-static {v7, v6}, Lcom/android/incallui/CallCardVideoFragment;->access$2302(Lcom/android/incallui/CallCardVideoFragment;I)I

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v7, "Multi touch up"

    invoke-virtual {v6, v7}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->zoomGestureState:I
    invoke-static {v6, v5}, Lcom/android/incallui/CallCardVideoFragment;->access$2302(Lcom/android/incallui/CallCardVideoFragment;I)I

    goto/16 :goto_0

    :pswitch_5
    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->zoomGestureState:I
    invoke-static {v7}, Lcom/android/incallui/CallCardVideoFragment;->access$2300(Lcom/android/incallui/CallCardVideoFragment;)I

    move-result v7

    if-ne v7, v6, :cond_0

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v8, "Zoom gesture started"

    invoke-virtual {v7, v8}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # invokes: Lcom/android/incallui/CallCardVideoFragment;->spacing(Landroid/view/MotionEvent;)F
    invoke-static {v7, p2}, Lcom/android/incallui/CallCardVideoFragment;->access$2500(Lcom/android/incallui/CallCardVideoFragment;Landroid/view/MotionEvent;)F

    move-result v7

    float-to-int v1, v7

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->previousDist:I
    invoke-static {v7}, Lcom/android/incallui/CallCardVideoFragment;->access$2400(Lcom/android/incallui/CallCardVideoFragment;)I

    move-result v7

    add-int/lit8 v7, v7, -0x14

    if-ge v1, v7, :cond_5

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->previousDist:I
    invoke-static {v7, v1}, Lcom/android/incallui/CallCardVideoFragment;->access$2402(Lcom/android/incallui/CallCardVideoFragment;I)I

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardVideoFragment;->onZoomOut()V

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->mZoomed:Z
    invoke-static {v7, v6}, Lcom/android/incallui/CallCardVideoFragment;->access$2202(Lcom/android/incallui/CallCardVideoFragment;Z)Z

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->previousDist:I
    invoke-static {v7}, Lcom/android/incallui/CallCardVideoFragment;->access$2400(Lcom/android/incallui/CallCardVideoFragment;)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    if-le v1, v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->previousDist:I
    invoke-static {v7, v1}, Lcom/android/incallui/CallCardVideoFragment;->access$2402(Lcom/android/incallui/CallCardVideoFragment;I)I

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v7}, Lcom/android/incallui/CallCardVideoFragment;->onZoomIn()V

    iget-object v7, p0, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # setter for: Lcom/android/incallui/CallCardVideoFragment;->mZoomed:Z
    invoke-static {v7, v6}, Lcom/android/incallui/CallCardVideoFragment;->access$2202(Lcom/android/incallui/CallCardVideoFragment;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
