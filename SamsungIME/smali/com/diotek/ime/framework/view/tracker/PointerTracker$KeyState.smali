.class Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/tracker/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyState"
.end annotation


# instance fields
.field private mDownKey:I

.field private mDownTime:J

.field private final mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

.field private mKeyIndex:I

.field private mKeyIndexAndNearbyCodes:I

.field private mKeyX:I

.field private mKeyY:I

.field private mLastX:I

.field private mLastY:I

.field private mStartX:I

.field private mStartY:I


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/view/tracker/KeyDetector;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyIndex:I

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyIndexAndNearbyCodes:I

    iput-object p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;)I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I

    return v0
.end method

.method private onMoveKeyInternal(II)I
    .locals 2

    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mLastX:I

    iput p2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mLastY:I

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeyIndexAndNearbyCodes(IIZ)I

    move-result v0

    return v0
.end method

.method private onMoveKeyInternalOnDownKey(II)I
    .locals 1

    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mLastX:I

    iput p2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mLastY:I

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyIndexAndNearbyCodes:I

    return v0
.end method


# virtual methods
.method public getDownKeyIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    iget-wide v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownTime:J

    return-wide v0
.end method

.method public getKeyIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyIndex:I

    return v0
.end method

.method public getKeyIndexAndNearbyCodes()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyIndexAndNearbyCodes:I

    return v0
.end method

.method public getKeyX()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyX:I

    return v0
.end method

.method public getKeyY()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyY:I

    return v0
.end method

.method public getLastX()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mLastX:I

    return v0
.end method

.method public getLastY()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mLastY:I

    return v0
.end method

.method public getStartX()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mStartY:I

    return v0
.end method

.method public onDownKey(IIJ)I
    .locals 1

    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mStartX:I

    iput p2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mStartY:I

    iput-wide p3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownTime:J

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveKeyInternalOnDownKey(II)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveToNewKey(III)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->onDownKey(I)V

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mDownKey:I

    return v0
.end method

.method public onMoveKey(II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method public onMoveToNewKey(III)I
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/util/HiddenDrawingNumber;->addMoveKeyCount()V

    iput p1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyIndex:I

    iput p2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyX:I

    iput p3, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyY:I

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PT] onMoveToNewKey - x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keyIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p1
.end method

.method public onSetKeyboard()V
    .locals 4

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    iget v1, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyX:I

    iget v2, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyY:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeyIndexAndNearbyCodes(IIZ)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyIndex:I

    return-void
.end method

.method public onUpKey(II)I
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/siso/ime/framework/touchmodal/TProximityKeyDetector;->upEvent:Z

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->onMoveKeyInternal(II)I

    move-result v0

    return v0
.end method

.method public setKeyIndexAndNearbyCodes(II)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyDetector:Lcom/diotek/ime/framework/view/tracker/KeyDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeyIndexAndNearbyCodes(IIZ)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/PointerTracker$KeyState;->mKeyIndexAndNearbyCodes:I

    return-void
.end method
