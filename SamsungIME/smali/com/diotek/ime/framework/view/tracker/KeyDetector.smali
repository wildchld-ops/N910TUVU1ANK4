.class public abstract Lcom/diotek/ime/framework/view/tracker/KeyDetector;
.super Ljava/lang/Object;
.source "KeyDetector.java"


# instance fields
.field protected mCorrectionX:I

.field protected mCorrectionY:I

.field protected mIsMiniKeyboard:Z

.field protected mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

.field protected mKeyboardWidth:I

.field private mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field protected mProximityCorrectOn:Z

.field protected mProximityThresholdSquare:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    return-void
.end method


# virtual methods
.method public abstract dumpCurrentGrid()V
.end method

.method public abstract getKeyIndexAndNearbyCodes(IIZ)I
.end method

.method protected getKeys()[Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keyboard isn\'t set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    return-object v0
.end method

.method protected abstract getMaxNearbyKeys()I
.end method

.method protected getTouchX(I)I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mCorrectionX:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected getTouchY(I)I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mCorrectionY:I

    add-int/2addr v0, p1

    return v0
.end method

.method public isProximityCorrectionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mProximityCorrectOn:Z

    return v0
.end method

.method public newCodeArray()[I
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getMaxNearbyKeys()I

    move-result v1

    new-array v0, v1, [I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-object v0
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;FFZ)[Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 3

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    float-to-int v2, p2

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mCorrectionX:I

    float-to-int v2, p3

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mCorrectionY:I

    iput-object p1, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-boolean p4, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    iget-object v2, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    return-object v0
.end method

.method public setKeyboardWidth(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mProximityCorrectOn:Z

    return-void
.end method

.method public setProximityThreshold(I)V
    .locals 1

    mul-int v0, p1, p1

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mProximityThresholdSquare:I

    return-void
.end method
