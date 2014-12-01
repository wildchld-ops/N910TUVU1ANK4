.class Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;
.super Ljava/lang/Object;
.source "ACDeleteLanguages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->makeDeletePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    # setter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mExtraBundle:Landroid/os/Bundle;
    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$902(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletingLPList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$100(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    iget-object v3, v3, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDownloadedLanguageMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mExtraBundle:Landroid/os/Bundle;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$900(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "languageIdList"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    # setter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mIntent:Landroid/content/Intent;
    invoke-static {v3, v4}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$1002(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$1000(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mExtraBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$900(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v3, 0x0

    # setter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mDeletePopup:Z
    invoke-static {v3}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$702(Z)Z

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    # getter for: Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->mIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/ACDeleteLanguages;->access$1000(Lcom/diotek/ime/implement/setting/ACDeleteLanguages;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/ACDeleteLanguages$5;->this$0:Lcom/diotek/ime/implement/setting/ACDeleteLanguages;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    return-void
.end method
