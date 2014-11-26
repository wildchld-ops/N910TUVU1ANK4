.class Lcom/android/phone/IccNetworkDepersonalizationPanel$3;
.super Ljava/lang/Object;
.source "IccNetworkDepersonalizationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccNetworkDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->locktype:I
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->locktype:I
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x65

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # invokes: Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateBusy()V
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$900(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->locktype:I
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->locktype:I
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$800(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccNetworkDepersonalizationPanel;

    # getter for: Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->access$700(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/IccCard;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1
.end method
