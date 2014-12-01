.class public Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;
.super Ljava/lang/Object;
.source "SwiftkeyTouchInfo.java"


# static fields
.field public static final TYPE_KEY_CODE:I = 0x2

.field public static final TYPE_TOUCH_POINT:I = 0x1


# instance fields
.field private mKeyCode:C

.field private mPoint:Landroid/graphics/PointF;

.field private mShiftState:Z

.field private mType:I


# direct methods
.method constructor <init>(CZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mPoint:Landroid/graphics/PointF;

    iput-char v1, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mKeyCode:C

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mShiftState:Z

    iput v1, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mType:I

    iput-char p1, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mKeyCode:C

    iput-boolean p2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mShiftState:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mType:I

    return-void
.end method

.method constructor <init>(Landroid/graphics/PointF;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mPoint:Landroid/graphics/PointF;

    iput-char v1, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mKeyCode:C

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mShiftState:Z

    iput v1, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mType:I

    iput-object p1, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mPoint:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mShiftState:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mType:I

    return-void
.end method


# virtual methods
.method public getKeyCode()C
    .locals 1

    iget-char v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mKeyCode:C

    return v0
.end method

.method public getShiftState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mShiftState:Z

    return v0
.end method

.method public getTouchPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/swiftkey/SwiftkeyTouchInfo;->mType:I

    return v0
.end method
