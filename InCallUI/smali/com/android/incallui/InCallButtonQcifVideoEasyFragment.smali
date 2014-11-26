.class public Lcom/android/incallui/InCallButtonQcifVideoEasyFragment;
.super Lcom/android/incallui/InCallButtonQcifVideoFragment;
.source "InCallButtonQcifVideoEasyFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->onFinishInflate(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoEasyFragment;->showDecorationButton(Z)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showGroupCall(Z)V

    return-void
.end method

.method public showDecorationButton(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->showDecorationButton(Z)V

    return-void
.end method

.method protected toggleButtonContainer()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/InCallButtonQcifVideoFragment;->toggleButtonContainer()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallButtonQcifVideoEasyFragment;->showDecorationButton(Z)V

    return-void
.end method
