.class public Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SevenDigitNumericListener"
.end annotation


# instance fields
.field private m7DigitNumericNumber:Ljava/lang/String;

.field private mId:I

.field private mSendSimSlot:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;I)V
    .locals 2
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mId:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mSendSimSlot:I

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mId:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mSendSimSlot:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->findRecipientFromTobutton(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15100(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mId:I

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mId:I

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->remove7DigitRecipient(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$15200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->m7DigitNumericNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SevenDigitNumericListener;->mSendSimSlot:I

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->checkInputModeAndSendMessage(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3300(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
