.class Lcom/android/mms/ui/TranslateManager$1;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$addTextText:Landroid/widget/TextView;

.field final synthetic val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$checkAddTextLayout:Landroid/widget/LinearLayout;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field final synthetic val$checkLayout:Landroid/widget/LinearLayout;

.field final synthetic val$incomingTv:Landroid/widget/TextView;

.field final synthetic val$meTv:Landroid/widget/TextView;

.field final synthetic val$senderTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateManager;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/widget/LinearLayout;Lcom/sec/android/touchwiz/widget/TwCheckBox;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/TranslateManager$1;->this$0:Lcom/android/mms/ui/TranslateManager;

    iput-object p2, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p3, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkLayout:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object p5, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkAddTextLayout:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/android/mms/ui/TranslateManager$1;->val$addTextText:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/android/mms/ui/TranslateManager$1;->val$incomingTv:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/android/mms/ui/TranslateManager$1;->val$senderTv:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/android/mms/ui/TranslateManager$1;->val$meTv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/mms/ui/TranslateManager;->access$000(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/mms/ui/TranslateManager;->access$100(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkAddTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$addTextText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$incomingTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$senderTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$meTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerSrc:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/mms/ui/TranslateManager;->access$000(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->this$0:Lcom/android/mms/ui/TranslateManager;

    # getter for: Lcom/android/mms/ui/TranslateManager;->mSpinnerTarget:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/mms/ui/TranslateManager;->access$100(Lcom/android/mms/ui/TranslateManager;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$incomingTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$senderTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$meTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$addTextText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkAddText:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/TranslateManager$1;->val$checkAddTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method
