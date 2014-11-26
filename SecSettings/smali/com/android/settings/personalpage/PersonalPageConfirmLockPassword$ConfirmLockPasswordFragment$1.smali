.class Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "PersonalPageConfirmLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0907e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
