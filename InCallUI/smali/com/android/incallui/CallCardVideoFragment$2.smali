.class Lcom/android/incallui/CallCardVideoFragment$2;
.super Ljava/lang/Object;
.source "CallCardVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardVideoFragment;

.field touchDownOn:I


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardVideoFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    return-void
.end method


# virtual methods
.method public isFullInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    const-wide v7, 0x3fa999999999999aL

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFullInsideView : checkView - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", event - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchedBigArea(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/CallCardVideoFragment$2;->isTouchedSmallArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getResizeChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mResizedTouchArea:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/CallCardVideoFragment;->access$1100(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/incallui/CallCardVideoFragment$2;->isFullInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mBigTouchArea:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/CallCardVideoFragment;->access$1200(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/incallui/CallCardVideoFragment$2;->isFullInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public isTouchedSmallArea(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # getter for: Lcom/android/incallui/CallCardVideoFragment;->mSmallTouchArea:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/CallCardVideoFragment;->access$1000(Lcom/android/incallui/CallCardVideoFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/incallui/CallCardVideoFragment$2;->isFullInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch : view - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardFragment;->isDialpadVisible()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :goto_0
    return v3

    :cond_1
    const-string v4, "volte_jpn_orientation_feature"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "VGA"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "VGALAND"

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getFrameSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v3, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/CallCardVideoFragment$2;->isTouchedSmallArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v7, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/CallCardVideoFragment$2;->isTouchedBigArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    iput v8, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/CallCardVideoFragment$2;->isTouchedSmallArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    if-ne v4, v7, :cond_6

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardVideoFragment;->togglePrimaryCallBanner()V

    const/4 v2, 0x1

    :cond_5
    :goto_2
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    if-nez v4, :cond_5

    const-string v4, "volte_jpn_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # invokes: Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1300(Lcom/android/incallui/CallCardVideoFragment;)Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # invokes: Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1300(Lcom/android/incallui/CallCardVideoFragment;)Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/vt/VideoCallManager;->isSwitchCameraClicked()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->changeVideoLocation()V

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/CallCardVideoFragment$2;->isTouchedBigArea(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    if-ne v4, v7, :cond_8

    const-string v4, "volte_jpn_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isHDVideoLandscapeCall()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # invokes: Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1300(Lcom/android/incallui/CallCardVideoFragment;)Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/vt/VideoCallManager;->isFarFrameReady()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    # invokes: Lcom/android/incallui/CallCardVideoFragment;->getVideoCallManager()Lcom/android/incallui/vt/VideoCallManager;
    invoke-static {v4}, Lcom/android/incallui/CallCardVideoFragment;->access$1300(Lcom/android/incallui/CallCardVideoFragment;)Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/vt/VideoCallManager;->isSwitchCameraClicked()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->changeVideoLocation()V

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    iget v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardVideoFragment;->togglePrimaryCallBanner()V

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_9
    iget v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->touchDownOn:I

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardVideoFragment$2;->this$0:Lcom/android/incallui/CallCardVideoFragment;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardVideoFragment;->togglePrimaryCallBanner()V

    const/4 v2, 0x1

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
