.class Landroid/widget/TabWidget$1;
.super Ljava/lang/Object;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TabWidget;


# direct methods
.method constructor <init>(Landroid/widget/TabWidget;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabWidget$1;->this$0:Landroid/widget/TabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TabWidget$1;->this$0:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v2, p0, Landroid/widget/TabWidget$1;->this$0:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->twGetMoveLength()I

    move-result v0

    iget-object v2, p0, Landroid/widget/TabWidget$1;->this$0:Landroid/widget/TabWidget;

    # getter for: Landroid/widget/TabWidget;->mTabWidgetMoveAniEnabled:Z
    invoke-static {v2}, Landroid/widget/TabWidget;->access$000(Landroid/widget/TabWidget;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Landroid/widget/TabWidget;->mtwEnablePreDraw:Z
    invoke-static {}, Landroid/widget/TabWidget;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/widget/TabWidget$1;->this$0:Landroid/widget/TabWidget;

    neg-int v3, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    # setter for: Landroid/widget/TabWidget;->mtwEnablePreDraw:Z
    invoke-static {v1}, Landroid/widget/TabWidget;->access$102(Z)Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
