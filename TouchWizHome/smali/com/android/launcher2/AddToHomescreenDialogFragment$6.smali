.class Lcom/android/launcher2/AddToHomescreenDialogFragment$6;
.super Ljava/lang/Object;
.source "AddToHomescreenDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AddToHomescreenDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

.field final synthetic val$launcher:Lcom/android/launcher2/Launcher;

.field final synthetic val$ws:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AddToHomescreenDialogFragment;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    iput-object p2, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    iput-object p3, p0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$ws:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    iget-object v1, v1, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isCurrentTabAppsTab()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v14

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid;->getMenuSecretPageCnt()I

    move-result v15

    :cond_0
    invoke-virtual {v14, v15}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->showAllApps()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->shouldToastRepeat()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->createAndShow(Landroid/app/FragmentManager;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v16

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/MenuWidgets;->getSecretWidgetPageCount()I

    move-result v15

    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    const v2, 0x7f0f0012

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->this$0:Lcom/android/launcher2/AddToHomescreenDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x64

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static/range {v1 .. v10}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$ws:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$launcher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getShowEmptyPageMessagePref()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->newPage(Z)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AddToHomescreenDialogFragment$6;->val$ws:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1, v13}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
