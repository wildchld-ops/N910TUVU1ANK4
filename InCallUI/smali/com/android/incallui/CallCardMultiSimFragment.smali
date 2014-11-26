.class public Lcom/android/incallui/CallCardMultiSimFragment;
.super Lcom/android/incallui/CallCardVoiceFragment;
.source "CallCardMultiSimFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMultiSimContainer:Landroid/view/ViewStub;

.field private mMultiSimSlot1:Landroid/widget/Button;

.field private mMultiSimSlot1Line:Landroid/widget/ImageView;

.field private mMultiSimSlot2:Landroid/widget/Button;

.field private mMultiSimSlot2Line:Landroid/widget/ImageView;

.field private final mSimSlot1:I

.field private final mSimSlot2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallCardVoiceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mSimSlot1:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mSimSlot2:I

    return-void
.end method

.method private setMultiSimTabButton(I)V
    .locals 7
    .param p1    # I

    const v6, 0x7f020468

    const v5, 0x7f0200b2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMultiSimTabButton, simSlot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1Line:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v3, v4, v3}, Lcom/android/incallui/InCallUtils;->getSimCardIcon(IZZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2Line:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v4, v4, v3}, Lcom/android/incallui/InCallUtils;->getSimCardIcon(IZZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2Line:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v4, v4, v3}, Lcom/android/incallui/InCallUtils;->getSimCardIcon(IZZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1Line:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-static {v3, v4, v3}, Lcom/android/incallui/InCallUtils;->getSimCardIcon(IZZ)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardVoiceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

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

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/incallui/CallCardVoiceFragment;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "onClick: multisim_slot1"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallDUOSUIControl;->getInstance()Lcom/android/incallui/InCallDUOSUIControl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallDUOSUIControl;->duosPhoneSwitch(I)V

    goto :goto_0

    :pswitch_1
    const-string v1, "onClick: multisim_slot2"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallDUOSUIControl;->getInstance()Lcom/android/incallui/InCallDUOSUIControl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallDUOSUIControl;->duosPhoneSwitch(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01ba
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/CallCardVoiceFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2}, Lcom/android/incallui/CallCardVoiceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0e01ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimContainer:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimContainer:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimContainer:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f0e01ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    const v0, 0x7f0e01bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0e01bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot1Line:Landroid/widget/ImageView;

    const v0, 0x7f0e01be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimSlot2Line:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimContainer:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/android/services/telephony/common/Call$DisconnectCause;
    .param p3    # Z
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    invoke-super/range {p0 .. p5}, Lcom/android/incallui/CallCardVoiceFragment;->setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallCardMultiSimFragment;->updateSimButtonTabUI()V

    return-void
.end method

.method public updateSimButtonTabUI()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isDualConversationState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isDualInComingCallState()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSimButtonTabUI: show SIM button tab UI, mMultiSimContainer ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimContainer:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimContainer:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimContainer:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getSimIdToDisplay()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardMultiSimFragment;->setMultiSimTabButton(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimContainer:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardMultiSimFragment;->mMultiSimContainer:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method
