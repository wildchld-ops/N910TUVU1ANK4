.class public Lcom/diotek/ime/framework/view/DefaultKeyboard;
.super Lcom/diotek/ime/framework/view/Keyboard;
.source "DefaultKeyboard.java"


# instance fields
.field private LAST_PHRASE_INDEX:I

.field private mDefaultFloatingWidth:I

.field private mDefaultKeyIndex:I

.field private mDefaultWidth:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsLandscape:Z

.field private mIsMinikeyboard:Z

.field private mIsNormalEditorType:Z

.field private mIsQwerty:Z

.field private mIsTabletModel:Z

.field private mIsUseCustomArea:Z

.field private mPopupMiniKeyboardType:I

.field private mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field private mUseCustomArea:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # I
    .param p5    # I

    const v7, 0x7f0a0018

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v2, 0x5

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    iput v4, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v2, 0x9

    iput v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v5, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v5, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iput-boolean v4, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    iget-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    new-array v2, v6, [I

    const/16 v3, -0x459

    aput v3, v2, v4

    iput-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    iput-object v5, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020353

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v7}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/Keyboard;->setTotalWidth(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v7}, Lcom/diotek/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v2

    iput v2, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    iput-boolean v6, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;IIZZ)V
    .locals 16
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # I
    .param p5    # I
    .param p6    # Z
    .param p7    # Z

    invoke-direct/range {p0 .. p5}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v13, 0x5

    new-array v13, v13, [Z

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v13, 0x9

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v13, 0x6

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_6

    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v1, v9, :cond_5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    iget-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v14, 0x0

    const/16 v15, -0x101

    aput v15, v13, v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->isShortCutMode()Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    iget-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-static {v13}, Lcom/diotek/ime/framework/input/shortcutphrase/ShortcutPhraseController;->isSingleDigitNumber(I)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/common/ShiftStateControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v13, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->parent_Key_INDEX:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getShortCutPhrasePrefKey(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const v13, 0x7f090139

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    const v13, 0x7f09013a

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v6, v13

    iget-object v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v12, v13

    const/16 v8, 0x8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    if-ge v12, v7, :cond_3

    iput v6, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    :goto_1
    iget v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/Keyboard;->setTotalWidth(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v13, 0x8

    if-ne v3, v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    mul-int/2addr v13, v12

    const v14, 0x7f090138

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    goto :goto_1

    :cond_4
    mul-int v13, v12, v8

    const v14, 0x7f090138

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v4, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    goto :goto_1

    :cond_5
    if-eqz p7, :cond_6

    const/4 v2, 0x0

    if-eqz p6, :cond_8

    const/4 v13, -0x1

    move/from16 v0, p4

    if-ne v0, v13, :cond_7

    const/4 v13, 0x0

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_6
    :goto_2
    return-void

    :cond_7
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    div-int/lit8 v2, v13, 0x2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_2

    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Landroid/graphics/drawable/Drawable;[IIIZZ)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # [Landroid/graphics/drawable/Drawable;
    .param p5    # [I
    .param p6    # I
    .param p7    # I
    .param p8    # Z
    .param p9    # Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v6, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v6, v9, :cond_0

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p5, v6

    aput v2, v0, v1

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    aget-object v0, p4, v6

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    if-eqz p9, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;IIZZ)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # [Ljava/lang/String;
    .param p5    # I
    .param p6    # I
    .param p7    # Z
    .param p8    # Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v6, 0x0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    if-ge v6, v9, :cond_1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v0, p4, v6

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    aget-object v0, p4, v6

    iput-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, -0xff

    aput v2, v0, v1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, -0x72

    aput v2, v0, v1

    goto :goto_1

    :cond_1
    if-eqz p8, :cond_3

    if-eqz p7, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p5

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p5

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz p7, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;[IIIZZ)V
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # [Ljava/lang/String;
    .param p5    # [Landroid/graphics/drawable/Drawable;
    .param p6    # [I
    .param p7    # I
    .param p8    # I
    .param p9    # Z
    .param p10    # Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v1, 0x5

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v7, 0x0

    move/from16 v10, p7

    :goto_0
    if-ge v7, v10, :cond_1

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v1, p4

    if-ge v7, v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x82

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget-object v1, p4, v7

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    aget-object v1, p4, v7

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0xff

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move/from16 v7, p7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    :goto_2
    if-ge v7, v10, :cond_3

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p6

    array-length v1, v0

    add-int v1, v1, p7

    if-ge v7, v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sub-int v3, v7, p7

    aget v3, p6, v3

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    sub-int v1, v7, p7

    aget-object v1, p5, v1

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0xff

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_3
    if-eqz p9, :cond_4

    if-eqz p10, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_4
    :goto_4
    return-void

    :cond_5
    move/from16 v0, p7

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    move/from16 v0, p7

    iput v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;IIZZ)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # [Ljava/lang/String;
    .param p5    # [Ljava/lang/String;
    .param p6    # I
    .param p7    # I
    .param p8    # Z
    .param p9    # Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/framework/view/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    const/4 v1, 0x5

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/16 v1, 0x9

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultWidth:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultFloatingWidth:I

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v9

    const/4 v11, 0x0

    if-eqz p8, :cond_0

    const/4 v11, 0x1

    :cond_0
    const/4 v7, 0x0

    move-object/from16 v0, p5

    array-length v10, v0

    :goto_0
    if-ge v7, v10, :cond_1

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x7e

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget-object v1, p5, v7

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    aget-object v1, p5, v7

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    move-object/from16 v0, p5

    array-length v1, v0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x7f

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const-string v1, "sym"

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    :cond_2
    move-object/from16 v0, p5

    array-length v1, v0

    add-int v7, v1, v11

    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v2, v0

    add-int/2addr v1, v2

    add-int v10, v1, v11

    :goto_1
    if-ge v7, v10, :cond_3

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, -0x7e

    aput v3, v1, v2

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    move-object/from16 v0, p5

    array-length v1, v0

    sub-int v1, v7, v1

    sub-int/2addr v1, v11

    aget-object v1, p4, v1

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p5

    array-length v1, v0

    sub-int v1, v7, v1

    sub-int/2addr v1, v11

    aget-object v1, p4, v1

    iput-object v1, v8, Lcom/diotek/ime/framework/view/Keyboard$Key;->text:Ljava/lang/CharSequence;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    if-eqz p9, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/Keyboard$Key;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->pressed:Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    :cond_4
    return-void
.end method


# virtual methods
.method public IsMinikeyboardinstance()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsMinikeyboard:Z

    return v0
.end method

.method public getDefaultKeyIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mDefaultKeyIndex:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-super {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHorizontalGap()I
    .locals 1

    invoke-super {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getHorizontalGap()I

    move-result v0

    return v0
.end method

.method public getKey(I)Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 4
    .param p1    # I

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, p1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMinWidth()I
    .locals 1

    invoke-super {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getMinWidth()I

    move-result v0

    return v0
.end method

.method public getPopupMiniKeyboardType()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    return v0
.end method

.method public getShortCutPhrasePrefKey(I)Ljava/lang/String;
    .locals 11
    .param p1    # I

    const/4 v10, 0x0

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "phrase"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "UTF-16"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v8, ""

    invoke-interface {v6, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-direct {v5, v8, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v8, ""

    invoke-interface {v6, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    iget-object v8, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0026

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    const/4 v8, 0x0

    :try_start_0
    iget v9, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->LAST_PHRASE_INDEX:I

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->offsetByCodePoints(II)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    if-le v7, v3, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    return-object v5

    :catch_0
    move-exception v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    const-string v8, "SamsungIME"

    const-string v9, "maxstringNum is IndexOutOfBoundsException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsableCustomArea()[Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    return-object v0
.end method

.method public getVerticalGap()I
    .locals 1

    invoke-super {p0}, Lcom/diotek/ime/framework/view/Keyboard;->getVerticalGap()I

    move-result v0

    return v0
.end method

.method public isLandscape()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    return v0
.end method

.method public isNormalEditorType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    return v0
.end method

.method public isQwerty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    return v0
.end method

.method public isTabletModel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    return v0
.end method

.method public isUseCustomArea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    return v0
.end method

.method public setLandscape(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsLandscape:Z

    return-void
.end method

.method public setPopupMiniKeyboardType(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mPopupMiniKeyboardType:I

    return-void
.end method

.method public setUseCustomArea(ZZZZ)V
    .locals 0
    .param p1    # Z
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsTabletModel:Z

    iput-boolean p3, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsNormalEditorType:Z

    iput-boolean p2, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsQwerty:Z

    iput-boolean p4, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mIsUseCustomArea:Z

    return-void
.end method

.method public setUseCustomArea([Z)V
    .locals 0
    .param p1    # [Z

    iput-object p1, p0, Lcom/diotek/ime/framework/view/DefaultKeyboard;->mUseCustomArea:[Z

    return-void
.end method
