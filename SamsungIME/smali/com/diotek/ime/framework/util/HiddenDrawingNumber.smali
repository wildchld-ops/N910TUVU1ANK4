.class public Lcom/diotek/ime/framework/util/HiddenDrawingNumber;
.super Ljava/lang/Object;
.source "HiddenDrawingNumber.java"


# static fields
.field public static final HIDDEN_DRAWING_NUMBER_CONTROL_DEBUG_LOG:I = 0x1

.field public static final HIDDEN_DRAWING_NUMBER_PRINT_DOT_X_Y:I = 0x1

.field public static final HIDDEN_NUMBER_MOVING_KEY_CNT:I = 0x10

.field public static final HIDDEN_NUMBER_PRINT_DOT_X_Y_CNT:I = 0x18

.field public static final NUMBER_KEY_INDEX_1:I = 0x1

.field public static final NUMBER_KEY_INDEX_2:I = 0x2

.field public static final NUMBER_KEY_INDEX_3:I = 0x3

.field public static final RESULT_DISABLED_ALL_LOG:I = 0x2

.field public static final RESULT_DISABLED_PRINT_DOT_X_Y:I = 0x4

.field public static final RESULT_ENABLED_ALL_LOG:I = 0x1

.field public static final RESULT_ENABLED_PRINT_DOT_X_Y:I = 0x3

.field public static final RESULT_NONE:I

.field private static mDownKeyIndex:I

.field private static mIsDispalyDotXY:Z

.field private static mListCnt:I

.field private static mListDotX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mListDotY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mMoveKeyCount:I

.field private static mOnOff:Z

.field private static mPaint:Landroid/graphics/Paint;

.field private static mPrintDotXYOnOff:Z

.field private static mUpKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mUpKeyIndex:I

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    sput-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mOnOff:Z

    sput-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    sput-object v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    sput-object v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    sput-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    sput-object v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDotXY(IIILjava/lang/String;)V
    .locals 2
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    sget-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->initDotXY()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    :cond_1
    return-void
.end method

.method public static addMoveKeyCount()V
    .locals 1

    sget v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    return-void
.end method

.method public static compareHiddenDrawingNumber()I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mUpKeyIndex:I

    sget v2, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    if-ne v1, v2, :cond_2

    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    sput v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    return v0

    :pswitch_0
    sget-boolean v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mOnOff:Z

    if-nez v1, :cond_1

    sput-boolean v4, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mOnOff:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sput-boolean v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mOnOff:Z

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_0

    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mUpKeyIndex:I

    sget v2, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    if-nez v1, :cond_3

    sput-boolean v4, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    sput-boolean v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    const/4 v0, 0x4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static controlDebugLog(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    sput-boolean p0, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    sput-boolean p0, Lcom/diotek/ime/framework/util/Debug;->ERROR:Z

    return-void
.end method

.method public static controlDotXY(Z)V
    .locals 1
    .param p0    # Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->initDotXY()V

    sput-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    sput-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static doHiddenNumber(Landroid/content/Context;I)Z
    .locals 4
    .param p0    # Landroid/content/Context;
    .param p1    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-static {v3}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->controlDebugLog(Z)V

    const-string v1, "enabled all log for SamsungIME"

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {v2}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->controlDebugLog(Z)V

    const-string v1, "disabled all log for SamsungIME"

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->controlDotXY(Z)V

    const-string v1, "enabled print dot x y for SamsungIME"

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->controlDotXY(Z)V

    const-string v1, "disabled print dot x y for SamsungIME"

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static initDotXY()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    sput v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    sput-boolean v1, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    return-void
.end method

.method public static onDownKey(I)V
    .locals 1
    .param p0    # I

    const/4 v0, 0x0

    sput v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mMoveKeyCount:I

    sput p0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mDownKeyIndex:I

    return-void
.end method

.method public static onUpKey(I)V
    .locals 0
    .param p0    # I

    sput p0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mUpKeyIndex:I

    return-void
.end method

.method public static printDotXY(Landroid/graphics/Canvas;)V
    .locals 6
    .param p0    # Landroid/graphics/Canvas;

    const/4 v5, 0x1

    const/high16 v4, -0x10000

    if-eqz p0, :cond_1

    sget-boolean v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41200000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListCnt:I

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotX:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mListDotY:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->floatValue()F

    move-result v2

    sget-object v3, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setDisplayDotXY(Z)V
    .locals 1
    .param p0    # Z

    sget-boolean v0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mPrintDotXYOnOff:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/util/Debug;->isEngMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean p0, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->mIsDispalyDotXY:Z

    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
