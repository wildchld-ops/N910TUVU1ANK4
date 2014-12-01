.class Lcom/android/launcher2/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/ItemViewBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;
    .locals 4

    sget-object v1, Lcom/android/launcher2/Workspace$24;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t know how to convert item into view for workspace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lcom/android/launcher2/AppIconView;->getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    check-cast p1, Lcom/android/launcher2/HomeFolderItem;

    const v2, 0x7f03001e

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/launcher2/HomeView;->createFolder(Lcom/android/launcher2/HomeFolderItem;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    check-cast p1, Lcom/android/launcher2/HomeWidgetItem;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mHomeView:Lcom/android/launcher2/HomeView;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/HomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/android/launcher2/HomeWidgetItem;->getHostView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    check-cast p1, Lcom/android/launcher2/SamsungWidgetItem;

    iget-object v1, p1, Lcom/android/launcher2/SamsungWidgetItem;->mWidgetView:Lcom/android/launcher2/SamsungWidgetView;

    goto :goto_0

    :pswitch_4
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetItem;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
    .locals 8

    instance-of v4, p1, Lcom/android/launcher2/AllappsIcon;

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p2

    check-cast v1, Lcom/android/launcher2/HomeItem;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v4, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v5, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v6, v1, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v7, v1, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    instance-of v4, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher2/SurfaceWidgetItem;->getWidgetPadding()Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v2

    iget v4, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    iget v5, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    iget v6, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    iget v7, v2, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v4, p1, Lcom/android/launcher2/Folder;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v4, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    iget-object v4, v4, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method
