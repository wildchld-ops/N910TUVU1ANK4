.class Lcom/android/incallui/vt/VTSeekBar$1;
.super Ljava/lang/Object;
.source "VTSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/vt/VTSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/vt/VTSeekBar;


# direct methods
.method constructor <init>(Lcom/android/incallui/vt/VTSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setScreenBrightness(I)V
    .locals 5
    .param p1    # I

    const-wide/high16 v3, 0x4024000000000000L

    iget-object v1, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/incallui/vt/VTSeekBar;->access$200(Lcom/android/incallui/vt/VTSeekBar;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    int-to-double v1, p1

    div-double/2addr v1, v3

    const-wide v3, 0x3f94141414141414L

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lp.screenBrightness Changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/incallui/vt/VTSeekBar;->access$200(Lcom/android/incallui/vt/VTSeekBar;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    int-to-double v1, p1

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;
    .param p2    # I
    .param p3    # Z

    const-string v0, "Inside OnSeekBarChangeListener :: onProgressChanged"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mSeekBarSelection:I
    invoke-static {v0}, Lcom/android/incallui/vt/VTSeekBar;->access$000(Lcom/android/incallui/vt/VTSeekBar;)I

    move-result v0

    const v1, 0x7f0e0341

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brightness control Progress Changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/incallui/vt/VideoCallManager;->setCameraParameters(II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mSeekbarCntDwn:Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;
    invoke-static {v0}, Lcom/android/incallui/vt/VTSeekBar;->access$100(Lcom/android/incallui/vt/VTSeekBar;)Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mSeekbarCntDwn:Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;
    invoke-static {v0}, Lcom/android/incallui/vt/VTSeekBar;->access$100(Lcom/android/incallui/vt/VTSeekBar;)Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mSeekBarSelection:I
    invoke-static {v0}, Lcom/android/incallui/vt/VTSeekBar;->access$000(Lcom/android/incallui/vt/VTSeekBar;)I

    move-result v0

    const v1, 0x7f0e0340

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contrast control Progress Changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Lcom/android/incallui/vt/VideoCallManager;->setCameraParameters(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mSeekBarSelection:I
    invoke-static {v0}, Lcom/android/incallui/vt/VTSeekBar;->access$000(Lcom/android/incallui/vt/VTSeekBar;)I

    move-result v0

    const v1, 0x7f0e033f

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen Brightnesss Progress Changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/incallui/vt/VTSeekBar$1;->setScreenBrightness(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mSeekbarCntDwn:Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;
    invoke-static {v0}, Lcom/android/incallui/vt/VTSeekBar;->access$100(Lcom/android/incallui/vt/VTSeekBar;)Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar$1;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mSeekbarCntDwn:Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;
    invoke-static {v0}, Lcom/android/incallui/vt/VTSeekBar;->access$100(Lcom/android/incallui/vt/VTSeekBar;)Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
