.class Lcom/android/mms/oem/AutoSendingTestActivity$5;
.super Ljava/lang/Object;
.source "AutoSendingTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/oem/AutoSendingTestActivity;->createRecipientDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/oem/AutoSendingTestActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/oem/AutoSendingTestActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/oem/AutoSendingTestActivity$5;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity$5;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$600(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity$5;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # invokes: Lcom/android/mms/oem/AutoSendingTestActivity;->getAddressPreference()[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$1400(Lcom/android/mms/oem/AutoSendingTestActivity;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity$5;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$600(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v2

    aget-object v3, v1, p2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/oem/AutoSendingTestActivity$5;->this$0:Lcom/android/mms/oem/AutoSendingTestActivity;

    # getter for: Lcom/android/mms/oem/AutoSendingTestActivity;->mEditRecipient:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/oem/AutoSendingTestActivity;->access$600(Lcom/android/mms/oem/AutoSendingTestActivity;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
