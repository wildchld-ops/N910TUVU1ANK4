.class public Lcom/android/internal/policy/impl/GuideView;
.super Landroid/widget/FrameLayout;
.source "GuideView.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DOCKING:I = 0x2

.field static final INVALID:I = -0x1

.field static final NORMAL:I = 0x0

.field static final WARNING:I = 0x1


# instance fields
.field private mBorderView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mFakeHeaderView:Landroid/widget/ImageView;

.field private mMakeHeaderView:Z

.field private mParent:Landroid/view/View;

.field private mShowing:Z

.field private mType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    iput-object p1, p0, Lcom/android/internal/policy/impl/GuideView;->mParent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    :cond_0
    return-void
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3ed

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/GuideView;->mParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x318

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x600000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method private refreshBackground()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x108068a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const v1, 0x108065d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x1080689

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const v1, 0x108065c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    const v1, 0x1080681

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/GuideView;->mType:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->refreshBackground()V

    goto :goto_0
.end method

.method public show(IIII)V
    .locals 6

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    if-nez v4, :cond_0

    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GuideView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/GuideView;->refreshBackground()V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->resetResolvedLayoutDirection()V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {p0, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GuideView;->mShowing:Z

    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/GuideView;->mMakeHeaderView:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mFakeHeaderView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v4, p3, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/GuideView;->mBorderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    return-void
.end method
