.class Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;
.super Ljava/lang/Object;
.source "KeyguardSmartcardPINView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    # getter for: Lcom/android/keyguard/KeyguardSmartcardPINView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerifyPasswordWithCACTask : run()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->status:Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask$1;->this$1:Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;

    iget v3, v3, Lcom/android/keyguard/KeyguardSmartcardPINView$VerifyPasswordWithCACTask;->errorMsgId:I

    # invokes: Lcom/android/keyguard/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardSmartcardPINView;->access$500(Lcom/android/keyguard/KeyguardSmartcardPINView;ZLjava/lang/String;I)V

    return-void
.end method
