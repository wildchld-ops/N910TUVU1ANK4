.class final Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;
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
    name = "CameraFarTouchListerner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardVideoFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/CallCardVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/CallCardVideoFragment;Lcom/android/incallui/CallCardVideoFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;-><init>(Lcom/android/incallui/CallCardVideoFragment;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " motionEvent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const-string v4, "common_volte_vt_kor"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    const-string v5, "CameraFarTouchListerner Action down"

    invoke-virtual {v4, v5}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # invokes: Lcom/android/incallui/CallCardVideoFragment;->isCameraOffTx(Lcom/android/services/telephony/common/Call;)Z
    invoke-static {v4, v1}, Lcom/android/incallui/CallCardVideoFragment;->access$2100(Lcom/android/incallui/CallCardVideoFragment;Lcom/android/services/telephony/common/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragShadowBuilder;

    invoke-direct {v2, p1}, Lcom/android/incallui/CallCardVideoFragment$CameraPreviewDragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v4, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$CameraFarTouchListerner;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardVideoFragment;->togglePrimaryCallBanner()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
