.class Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;
.super Ljava/lang/Object;
.source "MenuWidgets.java"

# interfaces
.implements Lcom/android/launcher2/Folder$FolderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuWidgetsFolderMgr"
.end annotation


# instance fields
.field private mAnimateOpen:Z

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic this$0:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolderView;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$1;-><init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;Lcom/android/launcher2/MenuWidgets;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    iput-boolean p3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mAnimateOpen:Z

    return-void
.end method

.method private cleanupListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method public onFolderClose()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->cleanupListener()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v2

    iget v0, v2, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;-><init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # setter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v2, v6}, Lcom/android/launcher2/MenuWidgets;->access$2602(Lcom/android/launcher2/MenuWidgets;Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolder;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v2}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V
    invoke-static {v2, v5}, Lcom/android/launcher2/MenuWidgets;->access$2800(Lcom/android/launcher2/MenuWidgets;Z)V

    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f0f005c

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    return-void

    :cond_0
    const/16 v0, 0xfa

    goto :goto_0
.end method

.method public onFolderOpen()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0004

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iget-boolean v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mAnimateOpen:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mWidgetFolder:Lcom/android/launcher2/WidgetFolder;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2600(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/WidgetFolder;

    move-result-object v3

    iget v0, v3, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/Launcher;->setEnableMenuButton(Z)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mDarkenLayerTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v4}, Lcom/android/launcher2/MenuWidgets;->access$2900(Lcom/android/launcher2/MenuWidgets;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # invokes: Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsAccessibilityEnabled(Z)V
    invoke-static {v3, v6}, Lcom/android/launcher2/MenuWidgets;->access$2800(Lcom/android/launcher2/MenuWidgets;Z)V

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v4, 0x7f0f0066

    invoke-virtual {v3, v4}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    return-void

    :cond_0
    const/16 v0, 0xfa

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v3}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method

.method public setIconView(Lcom/android/launcher2/FolderIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->cleanupListener()V

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->mLayoutListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
