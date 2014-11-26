.class public Lcom/sec/android/glview/TwGLRadioButton;
.super Lcom/sec/android/glview/TwGLSelectButton;
.source "TwGLRadioButton.java"


# instance fields
.field private mRadioButtonId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFII)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # I
    .param p5    # I

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLSelectButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLRadioButton;->mRadioButtonId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFIII)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # F
    .param p3    # F
    .param p4    # I
    .param p5    # I
    .param p6    # I

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/glview/TwGLSelectButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIII)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLRadioButton;->mRadioButtonId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;II)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLSelectButton;-><init>(Lcom/sec/android/glview/TwGLContext;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLRadioButton;->mRadioButtonId:I

    return-void
.end method


# virtual methods
.method public getRadioButtonId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/glview/TwGLRadioButton;->mRadioButtonId:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/glview/TwGLSelectButton;->mSelected:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLSelectButton;->setSelected(Z)V

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/sec/android/glview/TwGLView;->mOnClickListener:Lcom/sec/android/glview/TwGLView$OnClickListener;

    invoke-interface {v2, p0}, Lcom/sec/android/glview/TwGLView$OnClickListener;->onClick(Lcom/sec/android/glview/TwGLView;)Z

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLSelectButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public setRadioButtonId(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/glview/TwGLRadioButton;->mRadioButtonId:I

    return-void
.end method
