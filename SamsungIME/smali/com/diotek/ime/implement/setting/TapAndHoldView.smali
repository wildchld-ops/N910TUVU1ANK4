.class public Lcom/diotek/ime/implement/setting/TapAndHoldView;
.super Landroid/widget/ImageView;
.source "TapAndHoldView.java"


# static fields
.field private static final HOLD_CONFIM:I = 0x3

.field private static final HOLD_STANDBY:I = 0x2

.field private static final TAP_CONFIRM:I = 0x1

.field private static final TAP_STANDBY:I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private currentTapAndHoldState:I

.field private final_touch_time:J

.field private isLongPressDone:Z

.field private mBitmapHoldConfirm:Landroid/graphics/Bitmap;

.field private mBitmapHoldStandBy:Landroid/graphics/Bitmap;

.field private mBitmapTapConfirm:Landroid/graphics/Bitmap;

.field private mBitmapTapStandBy:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private paint:Landroid/graphics/Paint;

.field private startX:F

.field private startY:F

.field private touch_time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v0, "Tap and Hold Delay"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    new-instance v0, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;-><init>(Lcom/diotek/ime/implement/setting/TapAndHoldView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "Tap and Hold Delay"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    new-instance v0, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;-><init>(Lcom/diotek/ime/implement/setting/TapAndHoldView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "Tap and Hold Delay"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    iput-wide v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    new-instance v0, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/TapAndHoldView$1;-><init>(Lcom/diotek/ime/implement/setting/TapAndHoldView;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    return-void
.end method

.method static synthetic access$002(Lcom/diotek/ime/implement/setting/TapAndHoldView;I)I
    .locals 0
    .param p0    # Lcom/diotek/ime/implement/setting/TapAndHoldView;
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    return p1
.end method


# virtual methods
.method public checkLongPressStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;

    const/high16 v4, 0x40000000

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Tap and Hold Delay"

    const-string v1, "Unknown Tap and Hold State"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTouchTime()J
    .locals 2

    iget-wide v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    return-wide v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapTapConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldStandBy:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mBitmapHoldConfirm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1    # Landroid/view/MotionEvent;

    const-wide/16 v6, 0x64

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    iput v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    iget-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_2

    const/4 v2, 0x3

    iput v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    iput-boolean v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput v4, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    goto :goto_0
.end method

.method public refresh()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->currentTapAndHoldState:I

    iput v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startX:F

    iput v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->startY:F

    iput-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->touch_time:J

    iput-wide v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->final_touch_time:J

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldView;->isLongPressDone:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
