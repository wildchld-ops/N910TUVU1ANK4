.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$600(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->getPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I
    invoke-static {v1, v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$702(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;I)I

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$800(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/ImageButton;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->THUMB_ICONS:[I

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v3, v3, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mNewIconIndex:I
    invoke-static {v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$700(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mImageDlg:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
    invoke-static {v1, v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$602(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$400(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v2, v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mTitleEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$400(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$500(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mInputMgr:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$300(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;

    iget-object v2, v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    # getter for: Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->mBodyEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->access$500(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
