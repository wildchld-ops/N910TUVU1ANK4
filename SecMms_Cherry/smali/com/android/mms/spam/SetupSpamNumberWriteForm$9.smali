.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    # setter for: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I
    invoke-static {v1, p2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$602(Lcom/android/mms/spam/SetupSpamNumberWriteForm;I)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    const v3, 0x7f0b01a2

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v1, v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$600(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
