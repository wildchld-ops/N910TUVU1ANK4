.class Lcom/android/mms/settings/CallbackNumberEditActivity$3;
.super Ljava/lang/Object;
.source "CallbackNumberEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/CallbackNumberEditActivity;->callbackSipHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/CallbackNumberEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/CallbackNumberEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity$3;->this$0:Lcom/android/mms/settings/CallbackNumberEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity$3;->this$0:Lcom/android/mms/settings/CallbackNumberEditActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->HasKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberEditActivity$3;->this$0:Lcom/android/mms/settings/CallbackNumberEditActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberEditActivity$3;->this$0:Lcom/android/mms/settings/CallbackNumberEditActivity;

    # getter for: Lcom/android/mms/settings/CallbackNumberEditActivity;->mEditCallback:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/settings/CallbackNumberEditActivity;->access$100(Lcom/android/mms/settings/CallbackNumberEditActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
