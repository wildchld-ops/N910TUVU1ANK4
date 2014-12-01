.class Lcom/android/settings/dormantmode/DormantModeGroupList$1;
.super Ljava/lang/Object;
.source "DormantModeGroupList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantModeGroupList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantModeGroupList;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantModeGroupList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeGroupList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupList;

    # setter for: Lcom/android/settings/dormantmode/DormantModeGroupList;->mSelectedPosition:I
    invoke-static {v2, p3}, Lcom/android/settings/dormantmode/DormantModeGroupList;->access$002(Lcom/android/settings/dormantmode/DormantModeGroupList;I)I

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupList;

    # getter for: Lcom/android/settings/dormantmode/DormantModeGroupList;->mSelectedPosition:I
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantModeGroupList;->access$000(Lcom/android/settings/dormantmode/DormantModeGroupList;)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/dormantmode/DormantModeGroupListDel;->newInstance(ILjava/lang/Boolean;)Lcom/android/settings/dormantmode/DormantModeGroupListDel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupList;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeGroupList$1;->this$0:Lcom/android/settings/dormantmode/DormantModeGroupList;

    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    return v4
.end method
