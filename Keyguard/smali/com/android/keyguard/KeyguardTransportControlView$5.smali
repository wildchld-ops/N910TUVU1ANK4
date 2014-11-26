.class Lcom/android/keyguard/KeyguardTransportControlView$5;
.super Ljava/lang/Object;
.source "KeyguardTransportControlView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mProgress:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardTransportControlView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1    # Landroid/widget/SeekBar;
    .param p2    # I
    .param p3    # Z

    if-eqz p3, :cond_2

    iput p2, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->setProgress(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1400(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/text/DateFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mTransientSeekTimeElapsed:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1500(Lcom/android/keyguard/KeyguardTransportControlView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mFormat:Ljava/text/DateFormat;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1400(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mTempDate:Ljava/util/Date;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1300(Lcom/android/keyguard/KeyguardTransportControlView;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->updateSeekDisplay()V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mUpdateSeekBars:Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardTransportControlView;->access$200(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$UpdateSeekBarRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    # getter for: Lcom/android/keyguard/KeyguardTransportControlView;->mFutureSeekRunnable:Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->access$1200(Lcom/android/keyguard/KeyguardTransportControlView;)Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardTransportControlView$FutureSeekRunnable;->setProgress(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->this$0:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTransportControlView;->delayResetToMetadata()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardTransportControlView$5;->mProgress:I

    goto :goto_0
.end method
