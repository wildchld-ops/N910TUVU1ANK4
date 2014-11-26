.class Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;
.super Ljava/lang/Object;
.source "InCallButtonQvgaVideoFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallButtonQvgaVideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallButtonQvgaVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    const-wide v7, 0x3fc3333333333333L

    iget-object v1, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInsideView : checkView - "

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

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v2, 0x0

    const/16 v6, 0x64

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch : view - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", event - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    # getter for: Lcom/android/incallui/InCallButtonQvgaVideoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->access$100(Lcom/android/incallui/InCallButtonQvgaVideoFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "qvga_portrait_resolution_support"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    # getter for: Lcom/android/incallui/InCallButtonQvgaVideoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->access$100(Lcom/android/incallui/InCallButtonQvgaVideoFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    # getter for: Lcom/android/incallui/InCallButtonQvgaVideoFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->access$100(Lcom/android/incallui/InCallButtonQvgaVideoFragment;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :goto_0
    :pswitch_0
    return v1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_3
    :pswitch_1
    move v1, v2

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    # getter for: Lcom/android/incallui/InCallButtonQvgaVideoFragment;->mButtonContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->access$200(Lcom/android/incallui/InCallButtonQvgaVideoFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->isInsideView(Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "qvga_portrait_resolution_support"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    invoke-virtual {v2}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->toggleButtonContainer()V

    goto :goto_0

    :cond_4
    const-string v3, "qvga_portrait_resolution_support"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/incallui/InCallButtonQvgaVideoFragment$1;->this$0:Lcom/android/incallui/InCallButtonQvgaVideoFragment;

    invoke-virtual {v2}, Lcom/android/incallui/InCallButtonQvgaVideoFragment;->togglePrimaryCallBanner()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
