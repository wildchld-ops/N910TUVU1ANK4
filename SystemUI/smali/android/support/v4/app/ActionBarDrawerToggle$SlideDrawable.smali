.class Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/LevelListDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p2    # Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-direct {p0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v0, v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    invoke-virtual {p0, v2, v2, p2}, Landroid/graphics/drawable/LevelListDrawable;->addLevel(IILandroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V
    .locals 0
    .param p1    # Landroid/support/v4/app/ActionBarDrawerToggle;
    .param p2    # Landroid/graphics/drawable/Drawable;
    .param p3    # Landroid/support/v4/app/ActionBarDrawerToggle$1;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;

    const/4 v5, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    # getter for: Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Landroid/support/v4/app/ActionBarDrawerToggle;->access$300(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v0, :cond_2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    neg-float v3, v3

    int-to-float v4, v2

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    mul-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    if-nez v3, :cond_1

    int-to-float v3, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, -0x40800000

    const/high16 v4, 0x3f800000

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableContainer;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPosition()F
    .locals 1

    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    return v0
.end method

.method public setOffset(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setPosition(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method