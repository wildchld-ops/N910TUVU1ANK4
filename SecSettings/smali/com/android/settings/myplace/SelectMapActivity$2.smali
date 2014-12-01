.class Lcom/android/settings/myplace/SelectMapActivity$2;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-virtual {v1}, Lcom/android/settings/myplace/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$2;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$000(Lcom/android/settings/myplace/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/myplace/SelectMapActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/myplace/SelectMapActivity$2$1;-><init>(Lcom/android/settings/myplace/SelectMapActivity$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
