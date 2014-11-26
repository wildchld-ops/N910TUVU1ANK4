.class Lcom/android/launcher2/MenuTitleBarManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MenuTitleBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuTitleBarManager;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuTitleBarManager;

.field final synthetic val$titleBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuTitleBarManager$2;->this$0:Lcom/android/launcher2/MenuTitleBarManager;

    iput-object p2, p0, Lcom/android/launcher2/MenuTitleBarManager$2;->val$titleBar:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager$2;->val$titleBar:Landroid/view/View;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager$2;->this$0:Lcom/android/launcher2/MenuTitleBarManager;

    # getter for: Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuTitleBarManager;->access$000(Lcom/android/launcher2/MenuTitleBarManager;)Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager$2;->this$0:Lcom/android/launcher2/MenuTitleBarManager;

    # getter for: Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/launcher2/MenuTitleBarManager;->access$000(Lcom/android/launcher2/MenuTitleBarManager;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
