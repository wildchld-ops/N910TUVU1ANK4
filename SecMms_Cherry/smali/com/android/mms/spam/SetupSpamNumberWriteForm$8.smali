.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$8;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberWriteForm;->alertdialogMatchCriteria()V
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

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$8;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$8;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    # invokes: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showSip()V
    invoke-static {v0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$500(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    return-void
.end method
