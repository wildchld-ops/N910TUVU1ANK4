.class Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;
.super Ljava/lang/Object;
.source "Xt9AutoSubstitutionsDel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->getListItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move v4, v5

    :goto_1
    # invokes: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->setDoneMenuEnabled(Z)V
    invoke-static {v7, v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$200(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;Z)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v4, v7, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # setter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z
    invoke-static {v4, v5}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$302(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;Z)Z

    :goto_2
    instance-of v4, p2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$300(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    :goto_4
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mDeletingWordsList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$100(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v7

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mWordlist:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$000(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->getShortcut()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # setter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mAllSelected:Z
    invoke-static {v4, v6}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$302(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;Z)Z

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel$1;->this$0:Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;

    # getter for: Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->mSelectallAdpter:Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;->access$400(Lcom/diotek/ime/implement/setting/Xt9AutoSubstitutionsDel;)Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/diotek/ime/implement/setting/adapter/CheckboxArrayAdapter;->setCheckAll(I)V

    goto :goto_4
.end method
