.class Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->onFolderClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;->this$1:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;->this$1:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;->this$1:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr$2;->this$1:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    iget-object v0, v0, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->this$0:Lcom/android/launcher2/MenuWidgets;

    # getter for: Lcom/android/launcher2/MenuWidgets;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuWidgets;->access$2700(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
