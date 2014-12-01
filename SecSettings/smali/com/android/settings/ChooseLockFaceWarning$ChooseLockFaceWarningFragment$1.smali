.class Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment$1;
.super Ljava/lang/Object;
.source "ChooseLockFaceWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment$1;->this$0:Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment$1;->this$0:Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;

    # getter for: Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->mFolderCloseDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;->access$000(Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment$1;->this$0:Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment$1;->this$0:Lcom/android/settings/ChooseLockFaceWarning$ChooseLockFaceWarningFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
