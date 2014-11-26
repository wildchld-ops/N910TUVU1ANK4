.class Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v0, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    # invokes: Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->showSensorErrorDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->access$100(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->access$200(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;->access$200(Lcom/android/settings/fingerprint/FingerprintConfirm$FingerprintConfirmFragment;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
