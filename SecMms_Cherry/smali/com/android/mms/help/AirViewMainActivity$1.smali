.class Lcom/android/mms/help/AirViewMainActivity$1;
.super Ljava/lang/Object;
.source "AirViewMainActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirViewMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;
    }
.end annotation


# instance fields
.field mCheckStart:Z

.field mHoverStartTimer:Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;

.field final synthetic this$0:Lcom/android/mms/help/AirViewMainActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirViewMainActivity;)V
    .locals 6

    const-wide/16 v2, 0x12c

    iput-object p1, p0, Lcom/android/mms/help/AirViewMainActivity$1;->this$0:Lcom/android/mms/help/AirViewMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/help/AirViewMainActivity$1;->mCheckStart:Z

    new-instance v0, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;-><init>(Lcom/android/mms/help/AirViewMainActivity$1;JJ)V

    iput-object v0, p0, Lcom/android/mms/help/AirViewMainActivity$1;->mHoverStartTimer:Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v2

    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity$1;->this$0:Lcom/android/mms/help/AirViewMainActivity;

    invoke-virtual {v0}, Lcom/android/mms/help/AirViewMainActivity;->isSPenInformationPreviewOn()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/help/AirViewMainActivity$1;->mCheckStart:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity$1;->mHoverStartTimer:Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;

    invoke-virtual {v0, p1}, Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;->setView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/help/AirViewMainActivity$1;->mCheckStart:Z

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity$1;->mHoverStartTimer:Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity$1;->mHoverStartTimer:Lcom/android/mms/help/AirViewMainActivity$1$HoverStartTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-boolean v2, p0, Lcom/android/mms/help/AirViewMainActivity$1;->mCheckStart:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
    .end sparse-switch
.end method
