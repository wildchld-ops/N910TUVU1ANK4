.class public Lcom/android/phone/SmallerHitTargetTouchListener;
.super Ljava/lang/Object;
.source "SmallerHitTargetTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private X_HIT_MAX:I

.field private X_HIT_MIN:I

.field private Y_HIT_MAX:I

.field private Y_HIT_MIN:I

.field private mEdgeOptions:I

.field private mselectDirection:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x5a

    const/16 v1, 0xa

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    iput v1, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    iput v2, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mEdgeOptions:I

    iput v0, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->mselectDirection:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v2, v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v4, v10

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/lit8 v10, v2, 0x64

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    float-to-int v3, v10

    mul-int/lit8 v10, v4, 0x64

    int-to-float v10, v10

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-int v5, v10

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MIN:I

    if-lt v3, v10, :cond_0

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->X_HIT_MAX:I

    if-gt v3, v10, :cond_0

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MIN:I

    if-lt v5, v10, :cond_0

    iget v10, p0, Lcom/android/phone/SmallerHitTargetTouchListener;->Y_HIT_MAX:I

    if-le v5, v10, :cond_2

    :cond_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v8

    :cond_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move v8, v9

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_4

    instance-of v10, v1, Ljava/lang/Boolean;

    if-eqz v10, :cond_4

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    move v8, v9

    goto :goto_0
.end method
