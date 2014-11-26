.class Lcom/android/mms/settings/MessageSmscActivityDS$1;
.super Ljava/lang/Object;
.source "MessageSmscActivityDS.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/MessageSmscActivityDS;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/MessageSmscActivityDS;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/MessageSmscActivityDS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "SIM1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Mms/MessageSmscActivityDS"

    const-string v1, "setOnTabChangedListener SIM1: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$000(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "SIM1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$102(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "SIM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Mms/MessageSmscActivityDS"

    const-string v1, "setOnTabChangedListener SIM2: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mTabs:Landroid/widget/TabHost;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$000(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "SIM2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc1:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$302(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->Smsc2:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/settings/MessageSmscActivityDS$1;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
