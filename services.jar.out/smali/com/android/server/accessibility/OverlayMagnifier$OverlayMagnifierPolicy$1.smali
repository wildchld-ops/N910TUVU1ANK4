.class Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;
.super Landroid/os/Handler;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z
    invoke-static {v1, v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$002(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;Z)Z

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Overlay Magnifier start!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v1

    const/high16 v2, 0x40000000

    iput v2, v1, Landroid/view/MagnificationSpec;->scale:F

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$300(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMotionEvent: spec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v3}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    iget-object v1, v1, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier;->mDisplayManager:Landroid/hardware/display/IDisplayManager;
    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->access$400(Lcom/android/server/accessibility/OverlayMagnifier;)Landroid/hardware/display/IDisplayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;->this$1:Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;

    # getter for: Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;
    invoke-static {v2}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->access$200(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/display/IDisplayManager;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
