.class public Lcom/android/incallui/drivelink/EndCallButtonDriveLinkFragment;
.super Lcom/android/incallui/EndCallButtonFragment;
.source "EndCallButtonDriveLinkFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/EndCallButtonFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->sendDrivelinkMessageClicked()V

    goto :goto_0

    :pswitch_1
    const-string v1, "Select voice call button when end call"

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/EndCallButtonPresenter;->fromEndcallDriveLink:Z

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/EndCallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/EndCallButtonPresenter;->voiceCallClicked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00f0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v1, "onCreateView..."

    invoke-virtual {p0, v1}, Lcom/android/incallui/BaseFragment;->log(Ljava/lang/String;)V

    const v1, 0x7f04002d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/drivelink/EndCallButtonDriveLinkFragment;->onFinishInflate(Landroid/view/View;)V

    return-object v0
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/EndCallButtonFragment;->onFinishInflate(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/EndCallButtonFragment;->onResume()V

    return-void
.end method

.method public updateVoiceCallButton(Landroid/widget/Button;Z)V
    .locals 0

    return-void
.end method
