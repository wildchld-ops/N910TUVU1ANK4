.class Lcom/android/mms/ui/EditTextActivity$2;
.super Ljava/lang/Object;
.source "EditTextActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EditTextActivity;->showSip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditTextActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditTextActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EditTextActivity$2;->this$0:Lcom/android/mms/ui/EditTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity$2;->this$0:Lcom/android/mms/ui/EditTextActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->HasKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/EditTextActivity$2;->this$0:Lcom/android/mms/ui/EditTextActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/EditTextActivity$2;->this$0:Lcom/android/mms/ui/EditTextActivity;

    iget-object v1, v1, Lcom/android/mms/ui/EditTextActivity;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
