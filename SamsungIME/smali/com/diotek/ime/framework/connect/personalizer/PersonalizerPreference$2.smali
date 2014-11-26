.class Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;
.super Ljava/lang/Object;
.source "PersonalizerPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->showLoginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v0, v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v0, v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v1, v1, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v0, v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v0, v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v0, v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v0, v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUsernameEdit:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v2, v2, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0252

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$2;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v1, v1, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    :cond_2
    return-void
.end method
