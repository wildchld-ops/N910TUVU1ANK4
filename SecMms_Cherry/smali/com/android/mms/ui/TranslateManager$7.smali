.class Lcom/android/mms/ui/TranslateManager$7;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/TranslateManager;->showTranslateDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateManager;

.field final synthetic val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$onoffswitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateManager;Landroid/widget/Switch;Lcom/sec/android/touchwiz/widget/TwCheckBox;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    iput-object p2, p0, Lcom/android/mms/ui/TranslateManager$7;->val$onoffswitch:Landroid/widget/Switch;

    iput-object p3, p0, Lcom/android/mms/ui/TranslateManager$7;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p4, p0, Lcom/android/mms/ui/TranslateManager$7;->val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$7;->val$onoffswitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$7;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$7;->val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/TranslateManager;->access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mTranslateHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;
    invoke-static {v4}, Lcom/android/mms/ui/TranslateManager;->access$000(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->stringToPosition(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    iget-object v5, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/android/mms/ui/TranslateManager;->access$100(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/TranslateManager;->stringToPosition(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/TranslateManager;->access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mTranslateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;
    invoke-static {v4}, Lcom/android/mms/ui/TranslateManager;->access$000(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->stringToPosition(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    iget-object v5, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/android/mms/ui/TranslateManager;->access$100(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/TranslateManager;->stringToPosition(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$7;->val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/TranslateManager;->access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mTranslateHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;
    invoke-static {v4}, Lcom/android/mms/ui/TranslateManager;->access$000(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->stringToPosition(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    iget-object v5, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/android/mms/ui/TranslateManager;->access$100(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/TranslateManager;->stringToPosition(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/TranslateManager;->access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mTranslateHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;
    invoke-static {v4}, Lcom/android/mms/ui/TranslateManager;->access$000(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->stringToPosition(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    iget-object v5, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;
    invoke-static {v5}, Lcom/android/mms/ui/TranslateManager;->access$100(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/TranslateManager;->stringToPosition(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string v1, "off"

    iget-object v2, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v2}, Lcom/android/mms/ui/TranslateManager;->access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateModeForComposer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/TranslateManager$7;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/TranslateManager;->access$200(Lcom/android/mms/ui/TranslateManager;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mTranslateHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    :cond_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_1
.end method
