.class public Lcom/diotek/ime/implement/inputmode/InputModeManagerImpl;
.super Lcom/diotek/ime/framework/inputmode/InputModeManager;
.source "InputModeManagerImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;-><init>()V

    return-void
.end method

.method private getPhonePadFromHandwritingMethod()I
    .locals 3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected computeValidInputMethod()I
    .locals 21

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v5

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v8

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v10

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportFullHandwriting()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v18, v0

    const-string v19, "SETTINGS_DEFAULT_USE_FULL_HANDWRITING"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableHWRInput()Z

    move-result v6

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    iget v0, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    and-int/lit8 v2, v18, 0xf

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsTabletMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v2, v0, :cond_1

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v2, v0, :cond_1

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v12, v0, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_1
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/4 v14, 0x1

    :cond_2
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v18

    move/from16 v0, v18

    if-eq v3, v0, :cond_3

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setForceSetHWRMode(Z)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    :cond_3
    return v14

    :pswitch_1
    const/4 v14, 0x1

    goto :goto_0

    :pswitch_2
    move v14, v5

    goto :goto_0

    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/inputmode/InputModeManagerImpl;->getPhonePadFromHandwritingMethod()I

    move-result v14

    goto :goto_0

    :cond_4
    const/16 v18, 0x9

    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    const/16 v18, 0xe

    move/from16 v0, v18

    if-ne v12, v0, :cond_7

    :cond_5
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    packed-switch v5, :pswitch_data_1

    :pswitch_4
    const/4 v14, 0x1

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto :goto_0

    :cond_6
    const/4 v14, 0x1

    goto :goto_0

    :pswitch_6
    move v14, v5

    goto :goto_0

    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/inputmode/InputModeManagerImpl;->getPhonePadFromHandwritingMethod()I

    move-result v14

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_8
    if-eqz v8, :cond_d

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_9

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v18

    if-nez v18, :cond_9

    const/4 v14, 0x0

    goto :goto_0

    :cond_9
    if-eqz v5, :cond_a

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v11

    if-nez v11, :cond_c

    const/4 v5, 0x0

    :cond_b
    :goto_1
    move v14, v5

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x1

    goto :goto_1

    :cond_d
    if-eqz v10, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v14

    goto/16 :goto_0

    :cond_e
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_f

    if-nez v8, :cond_f

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_f
    move v14, v5

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v18

    if-eqz v18, :cond_11

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v18

    if-eqz v18, :cond_12

    :cond_12
    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v12, v0, :cond_13

    const/16 v18, 0x9

    move/from16 v0, v18

    if-eq v12, v0, :cond_13

    const/16 v18, 0xe

    move/from16 v0, v18

    if-ne v12, v0, :cond_16

    :cond_13
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    const/16 v18, 0x7

    move/from16 v0, v18

    if-ne v5, v0, :cond_14

    const/4 v14, 0x7

    goto/16 :goto_0

    :cond_14
    const/16 v18, 0x8

    move/from16 v0, v18

    if-ne v5, v0, :cond_15

    const/16 v14, 0x8

    goto/16 :goto_0

    :cond_15
    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_16
    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v2, v0, :cond_17

    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v2, v0, :cond_17

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_19

    :cond_17
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    if-eqz v6, :cond_18

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    if-eqz v9, :cond_2

    if-nez v7, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_18
    packed-switch v5, :pswitch_data_2

    const/4 v14, 0x1

    goto/16 :goto_0

    :pswitch_8
    move v14, v5

    goto/16 :goto_0

    :cond_19
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v2, v0, :cond_1a

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    packed-switch v5, :pswitch_data_3

    const/4 v14, 0x1

    goto/16 :goto_0

    :pswitch_9
    move v14, v5

    goto/16 :goto_0

    :cond_1a
    if-eqz v10, :cond_1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_1b

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    if-eqz v9, :cond_2

    if-nez v7, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1b
    if-eqz v9, :cond_24

    if-eqz v7, :cond_20

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_1c

    if-nez v5, :cond_20

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v13

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_1d

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_1e

    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_1e
    if-nez v13, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto/16 :goto_0

    :cond_1f
    move v14, v5

    goto/16 :goto_0

    :cond_20
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_21

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_21
    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_22

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_2

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_22
    if-eqz v15, :cond_23

    if-eqz v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isFullScreesnHwrPackage()Z

    move-result v18

    if-eqz v18, :cond_23

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_23

    const/4 v14, 0x4

    goto/16 :goto_0

    :cond_23
    move v14, v5

    goto/16 :goto_0

    :cond_24
    if-eqz v6, :cond_25

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-eqz v18, :cond_25

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto/16 :goto_0

    :cond_25
    if-eqz v15, :cond_26

    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isFullScreesnHwrPackage()Z

    move-result v18

    if-eqz v18, :cond_26

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v5, v0, :cond_26

    const/4 v14, 0x4

    goto/16 :goto_0

    :cond_26
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingNumberAndSymbolsKeypadType()Z

    move-result v18

    if-nez v18, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isUsingOnlyQwertyNumberAndSymbolKeyboard()Z

    move-result v18

    if-eqz v18, :cond_30

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v13

    if-eqz v5, :cond_28

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2c

    :cond_28
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v13, v0, :cond_29

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v13, v0, :cond_2c

    :cond_29
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v16

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2a

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_2a
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_2b
    move v14, v5

    goto/16 :goto_0

    :cond_2c
    if-eqz v5, :cond_2d

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_2e

    :cond_2d
    if-nez v13, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsKorMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2f

    const/16 v18, 0x8

    move/from16 v0, v18

    if-eq v5, v0, :cond_2f

    const/16 v18, 0x7

    move/from16 v0, v18

    if-eq v5, v0, :cond_2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v18

    if-nez v18, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v14

    goto/16 :goto_0

    :cond_2f
    move v14, v5

    goto/16 :goto_0

    :cond_30
    move v14, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public setIsVoiceInstalled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->isDisableVoice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/diotek/ime/framework/inputmode/InputModeManager;->mIsVoiceInstalled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
