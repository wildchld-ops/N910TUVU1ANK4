.class Lcom/android/settings/dormantmode/DormantModeCustomList$2;
.super Lcom/android/settings/common/PenSelectListener;
.source "DormantModeCustomList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantModeCustomList;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantModeCustomList;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$2;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;

    invoke-direct {p0, p2}, Lcom/android/settings/common/PenSelectListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnTwMultiSelectStop(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/common/PenSelectListener;->getSelectedPosition()Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/common/PenSelectListener;->getSelectedPosition()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->newInstance(Ljava/util/ArrayList;Ljava/lang/Boolean;)Lcom/android/settings/dormantmode/DormantModeCustomListDel;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$2;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$2;->this$0:Lcom/android/settings/dormantmode/DormantModeCustomList;

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

    invoke-super {p0, p1, p2}, Lcom/android/settings/common/PenSelectListener;->OnTwMultiSelectStop(II)V

    return-void
.end method
