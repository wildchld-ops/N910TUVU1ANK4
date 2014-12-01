.class Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "PersonalPageChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;

    # getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
