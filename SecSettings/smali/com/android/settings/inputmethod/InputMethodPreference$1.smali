.class Lcom/android/settings/inputmethod/InputMethodPreference$1;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    # getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mIsDefaultIme:Z
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$000(Lcom/android/settings/inputmethod/InputMethodPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$100(Lcom/android/settings/inputmethod/InputMethodPreference;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    # getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mIsSystemIme:Z
    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$200(Lcom/android/settings/inputmethod/InputMethodPreference;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    # invokes: Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$100(Lcom/android/settings/inputmethod/InputMethodPreference;ZZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    # getter for: Lcom/android/settings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$300(Lcom/android/settings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    # invokes: Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$400(Lcom/android/settings/inputmethod/InputMethodPreference;Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V

    goto :goto_0
.end method
