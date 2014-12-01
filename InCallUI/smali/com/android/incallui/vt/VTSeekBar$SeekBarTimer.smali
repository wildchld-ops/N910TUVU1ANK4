.class public Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;
.super Landroid/os/CountDownTimer;
.source "VTSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/vt/VTSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/vt/VTSeekBar;


# direct methods
.method public constructor <init>(Lcom/android/incallui/vt/VTSeekBar;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const-string v0, "Count down timer is finished"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mSeekBarLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/vt/VTSeekBar;->access$300(Lcom/android/incallui/vt/VTSeekBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;->this$0:Lcom/android/incallui/vt/VTSeekBar;

    # getter for: Lcom/android/incallui/vt/VTSeekBar;->mSeekBarLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/vt/VTSeekBar;->access$300(Lcom/android/incallui/vt/VTSeekBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
