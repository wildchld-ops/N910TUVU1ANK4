.class Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;
.super Ljava/lang/Object;
.source "SetupSpamKeywordWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    # invokes: Lcom/android/mms/ui/EditTextActivity;->showSip()V
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    return-void
.end method
