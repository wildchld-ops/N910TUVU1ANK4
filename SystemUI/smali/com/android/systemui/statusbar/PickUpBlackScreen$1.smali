.class Lcom/android/systemui/statusbar/PickUpBlackScreen$1;
.super Ljava/lang/Object;
.source "PickUpBlackScreen.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/PickUpBlackScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/PickUpBlackScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "STATUSBAR-PickUpBlackScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- mMotionListener ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupEvent:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$000(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$100(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$200(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$200(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    # getter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPhonePutDown:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$200(Lcom/android/systemui/statusbar/PickUpBlackScreen;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PickUpBlackScreen$1;->this$0:Lcom/android/systemui/statusbar/PickUpBlackScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/PickUpBlackScreen;->mPickupEvent:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/PickUpBlackScreen;->access$002(Lcom/android/systemui/statusbar/PickUpBlackScreen;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_0
    .end packed-switch
.end method
