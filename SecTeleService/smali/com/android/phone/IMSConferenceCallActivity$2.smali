.class Lcom/android/phone/IMSConferenceCallActivity$2;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IMSConferenceCallActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$400(Lcom/android/phone/IMSConferenceCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mScreenState:I
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$500(Lcom/android/phone/IMSConferenceCallActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$100(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/IMSConferenceCallActivity;->access$600(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/IMSConferenceCallActivity$2;->this$0:Lcom/android/phone/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/IMSConferenceCallActivity;->access$100(Lcom/android/phone/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
