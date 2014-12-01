.class public Lcom/android/incallui/vt/VTSeekBar;
.super Ljava/lang/Object;
.source "VTSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSeekBar:Landroid/widget/SeekBar;

.field mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarLayout:Landroid/widget/FrameLayout;

.field private mSeekBarSelection:I

.field private mSeekBarText:Landroid/widget/TextView;

.field private mSeekbarCntDwn:Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarText:Landroid/widget/TextView;

    new-instance v0, Lcom/android/incallui/vt/VTSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/vt/VTSeekBar$1;-><init>(Lcom/android/incallui/vt/VTSeekBar;)V

    iput-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const v0, 0x7f0e0323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0e0326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f0e0324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarText:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/incallui/vt/VTSeekBar;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/vt/VTSeekBar;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarSelection:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/vt/VTSeekBar;)Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekbarCntDwn:Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/vt/VTSeekBar;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/vt/VTSeekBar;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public showSeekBar(I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVTSeekBar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarSelection:I

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    new-instance v0, Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;-><init>(Lcom/android/incallui/vt/VTSeekBar;JJ)V

    iput-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekbarCntDwn:Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekbarCntDwn:Lcom/android/incallui/vt/VTSeekBar$SeekBarTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVTSeekBar: id is not matched."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showVTSeekBar: mSeekBarLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->getCameraParameters(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/vt/VTSeekBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f090175

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/incallui/vt/VideoCallManager;->getCameraParameters(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/vt/VTSeekBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09019b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    const-string v0, "screen_brightness"

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->getSettingDB(Ljava/lang/String;I)I

    move-result v8

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lp.screenBrightness : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    div-int/lit8 v7, v8, 0x19

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenbrightness Changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/VTSeekBar;->mSeekBarText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/vt/VTSeekBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f09019c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v1, 0x41200000

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e033f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
