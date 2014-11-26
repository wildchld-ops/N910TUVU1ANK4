.class Lcom/android/internal/widget/ActionBarView$HomeView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView$HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView$HomeView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView$HomeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView$1;->this$0:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView$1;->this$0:Lcom/android/internal/widget/ActionBarView$HomeView;

    # getter for: Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->access$1700(Lcom/android/internal/widget/ActionBarView$HomeView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView$1;->this$0:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
