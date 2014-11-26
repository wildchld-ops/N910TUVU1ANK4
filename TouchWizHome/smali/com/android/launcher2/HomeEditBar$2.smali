.class Lcom/android/launcher2/HomeEditBar$2;
.super Ljava/lang/Object;
.source "HomeEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeEditBar;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeEditBar;

.field final synthetic val$canAddToPersonal:Z

.field final synthetic val$canCreateFolder:Z

.field final synthetic val$canShowDisableContainer:Z

.field final synthetic val$canShowInfo:Z

.field final synthetic val$canShowUninstallContainer:Z

.field final synthetic val$isAppItem:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeEditBar;ZZZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    iput-boolean p2, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canCreateFolder:Z

    iput-boolean p3, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canShowInfo:Z

    iput-boolean p4, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canShowDisableContainer:Z

    iput-boolean p5, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canShowUninstallContainer:Z

    iput-boolean p6, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canAddToPersonal:Z

    iput-boolean p7, p0, Lcom/android/launcher2/HomeEditBar$2;->val$isAppItem:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canCreateFolder:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$000(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$000(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canShowInfo:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canShowDisableContainer:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$300(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$300(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canShowUninstallContainer:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mAddToPersonalContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$2;->val$canAddToPersonal:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$500(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$500(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$2;->val$isAppItem:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$600(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$600(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/launcher2/HomeEditBar$2;->val$isAppItem:Z

    if-nez v3, :cond_6

    move v2, v1

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$2;->this$0:Lcom/android/launcher2/HomeEditBar;

    # setter for: Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar;->access$702(Lcom/android/launcher2/HomeEditBar;Z)Z

    return-void

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    move v0, v2

    goto :goto_4

    :cond_d
    move v0, v2

    goto :goto_5
.end method
