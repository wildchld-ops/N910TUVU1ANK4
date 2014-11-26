.class Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions$1;
.super Ljava/lang/Object;
.source "Xt9AutoSubstitutions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v0, 0x7f0e00a1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;

    const-class v3, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsAdd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CURRENT_MODE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "EDITTING_WORD"

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->mArrayAdapter:Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;
    invoke-static {v2}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;->access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;)Lcom/diotek/ime/implement/setting/adapter/DoubleArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    invoke-virtual {v2}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->getShortcut()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutions;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
