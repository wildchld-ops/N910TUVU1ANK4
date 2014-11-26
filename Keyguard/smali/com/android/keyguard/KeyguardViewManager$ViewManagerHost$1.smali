.class Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    # getter for: Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->access$500(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    # getter for: Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->access$500(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v3

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v2

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost$1;->this$1:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    # getter for: Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->mCustomBackground:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->access$500(Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;

    return-void
.end method
