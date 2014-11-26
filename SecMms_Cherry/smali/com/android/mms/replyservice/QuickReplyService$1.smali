.class Lcom/android/mms/replyservice/QuickReplyService$1;
.super Ljava/lang/Object;
.source "QuickReplyService.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/QuickReplyService;->initCustomLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private prevString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/replyservice/QuickReplyService;

.field final synthetic val$isSignatureEnabled:Z

.field final synthetic val$signature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/QuickReplyService;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    iput-boolean p2, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->val$isSignatureEnabled:Z

    iput-object p3, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->val$signature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1    # Landroid/text/Editable;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 13
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$300(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$300(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v11, "LGU+"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->val$isSignatureEnabled:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->val$signature:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->val$signature:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v8

    :goto_1
    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->prevString:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->prevString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->prevString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v10, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->prevString:Ljava/lang/String;

    :cond_1
    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    const/4 v12, 0x0

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->showExceedTextLimitToast(Z)V
    invoke-static {v11, v12}, Lcom/android/mms/replyservice/QuickReplyService;->access$500(Lcom/android/mms/replyservice/QuickReplyService;Z)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mSendButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$300(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/Button;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    invoke-static {v10}, Lcom/android/mms/util/TelephonyUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v8

    goto :goto_1

    :cond_5
    iput-object v10, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->prevString:Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-boolean v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->val$isSignatureEnabled:Z

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->val$signature:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->val$signature:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-static {v9, v11}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v8

    :goto_3
    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    const/4 v12, 0x3

    aget v12, v8, v12

    # setter for: Lcom/android/mms/replyservice/QuickReplyService;->mEncodingType:I
    invoke-static {v11, v12}, Lcom/android/mms/replyservice/QuickReplyService;->access$602(Lcom/android/mms/replyservice/QuickReplyService;I)I

    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_b

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez p2, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    move/from16 v0, p4

    invoke-interface {p1, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_5
    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEditText:Landroid/widget/EditText;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$400(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/widget/EditText;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_8
    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mEncodingType:I
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$600(Lcom/android/mms/replyservice/QuickReplyService;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    const/4 v4, 0x0

    :goto_6
    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->showExceedTextLimitToast(Z)V
    invoke-static {v11, v4}, Lcom/android/mms/replyservice/QuickReplyService;->access$500(Lcom/android/mms/replyservice/QuickReplyService;Z)V

    :cond_9
    sub-int v1, p4, p3

    if-lez v1, :cond_2

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    add-int v11, p2, v1

    invoke-interface {p1, p2, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/mms/ui/MessageUtils;->hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/mms/replyservice/QuickReplyService$1;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->showInputModeToast()V
    invoke-static {v11}, Lcom/android/mms/replyservice/QuickReplyService;->access$800(Lcom/android/mms/replyservice/QuickReplyService;)V

    goto/16 :goto_2

    :cond_a
    const/4 v11, 0x0

    invoke-static {p1, v11}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v8

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-interface {p1, v11, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int v11, p2, p4

    if-ge v11, v5, :cond_7

    add-int v11, p2, p4

    invoke-interface {p1, v11, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_d
    const/4 v4, 0x1

    goto :goto_6
.end method
