.class Lcom/android/keyguard/KeyguardCarrierPasswordView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardCarrierPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;JJ)V
    .locals 0
    .param p2    # J
    .param p4    # J

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mBackupPin:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$300(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 3
    .param p1    # J

    const/4 v2, 0x1

    const-string v0, "kr"

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$100(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const v1, 0x7f060030

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "cn"

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->countryCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$100(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const v1, 0x7f060031

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordView;

    # getter for: Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->access$200(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    const v1, 0x7f060032

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method
