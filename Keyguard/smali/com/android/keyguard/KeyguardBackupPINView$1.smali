.class Lcom/android/keyguard/KeyguardBackupPINView$1;
.super Ljava/lang/Object;
.source "KeyguardBackupPINView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardBackupPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardBackupPINView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardBackupPINView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->doHapticKeyClick()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBackupPINView$1;->this$0:Lcom/android/keyguard/KeyguardBackupPINView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->verifyBackupPasswordAndUnlock()V

    :cond_0
    return-void
.end method
