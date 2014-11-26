.class Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;
.super Ljava/lang/Object;
.source "PersonalizerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const v9, 0x7f0e0254

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v6, v6, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUsernameEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v6, v6, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v5, v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v5, v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v5, v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPassword:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v5, v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPassword:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v6, v6, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->isValidEmail(Ljava/lang/CharSequence;)Z

    move-result v4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " PersonalizePreference loginDialog mUserName ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v7, v7, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isValid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    const-class v5, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    const-string v5, "com.diotek.ime.implement.setting.GMailService"

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aClass.getName() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "userName"

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v6, v6, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mUserName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "password"

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    iget-object v6, v6, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference$4;->this$0:Lcom/diotek/ime/framework/connect/personalizer/PersonalizerPreference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
