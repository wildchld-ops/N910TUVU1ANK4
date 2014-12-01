.class public Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;
.super Lcom/diotek/ime/framework/view/tracker/KeyDetector;
.source "ProximityKeyDetector.java"


# static fields
.field private static final MAX_NEARBY_KEYS:I = 0xc


# instance fields
.field private final IS_HD:Z

.field private final IS_KORMODE:Z

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mSpaceHeight:I

.field private mSpaceY:I

.field private mSwiftkeyVersion:I

.field private mSymbolPopupInput:Ljava/lang/String;

.field private mValidArea:[Landroid/graphics/Rect;

.field private final mWindowHeight:I

.field private final mWindowWidth:I

.field private mXt9Version:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;-><init>()V

    iput v1, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mXt9Version:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSymbolPopupInput:Ljava/lang/String;

    iput-object v3, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSwiftkeyVersion:I

    iput v1, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSpaceY:I

    iput v1, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSpaceHeight:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mWindowHeight:I

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v2

    iput v2, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mWindowWidth:I

    iget v2, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mWindowHeight:I

    const/16 v3, 0x500

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mWindowWidth:I

    const/16 v3, 0x2d0

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->IS_HD:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->IS_KORMODE:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mXt9Version:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Sip_SymbolPopupInput"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSymbolPopupInput:Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSwiftkeyVersion:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private growArray([Landroid/graphics/Rect;I)[Landroid/graphics/Rect;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p2, [Landroid/graphics/Rect;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private isBelowSpace(I)Z
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSpaceY:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidArea(II)Z
    .locals 5

    iget-object v4, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    if-nez v3, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-lt p1, v4, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-gt p1, v4, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-lt p2, v4, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private makeValidArea()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v10, v0, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeys()[Lcom/diotek/ime/framework/view/Keyboard$Key;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_d

    array-length v0, v10

    move/from16 v20, v0

    if-lez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isQwertyLookInputMethod()Z

    move-result v9

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    move/from16 v20, v0

    if-lez v20, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    :goto_1
    const/4 v7, 0x0

    :goto_2
    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_d

    aget-object v5, v10, v7

    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSpaceY:I

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSpaceHeight:I

    :cond_0
    if-nez v13, :cond_8

    const/4 v11, 0x0

    const/16 v19, 0x0

    :goto_3
    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->edgeFlags:I

    move/from16 v20, v0

    and-int/lit8 v20, v20, 0x4

    if-eqz v20, :cond_1

    const/16 v19, 0x0

    :cond_1
    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_a

    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isLetter(I)Z

    move-result v20

    if-nez v20, :cond_3

    const/16 v20, 0x20

    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    if-nez v9, :cond_3

    :cond_2
    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v20

    if-eqz v20, :cond_a

    :cond_3
    if-nez v18, :cond_4

    iput v11, v14, Landroid/graphics/Rect;->left:I

    move/from16 v0, v19

    iput v0, v14, Landroid/graphics/Rect;->top:I

    const/16 v18, 0x1

    :cond_4
    :goto_4
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_5

    if-eqz v13, :cond_6

    iget v0, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v20, v0

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    :cond_5
    invoke-static {v7, v10, v8}, Lcom/diotek/ime/framework/util/Utils;->getVerticalGap(I[Lcom/diotek/ime/framework/view/Keyboard$Key;Z)I

    move-result v4

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v3

    :cond_6
    :goto_5
    move-object v13, v5

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v12

    goto/16 :goto_1

    :cond_8
    if-eqz v13, :cond_9

    iget v0, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v20, v0

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    const/4 v11, 0x0

    move/from16 v17, v12

    move/from16 v19, v3

    goto/16 :goto_3

    :cond_9
    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v20, v0

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v21, v0

    iget v0, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v22, v0

    iget v0, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move/from16 v23, v0

    add-int v22, v22, v23

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    sub-int v11, v20, v21

    move/from16 v17, v11

    goto/16 :goto_3

    :cond_a
    if-eqz v18, :cond_4

    if-eqz v13, :cond_4

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->right:I

    iput v3, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v0, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->growArray([Landroid/graphics/Rect;I)[Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    add-int/lit8 v16, v15, 0x1

    aput-object v14, v20, v15

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    const/16 v18, 0x0

    move/from16 v15, v16

    goto/16 :goto_4

    :cond_c
    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v20, v0

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    move/from16 v21, v0

    add-int v20, v20, v21

    mul-int/lit8 v21, v4, 0x3

    div-int/lit8 v21, v21, 0x4

    add-int v3, v20, v21

    goto/16 :goto_5

    :cond_d
    return-void
.end method


# virtual methods
.method public dumpCurrentGrid()V
    .locals 0

    return-void
.end method

.method public getKeyIndexAndNearbyCodes(IIZ)I
    .locals 16

    invoke-virtual/range {p0 .. p1}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getTouchX(I)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getTouchY(I)I

    move-result v3

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mXt9Version:I

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v4, v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->computeCurrentKeyCode(II)I

    move-result v11

    const/16 v4, -0x12c

    if-eq v11, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v13

    const/4 v9, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    :goto_0
    if-ge v9, v14, :cond_0

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v4, v10, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, v11, :cond_6

    move v15, v9

    :cond_0
    :goto_1
    const/4 v4, -0x1

    if-ne v15, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    new-array v12, v4, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeys()[Lcom/diotek/ime/framework/view/Keyboard$Key;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    :goto_2
    if-eqz v12, :cond_1

    array-length v4, v12

    if-lez v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->IS_KORMODE:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/diotek/ime/framework/util/Utils;->getTheNearestKeyIndexKor(IILcom/diotek/ime/framework/view/DefaultKeyboard;IZZ)I

    move-result v15

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    if-eqz v4, :cond_4

    const-string v4, "NOTSTAY"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSymbolPopupInput:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getPopupMiniKeyboardType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_2
    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_4

    :cond_3
    const/4 v15, -0x1

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mXt9Version:I

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, -0x1

    if-ne v4, v15, :cond_5

    const/4 v15, 0x0

    :cond_5
    return v15

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSwiftkeyVersion:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isSupportingKPM()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    if-nez v4, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->makeValidArea()V

    :cond_8
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->isValidArea(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->isBelowSpace(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    new-array v12, v4, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeys()[Lcom/diotek/ime/framework/view/Keyboard$Key;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->IS_KORMODE:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v4

    const/high16 v5, 0x6b6f0000

    if-ne v4, v5, :cond_9

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/diotek/ime/framework/util/Utils;->getTheMatchedKeyIndex(II[Lcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v15

    :goto_5
    const/4 v4, -0x1

    if-ne v15, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v4, v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->computeCurrentKeyCode(II)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v9, 0x0

    :goto_6
    array-length v4, v12

    if-ge v9, v4, :cond_0

    aget-object v4, v12, v9

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, v11, :cond_a

    move v15, v9

    goto/16 :goto_1

    :catch_0
    move-exception v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    goto :goto_4

    :cond_9
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/diotek/ime/framework/util/Utils;->getTheMatchedKeyIndexForV15(II[Lcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v15

    goto :goto_5

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mSwiftkeyVersion:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isSupportingKPM()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    if-nez v4, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->makeValidArea()V

    :cond_c
    invoke-direct/range {p0 .. p2}, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->isValidArea(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    new-array v12, v4, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->getKeys()[Lcom/diotek/ime/framework/view/Keyboard$Key;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v12

    :goto_7
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/diotek/ime/framework/util/Utils;->getTheMatchedKeyIndex(II[Lcom/diotek/ime/framework/view/Keyboard$Key;)I

    move-result v15

    const/4 v4, -0x1

    if-ne v15, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v4, v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->computeCurrentKeyCode(II)I

    move-result v11

    if-lez v11, :cond_0

    const/4 v9, 0x0

    :goto_8
    array-length v4, v12

    if-ge v9, v4, :cond_0

    aget-object v4, v12, v9

    iget-object v4, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, v11, :cond_d

    move v15, v9

    goto/16 :goto_1

    :catch_1
    move-exception v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    goto :goto_7

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :catch_2
    move-exception v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isUseCustomArea()Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/diotek/ime/framework/util/Utils;->getTheNearestKeyIndexKor(IILcom/diotek/ime/framework/view/DefaultKeyboard;IZZ)I

    move-result v15

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mKeyboardWidth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->mIsMiniKeyboard:Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/diotek/ime/framework/util/Utils;->getTheNearestKeyIndex(IILcom/diotek/ime/framework/view/Keyboard;IZ)I

    move-result v15

    goto/16 :goto_3

    :cond_10
    const-string v4, "SamsungIME"

    const-string v5, "ProximityKeyDetector.getKeyIndexAndNearbyCodes() mKeyboard == null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method protected getMaxNearbyKeys()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;FFZ)[Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/view/tracker/KeyDetector;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;FFZ)[Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/tracker/ProximityKeyDetector;->mValidArea:[Landroid/graphics/Rect;

    return-object v0
.end method
