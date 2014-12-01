.class Landroid/widget/HorizontalFastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HorizontalFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HorizontalFastScroller;


# direct methods
.method constructor <init>(Landroid/widget/HorizontalFastScroller;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalFastScroller$3;->this$0:Landroid/widget/HorizontalFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v1, p0, Landroid/widget/HorizontalFastScroller$3;->this$0:Landroid/widget/HorizontalFastScroller;

    iget-object v0, p0, Landroid/widget/HorizontalFastScroller$3;->this$0:Landroid/widget/HorizontalFastScroller;

    # getter for: Landroid/widget/HorizontalFastScroller;->mShowingPrimary:Z
    invoke-static {v0}, Landroid/widget/HorizontalFastScroller;->access$700(Landroid/widget/HorizontalFastScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Landroid/widget/HorizontalFastScroller;->mShowingPrimary:Z
    invoke-static {v1, v0}, Landroid/widget/HorizontalFastScroller;->access$702(Landroid/widget/HorizontalFastScroller;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
