.class final Landroid/view/ViewRootImpl$CocktailGripDetector;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CocktailGripDetector"
.end annotation


# instance fields
.field private final DEADZONE_THRESHOLD:I

.field private final TAG:Ljava/lang/String;

.field private mDeadSize:I

.field private mDeadZone:Landroid/graphics/Rect;

.field private mbMultiTouch:Z

.field private mbTouchBlock:Z

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v1, Landroid/view/ViewRootImpl$CocktailGripDetector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->DEADZONE_THRESHOLD:I

    iput-boolean v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mbMultiTouch:Z

    iput-boolean v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mbTouchBlock:Z

    iput v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadSize:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x40400000

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadSize:I

    return-void
.end method


# virtual methods
.method public checkBlock()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mbTouchBlock:Z

    return v0
.end method

.method public checkGrip(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    iput-boolean v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mbMultiTouch:Z

    iput-boolean v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mbTouchBlock:Z

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    iget v3, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadSize:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_2
    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->TAG:Ljava/lang/String;

    const-string v2, "Touch Block : Dead Zone (DOWN) !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mbTouchBlock:Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadSize:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :pswitch_2
    iput-boolean v0, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mbMultiTouch:Z

    goto/16 :goto_0

    :pswitch_3
    iget-boolean v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mbMultiTouch:Z

    if-eqz v2, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->TAG:Ljava/lang/String;

    const-string v2, "Touch Block : Multi Touch !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v0, :cond_5

    const/16 v2, 0x37

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->TAG:Ljava/lang/String;

    const-string v2, "Touch Block : Grip Flag !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->mDeadZone:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$CocktailGripDetector;->TAG:Ljava/lang/String;

    const-string v2, "Touch Block : Dead Zone !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
