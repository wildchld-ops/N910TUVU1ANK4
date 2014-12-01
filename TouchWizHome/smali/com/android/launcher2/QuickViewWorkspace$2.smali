.class Lcom/android/launcher2/QuickViewWorkspace$2;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/Number;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v8, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v8, :cond_2

    const-string v8, "add_widgets"

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "change_wallpaper"

    sget-object v11, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_2
    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v8

    if-eq v6, v8, :cond_3

    const v8, 0x7f0f00e8

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    :cond_3
    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v8

    sub-int/2addr v6, v8

    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v8, v8, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v8, v6}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v8, v0, Landroid/view/ViewGroup;

    if-eqz v8, :cond_5

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lt v8, v9, :cond_5

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lt v8, v9, :cond_5

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v8, v3, Landroid/widget/CompoundButton;

    if-eqz v8, :cond_5

    check-cast v3, Landroid/widget/CompoundButton;

    if-ne v5, v6, :cond_6

    move v8, v9

    :goto_2
    invoke-virtual {v3, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move v8, v10

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    iget-object v8, p0, Lcom/android/launcher2/QuickViewWorkspace$2;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v8}, Lcom/android/launcher2/QuickViewWorkspace;->access$100(Lcom/android/launcher2/QuickViewWorkspace;)Lcom/android/launcher2/Workspace;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0
.end method
