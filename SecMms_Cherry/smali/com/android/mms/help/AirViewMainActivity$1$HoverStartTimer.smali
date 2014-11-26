.class Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;
.super Landroid/os/CountDownTimer;
.source "AirViewMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/help/AirViewMainActivity$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoverStartTimer"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$1:Lcom/android/mms/help/AirViewMainActivity$1;


# direct methods
.method public constructor <init>(Lcom/android/mms/help/AirViewMainActivity$1;JJ)V
    .locals 0
    .param p2    # J
    .param p4    # J

    iput-object p1, p0, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;->this$1:Lcom/android/mms/help/AirViewMainActivity$1;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;->this$1:Lcom/android/mms/help/AirViewMainActivity$1;

    iget-object v0, v0, Lcom/android/mms/help/AirViewMainActivity$1;->this$0:Lcom/android/mms/help/AirViewMainActivity;

    iget-object v0, v0, Lcom/android/mms/help/AirViewMainActivity;->mHelpDialog:Lcom/android/mms/help/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer$1;

    invoke-direct {v1, p0}, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer$1;-><init>(Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0
    .param p1    # J

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;->mView:Landroid/view/View;

    return-void
.end method
