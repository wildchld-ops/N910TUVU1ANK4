.class Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;
.super Ljava/lang/Object;
.source "Xt9MyWordsDel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->makeDeletePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$700(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->removeWordFromUserModel(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$800(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$900(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v3

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v3, v2}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->deleteMyWord(Ljava/lang/CharSequence;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "Delete is Done"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$900(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$900(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->mXt9DBController:Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;->access$900(Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;)Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/engine/xt9/Xt9DBController;->writeDBdataToFile(B)V

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9MyWordsDel$5;->this$0:Lcom/diotek/ime/implement/setting/Xt9MyWordsDel;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void
.end method
