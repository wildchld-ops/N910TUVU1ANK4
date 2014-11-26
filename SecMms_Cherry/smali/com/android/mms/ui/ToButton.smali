.class public Lcom/android/mms/ui/ToButton;
.super Landroid/widget/LinearLayout;
.source "ToButton.java"


# static fields
.field public static final BTN_ALPHA_ANIM_DUR:I = 0xc8

.field public static final BTN_SCALE_ANIM_DUR:I = 0x64


# instance fields
.field private mChildView:Landroid/widget/LinearLayout;

.field private mIsDelete:Z

.field private mMode:Z

.field private mNumber:Ljava/lang/String;

.field private mRemoveIcon:Landroid/widget/ImageButton;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    return-void
.end method

.method private ToBtnCreateAnim()Landroid/view/animation/AnimationSet;
    .locals 9

    const v5, 0x3f19999a

    const/high16 v6, 0x3f800000

    const-wide/16 v0, 0x64

    const-wide/16 v2, 0xc8

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move v7, v5

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeInSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;
    .locals 9

    const v6, 0x3e99999a

    const/high16 v5, 0x3f800000

    const-wide/16 v0, 0x64

    const-wide/16 v2, 0xc8

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    move v7, v5

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleFadeOutSet(JJLandroid/view/animation/Interpolator;FFFF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ToButton;)Landroid/widget/ImageButton;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ToButton;

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mRemoveIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ToButton;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ToButton;

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/os/Handler;)V
    .locals 4
    .param p1    # Landroid/os/Handler;

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnDeleteAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    new-instance v2, Lcom/android/mms/ui/ToButton$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/mms/ui/ToButton$3;-><init>(Lcom/android/mms/ui/ToButton;Landroid/os/Handler;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v3, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    goto :goto_0
.end method

.method public getButtonIcon()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ToButton;->mMode:Z

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveIcon()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mRemoveIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;ILjava/lang/String;Z)V
    .locals 3
    .param p1    # Landroid/app/Activity;
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # Z

    iput-object p3, p0, Lcom/android/mms/ui/ToButton;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/view/View;->setId(I)V

    iput-boolean p4, p0, Lcom/android/mms/ui/ToButton;->mMode:Z

    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ToButton;->mChildView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mChildView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b03ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ToButton;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mChildView:Landroid/widget/LinearLayout;

    const v1, 0x7f0b03ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ToButton;->mRemoveIcon:Landroid/widget/ImageButton;

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ToButton;->ToBtnCreateAnim()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mRemoveIcon:Landroid/widget/ImageButton;

    invoke-static {v0, p4}, Lcom/android/mms/util/UIUtils;->setVisible(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mChildView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f02034a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public isDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ToButton;->mIsDelete:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method public setFocusListen()V
    .locals 1

    new-instance v0, Lcom/android/mms/ui/ToButton$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$2;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ToButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setKeyListen()V
    .locals 1

    new-instance v0, Lcom/android/mms/ui/ToButton$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ToButton$1;-><init>(Lcom/android/mms/ui/ToButton;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setOnClickListenerToButton(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mChildView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnFocusChangeListener;

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/ToButton$4;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ToButton$4;-><init>(Lcom/android/mms/ui/ToButton;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mRemoveIcon:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/ToButton$5;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ToButton$5;-><init>(Lcom/android/mms/ui/ToButton;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setOnLongClickListenerToButton(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnLongClickListener;

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mChildView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mRemoveIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/ui/ToButton;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
