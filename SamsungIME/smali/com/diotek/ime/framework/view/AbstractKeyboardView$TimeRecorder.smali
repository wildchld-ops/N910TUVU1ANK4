.class final Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeRecorder"
.end annotation


# instance fields
.field private mLastBatchInputTime:J

.field private mLastLetterTypingTime:J

.field private mLastTypingTime:J

.field private mStaticTimeThresholdAfterFastTyping:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x7f0b003a

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mStaticTimeThresholdAfterFastTyping:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x78

    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mStaticTimeThresholdAfterFastTyping:I

    goto :goto_0
.end method

.method private wasLastInputTyping()Z
    .locals 4

    iget-wide v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastTypingTime:J

    iget-wide v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastBatchInputTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLastLetterTypingTime()J
    .locals 2

    iget-wide v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastLetterTypingTime:J

    return-wide v0
.end method

.method public isInFastTyping(J)Z
    .locals 4

    iget-wide v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastLetterTypingTime:J

    sub-long v0, p1, v2

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mStaticTimeThresholdAfterFastTyping:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onEndBatchInput(J)V
    .locals 0

    iput-wide p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastBatchInputTime:J

    return-void
.end method

.method public onKey(IJ)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->wasLastInputTyping()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastTypingTime:J

    sub-long v0, p2, v0

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mStaticTimeThresholdAfterFastTyping:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    iput-wide p2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastLetterTypingTime:J

    :cond_1
    :goto_0
    iput-wide p2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastTypingTime:J

    return-void

    :cond_2
    iget-wide v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastLetterTypingTime:J

    sub-long v0, p2, v0

    iget v2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mStaticTimeThresholdAfterFastTyping:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iput-wide p2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$TimeRecorder;->mLastLetterTypingTime:J

    goto :goto_0
.end method
