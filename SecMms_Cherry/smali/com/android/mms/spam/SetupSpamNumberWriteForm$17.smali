.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$17;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberWriteForm;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$17;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$17;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-static {v0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$17;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
