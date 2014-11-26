.class public Lcom/diotek/ime/implement/view/ViewControllerImpl;
.super Lcom/diotek/ime/framework/view/AbstractViewController;
.source "ViewControllerImpl.java"


# instance fields
.field private ADD_SMILEY_SYMBOL:Z

.field private IS_FHD:Z

.field private IS_HD:Z

.field private IS_HVGA:Z

.field private IS_QHD:Z

.field private IS_WQXGA:Z

.field private IS_WVGA:Z

.field private USE_GLOBAL_KEY:Z

.field private USE_SYMBOL_LAYOUT_BY_ATT:Z

.field private USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

.field private mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

.field private mIsAddNumberKeyFirstLine:Z

.field private mIsCommaKeyAsDefault:Z

.field mIsLandscape:Z

.field private mModeID:I

.field private mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

.field public mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

.field private mToast:Landroid/widget/Toast;

.field private mXmlID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    iput-boolean v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    iput-boolean v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iput v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    iput v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-boolean v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-void
.end method

.method private getCurrentSymbolPageModeId(I)I
    .locals 14
    .param p1    # I

    const/16 v13, 0x8

    const/4 v4, 0x0

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v12, "da_mode"

    invoke-interface {v9, v12, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v7, 0x0

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v12

    if-eqz v12, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    move v8, v7

    :goto_1
    return v8

    :pswitch_0
    :try_start_0
    const-string v11, "symbol_page_1_mirrorlink"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    :catch_0
    move-exception v0

    const v7, 0x7f0800fc

    goto :goto_0

    :pswitch_1
    :try_start_1
    const-string v11, "symbol_page_2_mirrorlink"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_0

    :catch_1
    move-exception v0

    const v7, 0x7f0800fe

    goto :goto_0

    :pswitch_2
    :try_start_2
    const-string v11, "symbol_page_3_mirrorlink"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    goto :goto_0

    :catch_2
    move-exception v0

    const v7, 0x7f080100

    goto :goto_0

    :cond_0
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v10

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    if-ne v1, v13, :cond_1

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v12

    if-nez v12, :cond_1

    move v4, v11

    :cond_1
    iget-boolean v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v12, :cond_2

    if-ne v6, v13, :cond_2

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v6, 0x1

    :cond_2
    packed-switch v6, :pswitch_data_1

    :goto_2
    :pswitch_3
    move v8, v7

    goto :goto_1

    :pswitch_4
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v12

    if-ne v12, v11, :cond_3

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getValidSymbolsPage(I)I

    move-result p1

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v13, "SYMBOLS_PAGE"

    invoke-interface {v12, v13, p1}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_3
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v12

    if-nez v12, :cond_4

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletPhoneFlotingCJ()Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_4
    const/4 v12, 0x7

    if-ne v6, v12, :cond_5

    if-eq v10, v11, :cond_b

    :cond_5
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    if-le v12, v11, :cond_8

    if-eqz v3, :cond_6

    const v7, 0x7f0800f7

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    const v7, 0x7f0800f6

    goto :goto_2

    :cond_7
    const v7, 0x7f0800f2

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    const v7, 0x7f0800f5

    goto :goto_2

    :cond_9
    if-eqz v5, :cond_a

    const v7, 0x7f0800f4

    goto :goto_2

    :cond_a
    const v7, 0x7f0800f3

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v12

    if-nez v12, :cond_d

    iget-boolean v12, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v12, :cond_d

    if-eqz v1, :cond_c

    if-eqz v4, :cond_d

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v12

    if-nez v12, :cond_d

    :cond_c
    packed-switch p1, :pswitch_data_2

    :try_start_3
    const-string v11, "symbol_page_1_comma"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v7

    goto/16 :goto_2

    :pswitch_5
    :try_start_4
    const-string v11, "symbol_page_1_comma"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const v7, 0x7f0800fc

    goto/16 :goto_2

    :pswitch_6
    :try_start_5
    const-string v11, "symbol_page_2_comma"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v7

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const v7, 0x7f0800fe

    goto/16 :goto_2

    :pswitch_7
    :try_start_6
    const-string v11, "symbol_page_3_comma"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v7

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const v7, 0x7f080100

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const v7, 0x7f0800fc

    goto/16 :goto_2

    :cond_d
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    if-le v12, v11, :cond_10

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v11

    if-nez v11, :cond_e

    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v11, :cond_f

    :cond_e
    packed-switch p1, :pswitch_data_3

    const v7, 0x7f0800fc

    goto/16 :goto_2

    :pswitch_8
    const v7, 0x7f0800fc

    goto/16 :goto_2

    :pswitch_9
    const v7, 0x7f0800fe

    goto/16 :goto_2

    :pswitch_a
    const v7, 0x7f080100

    goto/16 :goto_2

    :cond_f
    packed-switch p1, :pswitch_data_4

    const v7, 0x7f0800fd

    goto/16 :goto_2

    :pswitch_b
    const v7, 0x7f0800fd

    goto/16 :goto_2

    :pswitch_c
    const v7, 0x7f0800ff

    goto/16 :goto_2

    :pswitch_d
    const v7, 0x7f080101

    goto/16 :goto_2

    :cond_10
    packed-switch p1, :pswitch_data_5

    const v7, 0x7f0800fd

    goto/16 :goto_2

    :pswitch_e
    const v7, 0x7f0800fd

    goto/16 :goto_2

    :pswitch_f
    const v7, 0x7f0800ff

    goto/16 :goto_2

    :pswitch_10
    const v7, 0x7f080101

    goto/16 :goto_2

    :pswitch_11
    iget-boolean v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v12, :cond_11

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonePadCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_2

    :cond_11
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    if-le v12, v11, :cond_14

    if-eqz v3, :cond_12

    const v7, 0x7f0800f7

    goto/16 :goto_2

    :cond_12
    if-eqz v5, :cond_13

    const v7, 0x7f0800f6

    goto/16 :goto_2

    :cond_13
    const v7, 0x7f0800f2

    goto/16 :goto_2

    :cond_14
    if-eqz v3, :cond_15

    const v7, 0x7f0800f5

    goto/16 :goto_2

    :cond_15
    if-eqz v5, :cond_16

    const v7, 0x7f0800f4

    goto/16 :goto_2

    :cond_16
    const v7, 0x7f0800f3

    goto/16 :goto_2

    :cond_17
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    if-le v12, v11, :cond_18

    if-nez v2, :cond_18

    packed-switch p1, :pswitch_data_6

    const v7, 0x7f0800fc

    goto/16 :goto_2

    :pswitch_12
    const v7, 0x7f0800fc

    goto/16 :goto_2

    :pswitch_13
    const v7, 0x7f0800fe

    goto/16 :goto_2

    :pswitch_14
    const v7, 0x7f080100

    goto/16 :goto_2

    :pswitch_15
    const v7, 0x7f080111

    goto/16 :goto_2

    :cond_18
    packed-switch p1, :pswitch_data_7

    const v7, 0x7f0800fd

    goto/16 :goto_2

    :pswitch_16
    const v7, 0x7f0800fd

    goto/16 :goto_2

    :pswitch_17
    const v7, 0x7f0800ff

    goto/16 :goto_2

    :pswitch_18
    const v7, 0x7f080101

    goto/16 :goto_2

    :pswitch_19
    const v7, 0x7f080114

    goto/16 :goto_2

    :pswitch_1a
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    array-length v12, v12

    if-le v12, v11, :cond_1a

    if-nez v2, :cond_1a

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v11

    if-nez v11, :cond_19

    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v11, :cond_1a

    :cond_19
    packed-switch p1, :pswitch_data_8

    const v7, 0x7f0800fc

    goto/16 :goto_2

    :pswitch_1b
    const v7, 0x7f0800fc

    goto/16 :goto_2

    :pswitch_1c
    const v7, 0x7f0800fe

    goto/16 :goto_2

    :pswitch_1d
    const v7, 0x7f080100

    goto/16 :goto_2

    :cond_1a
    const-string v11, "USA"

    const-string v12, "USA"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v11

    if-nez v11, :cond_1b

    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v11, :cond_1b

    packed-switch p1, :pswitch_data_9

    :try_start_7
    const-string v11, "symbol_page_1_comma"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_a

    move-result v7

    goto/16 :goto_2

    :pswitch_1e
    :try_start_8
    const-string v11, "symbol_page_1_comma"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v7

    goto/16 :goto_2

    :catch_7
    move-exception v0

    const v7, 0x7f0800fc

    goto/16 :goto_2

    :pswitch_1f
    :try_start_9
    const-string v11, "symbol_page_2_comma"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v7

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const v7, 0x7f0800fe

    goto/16 :goto_2

    :pswitch_20
    :try_start_a
    const-string v11, "symbol_page_3_comma"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v7

    goto/16 :goto_2

    :catch_9
    move-exception v0

    const v7, 0x7f080100

    goto/16 :goto_2

    :catch_a
    move-exception v0

    const v7, 0x7f0800fc

    goto/16 :goto_2

    :cond_1b
    packed-switch p1, :pswitch_data_a

    const v7, 0x7f0800fd

    goto/16 :goto_2

    :pswitch_21
    const v7, 0x7f0800fd

    goto/16 :goto_2

    :pswitch_22
    const v7, 0x7f0800ff

    goto/16 :goto_2

    :pswitch_23
    const v7, 0x7f080101

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_11
        :pswitch_1a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method private getEmoticonKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 4

    const-string v2, "SamsungIME"

    const-string v3, "getEmoticonKeyboard"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v1, 0x7f0500e3

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_0
    new-instance v2, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x7f0500e9

    goto :goto_0

    :cond_2
    const v1, 0x7f05022c

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getEmoticonPopupKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 3

    const-string v1, "SamsungIME"

    const-string v2, "getEmoticonPopupKeyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f050022

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_0
    new-instance v1, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v1

    :cond_1
    const v0, 0x7f050019

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getFloatingHWRKeyboardXmlId()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f050387

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f050003

    goto :goto_0
.end method

.method private getFloatingKeyboardXmlId(I)I
    .locals 16
    .param p1    # I

    const/high16 v13, -0x10000

    and-int v8, p1, v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v13, ""

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    const-string v13, "CH"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const v13, 0x66724652

    move/from16 v0, p1

    if-eq v0, v13, :cond_1

    :cond_0
    move-object v10, v5

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    :try_start_0
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    :goto_0
    sparse-switch v8, :sswitch_data_0

    :try_start_1
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4c

    move-result v12

    :cond_2
    :goto_1
    return v12

    :catch_0
    move-exception v3

    const v12, 0x7f05022d

    goto :goto_0

    :sswitch_0
    :try_start_2
    const-string v13, "floating_hi"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v12

    goto :goto_1

    :catch_1
    move-exception v3

    const v12, 0x7f050234

    goto :goto_1

    :sswitch_1
    :try_start_3
    const-string v13, "floating_bn"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    goto :goto_1

    :catch_2
    move-exception v3

    const v12, 0x7f050227

    goto :goto_1

    :sswitch_2
    :try_start_4
    const-string v13, "floating_gu"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v12

    goto :goto_1

    :catch_3
    move-exception v3

    const v12, 0x7f050232

    goto :goto_1

    :sswitch_3
    :try_start_5
    const-string v13, "floating_kn"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v12

    goto :goto_1

    :catch_4
    move-exception v3

    const v12, 0x7f05023c

    goto :goto_1

    :sswitch_4
    :try_start_6
    const-string v13, "floating_ml"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v12

    goto :goto_1

    :catch_5
    move-exception v3

    const v12, 0x7f050276

    goto :goto_1

    :sswitch_5
    :try_start_7
    const-string v13, "floating_mr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v12

    goto :goto_1

    :catch_6
    move-exception v3

    const v12, 0x7f050278

    goto :goto_1

    :sswitch_6
    :try_start_8
    const-string v13, "floating_pa"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v12

    goto :goto_1

    :catch_7
    move-exception v3

    const v12, 0x7f050299

    goto :goto_1

    :sswitch_7
    :try_start_9
    const-string v13, "floating_si"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v12

    goto :goto_1

    :catch_8
    move-exception v3

    const v12, 0x7f05029b

    goto :goto_1

    :sswitch_8
    :try_start_a
    const-string v13, "floating_te"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v12

    goto :goto_1

    :catch_9
    move-exception v3

    const v12, 0x7f05029f

    goto :goto_1

    :sswitch_9
    :try_start_b
    const-string v13, "floating_ta"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v12

    goto :goto_1

    :catch_a
    move-exception v3

    const v12, 0x7f05029e

    goto :goto_1

    :sswitch_a
    :try_start_c
    const-string v13, "floating_as"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v12

    goto/16 :goto_1

    :catch_b
    move-exception v3

    const v12, 0x7f050222

    goto/16 :goto_1

    :sswitch_b
    :try_start_d
    const-string v13, "floating_ne"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v12

    goto/16 :goto_1

    :catch_c
    move-exception v3

    const v12, 0x7f05027a

    goto/16 :goto_1

    :sswitch_c
    :try_start_e
    const-string v13, "floating_or"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v12

    goto/16 :goto_1

    :catch_d
    move-exception v3

    const v12, 0x7f050298

    goto/16 :goto_1

    :sswitch_d
    :try_start_f
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v12

    goto/16 :goto_1

    :catch_e
    move-exception v3

    const v12, 0x7f05022d

    goto/16 :goto_1

    :sswitch_e
    :try_start_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_1

    :pswitch_0
    const-string v13, "floating_tr_qwerty"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_1

    :pswitch_1
    const-string v13, "floating_tr_f"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v12

    goto/16 :goto_1

    :catch_f
    move-exception v3

    const v12, 0x7f05022d

    goto/16 :goto_1

    :sswitch_f
    :try_start_11
    const-string v13, "floating_sl"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v12

    goto/16 :goto_1

    :catch_10
    move-exception v13

    :sswitch_10
    :try_start_12
    const-string v13, "floating_qwertz"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v12

    goto/16 :goto_1

    :catch_11
    move-exception v3

    const v12, 0x7f0502ae

    goto/16 :goto_1

    :sswitch_11
    const-string v13, "BE"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    :try_start_13
    const-string v13, "floating_azerty_no_accent"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v12

    goto/16 :goto_1

    :catch_12
    move-exception v3

    const/high16 v12, 0x7f050000

    goto/16 :goto_1

    :cond_3
    :try_start_14
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v12

    goto/16 :goto_1

    :catch_13
    move-exception v3

    const v12, 0x7f05022d

    goto/16 :goto_1

    :sswitch_12
    :try_start_15
    const-string v13, "floating_es"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    move-result v12

    goto/16 :goto_1

    :catch_14
    move-exception v3

    const v12, 0x7f05022e

    goto/16 :goto_1

    :sswitch_13
    const-string v13, "CH"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :try_start_16
    const-string v13, "floating_qwertz"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_15

    move-result v12

    goto/16 :goto_1

    :catch_15
    move-exception v3

    const v12, 0x7f0502ae

    goto/16 :goto_1

    :cond_4
    :try_start_17
    const-string v13, "floating_it"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v12

    goto/16 :goto_1

    :catch_16
    move-exception v3

    const v12, 0x7f050237

    goto/16 :goto_1

    :sswitch_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v7

    const/4 v13, 0x1

    if-ne v7, v13, :cond_5

    :try_start_18
    const-string v13, "floating_kr_cji"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v12

    goto/16 :goto_1

    :catch_17
    move-exception v3

    const v12, 0x7f05026f

    goto/16 :goto_1

    :cond_5
    const/4 v13, 0x2

    if-ne v7, v13, :cond_6

    :try_start_19
    const-string v13, "floating_kr_cji_turbo"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v12

    goto/16 :goto_1

    :catch_18
    move-exception v3

    const v12, 0x7f05026f

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x3

    if-ne v7, v13, :cond_7

    :try_start_1a
    const-string v13, "floating_kr_sky"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v12

    goto/16 :goto_1

    :catch_19
    move-exception v3

    const v12, 0x7f05026f

    goto/16 :goto_1

    :cond_7
    const/4 v13, 0x4

    if-ne v7, v13, :cond_8

    :try_start_1b
    const-string v13, "floating_kr_nara"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v12

    goto/16 :goto_1

    :catch_1a
    move-exception v3

    const v12, 0x7f05026f

    goto/16 :goto_1

    :cond_8
    if-nez v7, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v6

    if-eqz v6, :cond_9

    :try_start_1c
    const-string v13, "floating_kr_to_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v12

    goto/16 :goto_1

    :catch_1b
    move-exception v3

    const v12, 0x7f050270

    goto/16 :goto_1

    :cond_9
    :try_start_1d
    const-string v13, "floating_kr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v12

    goto/16 :goto_1

    :catch_1c
    move-exception v3

    const v12, 0x7f05026f

    goto/16 :goto_1

    :cond_a
    :try_start_1e
    const-string v13, "floating_kr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v12

    goto/16 :goto_1

    :catch_1d
    move-exception v3

    const v12, 0x7f05026f

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_c

    const v13, 0x66724341

    move/from16 v0, p1

    if-ne v0, v13, :cond_b

    :try_start_1f
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v12

    goto/16 :goto_1

    :catch_1e
    move-exception v3

    const v12, 0x7f05022d

    goto/16 :goto_1

    :cond_b
    :try_start_20
    const-string v13, "floating_azerty_fr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v12

    goto/16 :goto_1

    :catch_1f
    move-exception v3

    const/high16 v12, 0x7f050000

    goto/16 :goto_1

    :cond_c
    const-string v13, "CA"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    :try_start_21
    const-string v13, "floating_en"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result v12

    goto/16 :goto_1

    :catch_20
    move-exception v3

    const v12, 0x7f05022d

    goto/16 :goto_1

    :cond_d
    const-string v13, "CH"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    :try_start_22
    const-string v13, "floating_qwertz"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_21

    move-result v12

    goto/16 :goto_1

    :catch_21
    move-exception v3

    const v12, 0x7f0502ae

    goto/16 :goto_1

    :cond_e
    :try_start_23
    const-string v13, "floating_azerty_fr"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_22

    move-result v12

    goto/16 :goto_1

    :catch_22
    move-exception v3

    const/high16 v12, 0x7f050000

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :try_start_24
    const-string v13, "floating_qwertz_de"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_24

    move-result v12

    goto/16 :goto_1

    :pswitch_2
    :try_start_25
    const-string v13, "floating_qwertz_de_plus"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_23

    move-result v12

    goto/16 :goto_1

    :catch_23
    move-exception v3

    const v12, 0x7f0502af

    goto/16 :goto_1

    :catch_24
    move-exception v3

    const v12, 0x7f0502af

    goto/16 :goto_1

    :sswitch_17
    :try_start_26
    const-string v13, "floating_kk"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result v12

    goto/16 :goto_1

    :catch_25
    move-exception v13

    :sswitch_18
    :try_start_27
    const-string v13, "floating_ru"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_26

    move-result v12

    goto/16 :goto_1

    :catch_26
    move-exception v3

    const v12, 0x7f05029a

    goto/16 :goto_1

    :sswitch_19
    :try_start_28
    const-string v13, "floating_da"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_27

    move-result v12

    goto/16 :goto_1

    :catch_27
    move-exception v3

    const v12, 0x7f05022a

    goto/16 :goto_1

    :sswitch_1a
    :try_start_29
    const-string v13, "floating_nb"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_28

    move-result v12

    goto/16 :goto_1

    :catch_28
    move-exception v3

    const v12, 0x7f050279

    goto/16 :goto_1

    :sswitch_1b
    :try_start_2a
    const-string v13, "floating_fi"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v12

    goto/16 :goto_1

    :catch_29
    move-exception v3

    const v12, 0x7f050231

    goto/16 :goto_1

    :sswitch_1c
    :try_start_2b
    const-string v13, "floating_uk"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v12

    goto/16 :goto_1

    :catch_2a
    move-exception v3

    const v12, 0x7f0502a5

    goto/16 :goto_1

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_2

    :try_start_2c
    const-string v13, "floating_bg"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2d

    move-result v12

    goto/16 :goto_1

    :pswitch_3
    :try_start_2d
    const-string v13, "floating_bg_phonetic"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2b

    move-result v12

    goto/16 :goto_1

    :catch_2b
    move-exception v3

    :try_start_2e
    const-string v13, "floating_bg"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2c

    move-result v12

    goto/16 :goto_1

    :catch_2c
    move-exception v2

    const v12, 0x7f050225

    goto/16 :goto_1

    :catch_2d
    move-exception v3

    const v12, 0x7f050225

    goto/16 :goto_1

    :sswitch_1e
    :try_start_2f
    const-string v13, "floating_el"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v12

    goto/16 :goto_1

    :catch_2e
    move-exception v3

    const v12, 0x7f05022b

    goto/16 :goto_1

    :sswitch_1f
    :try_start_30
    const-string v13, "floating_lv"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v12

    goto/16 :goto_1

    :catch_2f
    move-exception v3

    const v12, 0x7f050274

    goto/16 :goto_1

    :sswitch_20
    :try_start_31
    const-string v13, "floating_ar"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v12

    goto/16 :goto_1

    :catch_30
    move-exception v3

    const v12, 0x7f050221

    goto/16 :goto_1

    :sswitch_21
    :try_start_32
    const-string v13, "floating_ur"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v12

    goto/16 :goto_1

    :catch_31
    move-exception v3

    const v12, 0x7f0502a6

    goto/16 :goto_1

    :sswitch_22
    :try_start_33
    const-string v13, "floating_fa"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v12

    goto/16 :goto_1

    :catch_32
    move-exception v3

    const v12, 0x7f050230

    goto/16 :goto_1

    :sswitch_23
    :try_start_34
    const-string v13, "floating_he"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v12

    goto/16 :goto_1

    :catch_33
    move-exception v3

    const v12, 0x7f050233

    goto/16 :goto_1

    :sswitch_24
    :try_start_35
    const-string v13, "floating_th"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v12

    goto/16 :goto_1

    :catch_34
    move-exception v3

    const v12, 0x7f0502a1

    goto/16 :goto_1

    :sswitch_25
    :try_start_36
    invoke-static {}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietnameseInputMode()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_36

    if-nez v13, :cond_f

    :try_start_37
    const-string v13, "floating_vi_vni"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_35

    move-result v12

    goto/16 :goto_1

    :catch_35
    move-exception v3

    :try_start_38
    const-string v13, "floating_vi"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_1

    :cond_f
    const-string v13, "floating_vi"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_36

    move-result v12

    goto/16 :goto_1

    :catch_36
    move-exception v3

    const v12, 0x7f0502a8

    goto/16 :goto_1

    :sswitch_26
    :try_start_39
    const-string v13, "floating_az"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_37

    move-result v12

    goto/16 :goto_1

    :catch_37
    move-exception v3

    const v12, 0x7f050223

    goto/16 :goto_1

    :sswitch_27
    :try_start_3a
    const-string v13, "floating_hy"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_38

    move-result v12

    goto/16 :goto_1

    :catch_38
    move-exception v3

    const v12, 0x7f050235

    goto/16 :goto_1

    :sswitch_28
    :try_start_3b
    const-string v13, "floating_ka"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_39

    move-result v12

    goto/16 :goto_1

    :catch_39
    move-exception v3

    const v12, 0x7f050239

    goto/16 :goto_1

    :sswitch_29
    const v13, 0x7a68484b

    move/from16 v0, p1

    if-ne v0, v13, :cond_10

    :try_start_3c
    const-string v13, "floating_zh"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3a

    move-result v12

    goto/16 :goto_1

    :catch_3a
    move-exception v3

    const v12, 0x7f0502aa

    goto/16 :goto_1

    :cond_10
    const v13, 0x7a685457

    move/from16 v0, p1

    if-ne v0, v13, :cond_11

    :try_start_3d
    const-string v13, "floating_zt"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3b

    move-result v12

    goto/16 :goto_1

    :catch_3b
    move-exception v3

    const v12, 0x7f0502ab

    goto/16 :goto_1

    :cond_11
    :try_start_3e
    const-string v13, "floating_cn"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3c

    move-result v12

    goto/16 :goto_1

    :catch_3c
    move-exception v3

    const v12, 0x7f050228

    goto/16 :goto_1

    :sswitch_2a
    :try_start_3f
    const-string v13, "floating_lt"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3d

    move-result v12

    goto/16 :goto_1

    :catch_3d
    move-exception v3

    const v12, 0x7f050273

    goto/16 :goto_1

    :sswitch_2b
    :try_start_40
    const-string v13, "floating_is"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3e

    move-result v12

    goto/16 :goto_1

    :catch_3e
    move-exception v3

    const v12, 0x7f050236

    goto/16 :goto_1

    :sswitch_2c
    :try_start_41
    const-string v13, "floating_mk"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_3f

    move-result v12

    goto/16 :goto_1

    :catch_3f
    move-exception v3

    const v12, 0x7f050275

    goto/16 :goto_1

    :sswitch_2d
    :try_start_42
    const-string v13, "floating_et"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_40

    move-result v12

    goto/16 :goto_1

    :catch_40
    move-exception v3

    const v12, 0x7f05022f

    goto/16 :goto_1

    :sswitch_2e
    :try_start_43
    const-string v13, "floating_sq"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_41

    move-result v12

    goto/16 :goto_1

    :catch_41
    move-exception v3

    const v12, 0x7f05029d

    goto/16 :goto_1

    :sswitch_2f
    :try_start_44
    const-string v13, "floating_km"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_42

    move-result v12

    goto/16 :goto_1

    :catch_42
    move-exception v3

    const v12, 0x7f05023b

    goto/16 :goto_1

    :sswitch_30
    :try_start_45
    const-string v13, "floating_lo"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_43

    move-result v12

    goto/16 :goto_1

    :catch_43
    move-exception v3

    const v12, 0x7f050272

    goto/16 :goto_1

    :sswitch_31
    const v13, 0x7a314d4d

    move/from16 v0, p1

    if-ne v0, v13, :cond_2

    :try_start_46
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v13}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v13

    if-eqz v13, :cond_12

    const-string v13, "floating_zw_shift_on"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_1

    :cond_12
    const-string v13, "floating_zw"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_44

    move-result v12

    goto/16 :goto_1

    :catch_44
    move-exception v3

    const v12, 0x7f0502ac

    goto/16 :goto_1

    :sswitch_32
    :try_start_47
    const-string v13, "floating_ja"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_45

    move-result v12

    goto/16 :goto_1

    :catch_45
    move-exception v3

    const v12, 0x7f050238

    goto/16 :goto_1

    :sswitch_33
    :try_start_48
    const-string v13, "floating_mn"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_46

    move-result v12

    goto/16 :goto_1

    :catch_46
    move-exception v3

    const v12, 0x7f050277

    goto/16 :goto_1

    :sswitch_34
    :try_start_49
    const-string v13, "floating_uz"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_47

    move-result v12

    goto/16 :goto_1

    :catch_47
    move-exception v3

    const v12, 0x7f0502a7

    goto/16 :goto_1

    :sswitch_35
    :try_start_4a
    const-string v13, "floating_ky"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_48

    move-result v12

    goto/16 :goto_1

    :catch_48
    move-exception v3

    const v12, 0x7f050271

    goto/16 :goto_1

    :sswitch_36
    :try_start_4b
    const-string v13, "floating_tg"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_4b} :catch_49

    move-result v12

    goto/16 :goto_1

    :catch_49
    move-exception v3

    const v12, 0x7f0502a0

    goto/16 :goto_1

    :sswitch_37
    :try_start_4c
    const-string v13, "floating_tk"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4c .. :try_end_4c} :catch_4a

    move-result v12

    goto/16 :goto_1

    :catch_4a
    move-exception v3

    const v12, 0x7f0502a2

    goto/16 :goto_1

    :sswitch_38
    :try_start_4d
    const-string v13, "floating_be"

    invoke-static {v13}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4d .. :try_end_4d} :catch_4b

    move-result v12

    goto/16 :goto_1

    :catch_4b
    move-exception v3

    const v12, 0x7f050224

    goto/16 :goto_1

    :catch_4c
    move-exception v3

    const v12, 0x7f05022d

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_20
        0x61730000 -> :sswitch_a
        0x617a0000 -> :sswitch_26
        0x62650000 -> :sswitch_38
        0x62670000 -> :sswitch_1d
        0x626e0000 -> :sswitch_1
        0x63610000 -> :sswitch_d
        0x63730000 -> :sswitch_10
        0x64610000 -> :sswitch_19
        0x64650000 -> :sswitch_16
        0x656c0000 -> :sswitch_1e
        0x656e0000 -> :sswitch_d
        0x65730000 -> :sswitch_12
        0x65734553 -> :sswitch_12
        0x65735553 -> :sswitch_12
        0x65740000 -> :sswitch_2d
        0x65750000 -> :sswitch_d
        0x66610000 -> :sswitch_22
        0x66690000 -> :sswitch_1b
        0x66720000 -> :sswitch_15
        0x66724341 -> :sswitch_15
        0x66724652 -> :sswitch_15
        0x676c0000 -> :sswitch_d
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_10
        0x68750000 -> :sswitch_10
        0x68790000 -> :sswitch_27
        0x69640000 -> :sswitch_d
        0x69730000 -> :sswitch_2b
        0x69740000 -> :sswitch_13
        0x69770000 -> :sswitch_23
        0x6a610000 -> :sswitch_32
        0x6b610000 -> :sswitch_28
        0x6b6b0000 -> :sswitch_17
        0x6b6d0000 -> :sswitch_2f
        0x6b6e0000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_14
        0x6b790000 -> :sswitch_35
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_2a
        0x6c760000 -> :sswitch_1f
        0x6d6b0000 -> :sswitch_2c
        0x6d6c0000 -> :sswitch_4
        0x6d6e0000 -> :sswitch_33
        0x6d720000 -> :sswitch_5
        0x6d730000 -> :sswitch_d
        0x6e620000 -> :sswitch_1a
        0x6e650000 -> :sswitch_b
        0x6e6c0000 -> :sswitch_11
        0x6f720000 -> :sswitch_c
        0x70610000 -> :sswitch_6
        0x706c0000 -> :sswitch_d
        0x70740000 -> :sswitch_d
        0x726f0000 -> :sswitch_d
        0x72750000 -> :sswitch_18
        0x73690000 -> :sswitch_7
        0x736b0000 -> :sswitch_d
        0x736c0000 -> :sswitch_f
        0x73710000 -> :sswitch_2e
        0x73720000 -> :sswitch_10
        0x73760000 -> :sswitch_1b
        0x737a0000 -> :sswitch_d
        0x74610000 -> :sswitch_9
        0x74650000 -> :sswitch_8
        0x74670000 -> :sswitch_36
        0x74680000 -> :sswitch_24
        0x746b0000 -> :sswitch_37
        0x74720000 -> :sswitch_e
        0x756b0000 -> :sswitch_1c
        0x75720000 -> :sswitch_21
        0x757a0000 -> :sswitch_34
        0x76690000 -> :sswitch_25
        0x7a310000 -> :sswitch_31
        0x7a680000 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getFloatingPhonePadKeyboardXmlId(I)I
    .locals 20
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v5, :cond_0

    move/from16 p1, v2

    :cond_0
    const/high16 v17, -0x10000

    and-int v12, p1, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v14

    const/16 v16, 0x0

    sparse-switch v12, :sswitch_data_0

    :try_start_0
    const-string v17, "floating_phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4e

    move-result v16

    :goto_0
    return v16

    :sswitch_0
    :try_start_1
    const-string v17, "floating_phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    goto :goto_0

    :catch_0
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_1
    :try_start_2
    const-string v17, "floating_phonepad_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    goto :goto_0

    :catch_1
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_2
    :try_start_3
    const-string v17, "floating_phonepad_de"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v16

    goto :goto_0

    :catch_2
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_3
    :try_start_4
    const-string v17, "floating_phonepad_es"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v16

    goto :goto_0

    :catch_3
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_4
    :try_start_5
    const-string v17, "floating_phonepad_it"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v16

    goto :goto_0

    :catch_4
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_5
    :try_start_6
    const-string v17, "floating_phonepad_cs"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v16

    goto :goto_0

    :catch_5
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_6
    :try_start_7
    const-string v17, "floating_phonepad_da"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v16

    goto :goto_0

    :catch_6
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_7
    :try_start_8
    const-string v17, "floating_phonepad_et"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v16

    goto :goto_0

    :catch_7
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_8
    :try_start_9
    const-string v17, "floating_phonepad_hr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v16

    goto :goto_0

    :catch_8
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_9
    :try_start_a
    const-string v17, "floating_phonepad_lv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v16

    goto :goto_0

    :catch_9
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_a
    :try_start_b
    const-string v17, "floating_phonepad_lt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v16

    goto :goto_0

    :catch_a
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_b
    :try_start_c
    const-string v17, "floating_phonepad_hu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v16

    goto/16 :goto_0

    :catch_b
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_c
    :try_start_d
    const-string v17, "floating_phonepad_nb"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v16

    goto/16 :goto_0

    :catch_c
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_d
    :try_start_e
    const-string v17, "floating_phonepad_nl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v16

    goto/16 :goto_0

    :catch_d
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_e
    :try_start_f
    const-string v17, "floating_phonepad_pl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v16

    goto/16 :goto_0

    :catch_e
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_f
    :try_start_10
    const-string v17, "floating_phonepad_pt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v16

    goto/16 :goto_0

    :catch_f
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_10
    :try_start_11
    const-string v17, "floating_phonepad_ro"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v16

    goto/16 :goto_0

    :catch_10
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_11
    :try_start_12
    const-string v17, "floating_phonepad_fi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v16

    goto/16 :goto_0

    :catch_11
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_12
    :try_start_13
    const-string v17, "floating_phonepad_sr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v16

    goto/16 :goto_0

    :catch_12
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_13
    :try_start_14
    const-string v17, "floating_phonepad_sv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v16

    goto/16 :goto_0

    :catch_13
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_14
    :try_start_15
    const-string v17, "floating_phonepad_sk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    move-result v16

    goto/16 :goto_0

    :catch_14
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_15
    :try_start_16
    const-string v17, "floating_phonepad_sl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_15

    move-result v16

    goto/16 :goto_0

    :catch_15
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_16
    :try_start_17
    const-string v17, "floating_phonepad_tr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v16

    goto/16 :goto_0

    :catch_16
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_17
    :try_start_18
    const-string v17, "floating_phonepad_ca"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v16

    goto/16 :goto_0

    :catch_17
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_18
    :try_start_19
    const-string v17, "floating_phonepad_gl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v16

    goto/16 :goto_0

    :catch_18
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_19
    :try_start_1a
    const-string v17, "floating_phonepad_eu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v16

    goto/16 :goto_0

    :catch_19
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1a
    :try_start_1b
    const-string v17, "floating_phonepad_is"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v16

    goto/16 :goto_0

    :catch_1a
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1b
    :try_start_1c
    const-string v17, "floating_phonepad_sq"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v16

    goto/16 :goto_0

    :catch_1b
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1c
    :try_start_1d
    const-string v17, "floating_phonepad_az"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v16

    goto/16 :goto_0

    :catch_1c
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1d
    :try_start_1e
    const-string v17, "floating_phonepad_id"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v16

    goto/16 :goto_0

    :catch_1d
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1e
    :try_start_1f
    const-string v17, "floating_phonepad_ms"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v16

    goto/16 :goto_0

    :catch_1e
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    :try_start_20
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v16

    goto/16 :goto_0

    :catch_1f
    move-exception v3

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    :try_start_21
    const-string v17, "floating_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result v16

    goto/16 :goto_0

    :catch_20
    move-exception v3

    const v16, 0x7f0501d3

    goto/16 :goto_0

    :cond_2
    packed-switch v4, :pswitch_data_0

    :try_start_22
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_23

    move-result v16

    goto/16 :goto_0

    :pswitch_0
    :try_start_23
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_21

    move-result v16

    goto/16 :goto_0

    :catch_21
    move-exception v3

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :pswitch_1
    :try_start_24
    const-string v17, "floating_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_22

    move-result v16

    goto/16 :goto_0

    :catch_22
    move-exception v3

    const v16, 0x7f0501d3

    goto/16 :goto_0

    :catch_23
    move-exception v3

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :cond_3
    packed-switch v4, :pswitch_data_1

    :try_start_25
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_28

    move-result v16

    goto/16 :goto_0

    :pswitch_2
    :try_start_26
    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_24

    move-result v16

    goto/16 :goto_0

    :catch_24
    move-exception v3

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :pswitch_3
    :try_start_27
    const-string v17, "floating_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_25

    move-result v16

    goto/16 :goto_0

    :catch_25
    move-exception v3

    const v16, 0x7f0501d3

    goto/16 :goto_0

    :pswitch_4
    :try_start_28
    const-string v17, "floating_kr_nara"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_26

    move-result v16

    goto/16 :goto_0

    :catch_26
    move-exception v3

    const v16, 0x7f0501d5

    goto/16 :goto_0

    :pswitch_5
    :try_start_29
    const-string v17, "floating_kr_sky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_27

    move-result v16

    goto/16 :goto_0

    :catch_27
    move-exception v3

    const v16, 0x7f0501d6

    goto/16 :goto_0

    :catch_28
    move-exception v3

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :cond_4
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    packed-switch v11, :pswitch_data_2

    const-string v17, "floating_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    :pswitch_6
    const-string v17, "floating_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v16

    goto/16 :goto_0

    :catch_29
    move-exception v3

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :sswitch_20
    :try_start_2b
    const-string v17, "floating_phonepad_kk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v16

    goto/16 :goto_0

    :catch_2a
    move-exception v3

    const v16, 0x7f0501f2

    goto/16 :goto_0

    :sswitch_21
    :try_start_2c
    const-string v17, "floating_phonepad_ru"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v16

    goto/16 :goto_0

    :catch_2b
    move-exception v3

    const v16, 0x7f0501f2

    goto/16 :goto_0

    :sswitch_22
    :try_start_2d
    const-string v17, "floating_phonepad_bg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v16

    goto/16 :goto_0

    :catch_2c
    move-exception v3

    const v16, 0x7f0501ad

    goto/16 :goto_0

    :sswitch_23
    :try_start_2e
    const-string v17, "floating_phonepad_uk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v16

    goto/16 :goto_0

    :catch_2d
    move-exception v3

    const v16, 0x7f05020a

    goto/16 :goto_0

    :sswitch_24
    :try_start_2f
    const-string v17, "floating_phonepad_el"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v16

    goto/16 :goto_0

    :catch_2e
    move-exception v3

    const v16, 0x7f0501b8

    goto/16 :goto_0

    :sswitch_25
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    :try_start_30
    const-string v17, "floating_phonepad_zh_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v16

    goto/16 :goto_0

    :catch_2f
    move-exception v3

    const v16, 0x7f05020f

    goto/16 :goto_0

    :cond_5
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    if-eqz v14, :cond_6

    :try_start_31
    const-string v17, "floating_phonepad_zt_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v16

    goto/16 :goto_0

    :catch_30
    move-exception v3

    const v16, 0x7f050210

    goto/16 :goto_0

    :cond_6
    if-eqz v8, :cond_7

    :try_start_32
    const-string v17, "floating_phonepad_zt_zhuyin_spell"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v16

    goto/16 :goto_0

    :catch_31
    move-exception v3

    const v16, 0x7f050212

    goto/16 :goto_0

    :cond_7
    :try_start_33
    const-string v17, "floating_phonepad_zt_zhuyin"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v16

    goto/16 :goto_0

    :catch_32
    move-exception v3

    const v16, 0x7f050211

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_9

    :try_start_34
    const-string v17, "floating_phonepad_cn_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v16

    goto/16 :goto_0

    :catch_33
    move-exception v3

    const v16, 0x7f0501b2

    goto/16 :goto_0

    :cond_9
    if-eqz v8, :cond_a

    :try_start_35
    const-string v17, "floating_phonepad_cn_pinyin_spell"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v16

    goto/16 :goto_0

    :catch_34
    move-exception v3

    const v16, 0x7f0501b1

    goto/16 :goto_0

    :cond_a
    :try_start_36
    const-string v17, "floating_phonepad_cn_pinyin"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v16

    goto/16 :goto_0

    :catch_35
    move-exception v3

    const v16, 0x7f0501b0

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    :try_start_37
    const-string v17, "floating_phonepad_th_tone"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v16

    goto/16 :goto_0

    :catch_36
    move-exception v3

    const v16, 0x7f050203

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    :try_start_38
    const-string v17, "floating_phonepad_th_tone_01"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v16

    goto/16 :goto_0

    :catch_37
    move-exception v3

    const v16, 0x7f050204

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    :try_start_39
    const-string v17, "floating_phonepad_th_tone_02"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v16

    goto/16 :goto_0

    :catch_38
    move-exception v3

    const v16, 0x7f050205

    goto/16 :goto_0

    :cond_d
    :try_start_3a
    const-string v17, "floating_phonepad_th"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v16

    goto/16 :goto_0

    :catch_39
    move-exception v3

    const v16, 0x7f050202

    goto/16 :goto_0

    :sswitch_27
    :try_start_3b
    const-string v17, "floating_phonepad_vi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v16

    goto/16 :goto_0

    :catch_3a
    move-exception v3

    const v16, 0x7f05020d

    goto/16 :goto_0

    :sswitch_28
    :try_start_3c
    const-string v17, "floating_phonepad_ar"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v16

    goto/16 :goto_0

    :catch_3b
    move-exception v3

    const v16, 0x7f0501aa

    goto/16 :goto_0

    :sswitch_29
    :try_start_3d
    const-string v17, "floating_phonepad_fa"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v16

    goto/16 :goto_0

    :catch_3c
    move-exception v3

    const v16, 0x7f0501bd

    goto/16 :goto_0

    :sswitch_2a
    :try_start_3e
    const-string v17, "floating_phonepad_ur"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v16

    goto/16 :goto_0

    :catch_3d
    move-exception v3

    const v16, 0x7f05020b

    goto/16 :goto_0

    :sswitch_2b
    :try_start_3f
    const-string v17, "floating_phonepad_he"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v16

    goto/16 :goto_0

    :catch_3e
    move-exception v3

    const v16, 0x7f0501c2

    goto/16 :goto_0

    :sswitch_2c
    :try_start_40
    const-string v17, "floating_phonepad_ka"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v16

    goto/16 :goto_0

    :catch_3f
    move-exception v3

    const v16, 0x7f0501cc

    goto/16 :goto_0

    :sswitch_2d
    :try_start_41
    const-string v17, "floating_phonepad_hy"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v16

    goto/16 :goto_0

    :catch_40
    move-exception v3

    const v16, 0x7f0501c5

    goto/16 :goto_0

    :sswitch_2e
    :try_start_42
    const-string v17, "floating_phonepad_mk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v16

    goto/16 :goto_0

    :catch_41
    move-exception v3

    const v16, 0x7f0501db

    goto/16 :goto_0

    :sswitch_2f
    :try_start_43
    const-string v17, "floating_phonepad_km"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v16

    goto/16 :goto_0

    :catch_42
    move-exception v3

    const v16, 0x7f0501ce

    goto/16 :goto_0

    :sswitch_30
    :try_start_44
    const-string v17, "floating_phonepad_lo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v16

    goto/16 :goto_0

    :catch_43
    move-exception v3

    const v16, 0x7f0501d8

    goto/16 :goto_0

    :sswitch_31
    :try_start_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "floating_phonepad_ja_flick"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    :cond_e
    const-string v17, "floating_phonepad_ja"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v16

    goto/16 :goto_0

    :catch_44
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_f

    const v16, 0x7f0501ca

    goto/16 :goto_0

    :cond_f
    const v16, 0x7f0501c9

    goto/16 :goto_0

    :sswitch_32
    :try_start_46
    const-string v17, "floating_phonepad_mn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v16

    goto/16 :goto_0

    :catch_45
    move-exception v3

    const v16, 0x7f0501dc

    goto/16 :goto_0

    :sswitch_33
    :try_start_47
    const-string v17, "floating_phonepad_uz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_46

    move-result v16

    goto/16 :goto_0

    :catch_46
    move-exception v3

    const v16, 0x7f05020c

    goto/16 :goto_0

    :sswitch_34
    :try_start_48
    const-string v17, "floating_phonepad_ky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_47

    move-result v16

    goto/16 :goto_0

    :catch_47
    move-exception v3

    const v16, 0x7f0501d7

    goto/16 :goto_0

    :sswitch_35
    :try_start_49
    const-string v17, "floating_phonepad_tg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_48

    move-result v16

    goto/16 :goto_0

    :catch_48
    move-exception v3

    const v16, 0x7f050201

    goto/16 :goto_0

    :sswitch_36
    :try_start_4a
    const-string v17, "floating_phonepad_tk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_49

    move-result v16

    goto/16 :goto_0

    :catch_49
    move-exception v3

    const v16, 0x7f050207

    goto/16 :goto_0

    :sswitch_37
    :try_start_4b
    const-string v17, "floating_phonepad_af"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_4b} :catch_4a

    move-result v16

    goto/16 :goto_0

    :catch_4a
    move-exception v3

    const v16, 0x7f0501a9

    goto/16 :goto_0

    :sswitch_38
    :try_start_4c
    const-string v17, "floating_phonepad_ga"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4c .. :try_end_4c} :catch_4b

    move-result v16

    goto/16 :goto_0

    :catch_4b
    move-exception v3

    const v16, 0x7f0501c0

    goto/16 :goto_0

    :sswitch_39
    :try_start_4d
    const-string v17, "floating_phonepad_sz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4d .. :try_end_4d} :catch_4c

    move-result v16

    goto/16 :goto_0

    :catch_4c
    move-exception v3

    const v16, 0x7f050200

    goto/16 :goto_0

    :sswitch_3a
    :try_start_4e
    const-string v17, "floating_phonepad_be"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4e .. :try_end_4e} :catch_4d

    move-result v16

    goto/16 :goto_0

    :catch_4d
    move-exception v3

    const v16, 0x7f0501ac

    goto/16 :goto_0

    :catch_4e
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61660000 -> :sswitch_37
        0x61720000 -> :sswitch_28
        0x617a0000 -> :sswitch_1c
        0x62650000 -> :sswitch_3a
        0x62670000 -> :sswitch_22
        0x63610000 -> :sswitch_17
        0x63730000 -> :sswitch_5
        0x64610000 -> :sswitch_6
        0x64650000 -> :sswitch_2
        0x656c0000 -> :sswitch_24
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_3
        0x65734553 -> :sswitch_3
        0x65735553 -> :sswitch_3
        0x65740000 -> :sswitch_7
        0x65750000 -> :sswitch_19
        0x66610000 -> :sswitch_29
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x67610000 -> :sswitch_38
        0x676c0000 -> :sswitch_18
        0x68720000 -> :sswitch_8
        0x68750000 -> :sswitch_b
        0x68790000 -> :sswitch_2d
        0x69640000 -> :sswitch_1d
        0x69730000 -> :sswitch_1a
        0x69740000 -> :sswitch_4
        0x69770000 -> :sswitch_2b
        0x6a610000 -> :sswitch_31
        0x6b610000 -> :sswitch_2c
        0x6b6b0000 -> :sswitch_20
        0x6b6d0000 -> :sswitch_2f
        0x6b6f0000 -> :sswitch_1f
        0x6b790000 -> :sswitch_34
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_a
        0x6c760000 -> :sswitch_9
        0x6d6b0000 -> :sswitch_2e
        0x6d6e0000 -> :sswitch_32
        0x6d730000 -> :sswitch_1e
        0x6e620000 -> :sswitch_c
        0x6e6c0000 -> :sswitch_d
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_f
        0x70744252 -> :sswitch_f
        0x70745054 -> :sswitch_f
        0x726f0000 -> :sswitch_10
        0x72750000 -> :sswitch_21
        0x736b0000 -> :sswitch_14
        0x736c0000 -> :sswitch_15
        0x73710000 -> :sswitch_1b
        0x73720000 -> :sswitch_12
        0x73760000 -> :sswitch_13
        0x737a0000 -> :sswitch_39
        0x74670000 -> :sswitch_35
        0x74680000 -> :sswitch_26
        0x746b0000 -> :sswitch_36
        0x74720000 -> :sswitch_16
        0x756b0000 -> :sswitch_23
        0x75720000 -> :sswitch_2a
        0x757a0000 -> :sswitch_33
        0x76690000 -> :sswitch_27
        0x7a680000 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getFloatingPhonePadNumberKeyboardXmlId()I
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_1

    :try_start_0
    const-string v3, "floating_phonepad_month"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const v2, 0x7f0501dd

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    const-string v3, "floating_phonepad_number"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    :catch_1
    move-exception v0

    const v2, 0x7f0501e2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x6b6d0000

    if-ne v3, v4, :cond_3

    const-string v3, "floating_phonepad_number_km"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x6c6f0000

    if-ne v3, v4, :cond_4

    const-string v3, "floating_phonepad_number_lo"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x61720000

    if-ne v3, v4, :cond_5

    const-string v3, "floating_phonepad_number_arabic"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    const/high16 v4, 0x66610000

    if-ne v3, v4, :cond_6

    const-string v3, "floating_phonepad_number_farsi"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_6
    const-string v3, "floating_phonepad_number"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const v2, 0x7f0501e2

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x9

    if-eq v1, v3, :cond_8

    const/16 v3, 0xe

    if-ne v1, v3, :cond_9

    :cond_8
    :try_start_3
    const-string v3, "floating_phonepad_yeardatetime"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const v2, 0x7f05020e

    goto/16 :goto_0

    :cond_9
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    :try_start_4
    const-string v3, "floating_phonepad_number_decimal"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v2

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const v2, 0x7f0501e4

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v3

    if-eqz v3, :cond_b

    :try_start_5
    const-string v3, "floating_phonepad_number_decimal"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v2

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const v2, 0x7f0501e4

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v3

    if-eqz v3, :cond_c

    :try_start_6
    const-string v3, "floating_phonepad_number_signed"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v2

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const v2, 0x7f0501ea

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    :try_start_7
    const-string v3, "floating_phonepad_number_signed_decimal"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v2

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const v2, 0x7f0501eb

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v3

    if-eqz v3, :cond_f

    :try_start_8
    const-string v3, "floating_phonepad_time"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v2

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const v2, 0x7f050206

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v3

    if-eqz v3, :cond_10

    :try_start_9
    const-string v3, "floating_phonepad_date"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v2

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const v2, 0x7f0501b5

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_a
    const-string v3, "floating_phonepad_datetime"

    invoke-static {v3}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v2

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const v2, 0x7f0501b6

    goto/16 :goto_0
.end method

.method private getFloatingPhonepadNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 9
    .param p1    # Z

    const v8, 0x656e4742

    const-string v6, "SamsungIME"

    const-string v7, "getFloatingPhonepadNumberPopupKeyboard"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v4

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    const/16 v6, 0xa

    if-ne v4, v6, :cond_1

    :try_start_0
    const-string v6, "floating_month"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v6, v5, :cond_0

    iget v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v6, v3, :cond_0

    iget-boolean v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    if-eq v6, v7, :cond_12

    :cond_0
    if-eqz v3, :cond_11

    new-instance v6, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v6, v5, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v6

    :catch_0
    move-exception v0

    const v5, 0x7f0501dd

    goto :goto_0

    :cond_1
    const/16 v6, 0x9

    if-eq v4, v6, :cond_2

    const/16 v6, 0xe

    if-ne v4, v6, :cond_3

    :cond_2
    :try_start_1
    const-string v6, "floating_yeardatetime"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    goto :goto_0

    :catch_1
    move-exception v0

    const v5, 0x7f05020e

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    :try_start_2
    const-string v6, "floating_phone_number"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    goto :goto_0

    :catch_2
    move-exception v0

    const v5, 0x7f0501ec

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    if-ne v4, v6, :cond_5

    :try_start_3
    const-string v6, "floating_phonepad_number_decimal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v5

    :goto_3
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    goto :goto_0

    :cond_5
    :try_start_4
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "floating_phonepad_number_decimal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "floating_phonepad_number_signed"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    const-string v6, "floating_phonepad_number_signed_decimal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "floating_phonepad_time"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "floating_phonepad_date"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "floating_phonepad_datetime"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x6b6d0000

    if-ne v6, v7, :cond_d

    const-string v6, "floating_phonepad_number_km"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_d
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x6c6f0000

    if-ne v6, v7, :cond_e

    const-string v6, "floating_phonepad_number_lo"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_3

    :cond_e
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x61720000

    if-ne v6, v7, :cond_f

    const-string v6, "floating_phonepad_number_arabic"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_3

    :cond_f
    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const/high16 v7, 0x66610000

    if-ne v6, v7, :cond_10

    const-string v6, "floating_phonepad_number_farsi"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_3

    :cond_10
    const-string v6, "floating_phonepad_number"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v5

    goto/16 :goto_3

    :catch_3
    move-exception v0

    const v5, 0x7f0501e2

    goto/16 :goto_3

    :cond_11
    new-instance v6, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_12
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getFloatingPhonepadSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 10
    .param p1    # Z

    const v9, 0x656e4742

    const-string v7, "SamsungIME"

    const-string v8, "getFloatingPhonepadSymbolPopupKeyboard"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v6, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v1

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    const-string v7, "floating_phone_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v7, v6, :cond_0

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v7, v5, :cond_0

    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    if-eq v7, v8, :cond_d

    :cond_0
    if-eqz v5, :cond_c

    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v7, v6, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v7

    :catch_0
    move-exception v0

    const v6, 0x7f0501f9

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    :cond_2
    :try_start_1
    const-string v7, "floating_kr_cji_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "floating_phonepad_symbol_ko"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_4
    const-string v7, "floating_phonepad_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    goto :goto_3

    :catch_1
    move-exception v0

    const v6, 0x7f0501f9

    goto :goto_3

    :cond_5
    :try_start_3
    const-string v7, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "floating_phonepad_symbol_he_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_6
    const-string v7, "floating_phonepad_symbol_he"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_7
    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "floating_phonepad_symbol_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    const/high16 v8, 0x6b6d0000

    if-ne v7, v8, :cond_9

    const-string v7, "floating_phonepad_symbol_km"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    :cond_9
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    const/high16 v8, 0x6c6f0000

    if-ne v7, v8, :cond_a

    const-string v7, "floating_phonepad_symbol_lo"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_3

    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "floating_phonepad_symbol_ko"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_3

    :cond_b
    const-string v7, "floating_phonepad_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v6

    goto/16 :goto_3

    :catch_2
    move-exception v0

    const v6, 0x7f0501f9

    goto/16 :goto_3

    :cond_c
    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_d
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getHWRKeyboardXmlId()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f050386

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f050002

    goto :goto_0
.end method

.method private getHWRSymbolKeyboardXmlId(I)I
    .locals 5
    .param p1    # I

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "qwerty_number_symbols_he_arabic"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    :goto_0
    move v2, v1

    :goto_1
    return v2

    :cond_0
    const-string v2, "qwerty_number_symbols_he"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v2, 0x74680000

    if-ne p1, v2, :cond_2

    const-string v2, "qwerty_number_symbols_th"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v2, 0x61720000

    if-ne p1, v2, :cond_3

    const-string v2, "qwerty_number_symbols_arabic"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    const/high16 v2, 0x66610000

    if-ne p1, v2, :cond_4

    const-string v2, "qwerty_number_symbols_farsi"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_4
    const/high16 v2, 0x75720000

    if-ne p1, v2, :cond_5

    const-string v2, "qwerty_number_symbols_urdu"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "qwerty_number_symbols_ko"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v2, :cond_7

    const v1, 0x7f05027f

    goto :goto_0

    :cond_7
    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v2, :cond_8

    const v1, 0x7f050280

    goto :goto_0

    :cond_8
    const-string v2, "qwerty_number_symbols"

    invoke-static {v2}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getHwrKeyboardModeId()I
    .locals 14

    const v10, 0x7f0800f2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v11, 0x7f0800f3

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v12, "da_mode"

    invoke-interface {v7, v12, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v13, "SETTINGS_DEFAULT_VOICE_INPUT"

    invoke-interface {v12, v13, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    move v6, v8

    :goto_0
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v12, 0x8

    if-ne v1, v12, :cond_1

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v12

    if-nez v12, :cond_1

    move v4, v8

    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    iget-boolean v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v12, :cond_6

    :try_start_0
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    if-le v9, v8, :cond_3

    if-nez v2, :cond_3

    if-eqz v6, :cond_2

    move v8, v10

    :goto_2
    return v8

    :cond_0
    move v6, v9

    goto :goto_0

    :cond_1
    move v4, v9

    goto :goto_1

    :cond_2
    const-string v9, "mode_normal_voice_off"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    move v8, v11

    goto :goto_2

    :cond_4
    const-string v9, "mode_single_language_voice_off"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v9, "SamsungIME"

    const-string v12, "getTextKeyboardModeId() : return value not found exception!"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    if-le v9, v8, :cond_5

    if-nez v2, :cond_5

    move v8, v10

    goto :goto_2

    :cond_5
    move v8, v11

    goto :goto_2

    :cond_6
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SYMBOLS_PAGE"

    invoke-interface {v8, v10, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v8

    goto :goto_2

    :cond_7
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    if-le v9, v8, :cond_b

    if-nez v2, :cond_b

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v10

    goto :goto_2

    :cond_8
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v8, :cond_a

    if-eqz v1, :cond_9

    if-eqz v4, :cond_a

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    :try_start_1
    const-string v8, "mode_comma"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    goto :goto_2

    :catch_1
    move-exception v0

    move v8, v11

    goto :goto_2

    :cond_a
    move v8, v11

    goto :goto_2

    :cond_b
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v8, :cond_d

    if-eqz v1, :cond_c

    if-eqz v4, :cond_d

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v8

    if-nez v8, :cond_d

    :cond_c
    :try_start_2
    const-string v8, "mode_comma"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move v8, v11

    goto/16 :goto_2

    :cond_d
    move v8, v11

    goto/16 :goto_2
.end method

.method private getKnobTextKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e4742

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKnobKeyboardXmlId(I)I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0
.end method

.method private getNumberKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 11

    const-string v8, "SamsungIME"

    const-string v9, "getNumberKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonePadNumberKeyboardXmlId()I

    move-result v7

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "INPUT_LANGUAGE"

    const v10, 0x656e4742

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    if-nez v7, :cond_0

    if-nez v5, :cond_1e

    const-string v8, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const v7, 0x7f050286

    :goto_0
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v6

    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v8, v7, :cond_1

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v8, v6, :cond_1

    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    if-eq v8, v9, :cond_35

    :cond_1
    if-eqz v6, :cond_34

    :try_start_0
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7, v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v8, v7, v6}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_3
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v8

    :cond_2
    const v7, 0x7f050285

    goto :goto_0

    :cond_3
    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_4

    const v7, 0x7f05027d

    goto :goto_0

    :cond_4
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_5

    const v7, 0x7f050283

    goto :goto_0

    :cond_5
    const/high16 v8, 0x75720000

    if-ne v4, v8, :cond_6

    const v7, 0x7f050296

    goto :goto_0

    :cond_6
    const/high16 v8, 0x6b6d0000

    if-ne v4, v8, :cond_7

    const v7, 0x7f050289

    goto :goto_0

    :cond_7
    const/high16 v8, 0x6c6f0000

    if-ne v4, v8, :cond_8

    const v7, 0x7f05028c

    goto :goto_0

    :cond_8
    const v8, 0x7a314d4d

    if-ne v4, v8, :cond_9

    const v7, 0x7f050297

    goto :goto_0

    :cond_9
    const/high16 v8, 0x74680000

    if-ne v4, v8, :cond_a

    const v7, 0x7f050295

    goto :goto_0

    :cond_a
    const/high16 v8, 0x68690000

    if-ne v4, v8, :cond_b

    const v7, 0x7f050288

    goto :goto_0

    :cond_b
    const/high16 v8, 0x626e0000

    if-ne v4, v8, :cond_c

    const v7, 0x7f050281

    goto/16 :goto_0

    :cond_c
    const/high16 v8, 0x67750000

    if-ne v4, v8, :cond_d

    const v7, 0x7f050284

    goto/16 :goto_0

    :cond_d
    const/high16 v8, 0x6b6e0000

    if-ne v4, v8, :cond_e

    const v7, 0x7f05028a

    goto/16 :goto_0

    :cond_e
    const/high16 v8, 0x6d6c0000

    if-ne v4, v8, :cond_f

    const v7, 0x7f05028d

    goto/16 :goto_0

    :cond_f
    const/high16 v8, 0x6d720000

    if-ne v4, v8, :cond_10

    const v7, 0x7f05028e

    goto/16 :goto_0

    :cond_10
    const/high16 v8, 0x70610000

    if-ne v4, v8, :cond_11

    const v7, 0x7f050291

    goto/16 :goto_0

    :cond_11
    const/high16 v8, 0x73690000

    if-ne v4, v8, :cond_12

    const v7, 0x7f050292

    goto/16 :goto_0

    :cond_12
    const/high16 v8, 0x74650000

    if-ne v4, v8, :cond_13

    const v7, 0x7f050294

    goto/16 :goto_0

    :cond_13
    const/high16 v8, 0x74610000

    if-ne v4, v8, :cond_14

    const v7, 0x7f050293

    goto/16 :goto_0

    :cond_14
    const/high16 v8, 0x61730000

    if-ne v4, v8, :cond_15

    const v7, 0x7f05027e

    goto/16 :goto_0

    :cond_15
    const/high16 v8, 0x6e650000

    if-ne v4, v8, :cond_16

    const v7, 0x7f05028f

    goto/16 :goto_0

    :cond_16
    const/high16 v8, 0x6f720000

    if-ne v4, v8, :cond_17

    const v7, 0x7f050290

    goto/16 :goto_0

    :cond_17
    const/high16 v8, 0x65730000

    if-eq v4, v8, :cond_18

    const v8, 0x65734553

    if-eq v4, v8, :cond_18

    const v8, 0x65735553

    if-ne v4, v8, :cond_19

    :cond_18
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-nez v8, :cond_19

    :try_start_1
    const-string v8, "qwerty_number_symbols_es"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const v7, 0x7f05027b

    goto/16 :goto_0

    :cond_19
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v8, :cond_1a

    const v7, 0x7f05027f

    goto/16 :goto_0

    :cond_1a
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v8, :cond_1b

    const v7, 0x7f050280

    goto/16 :goto_0

    :cond_1b
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v8, :cond_1c

    :try_start_2
    const-string v8, "qwerty_number_symbols_add_smiley"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const v7, 0x7f05027b

    goto/16 :goto_0

    :cond_1c
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v8

    if-eqz v8, :cond_1d

    const v7, 0x7f05028b

    goto/16 :goto_0

    :cond_1d
    const v7, 0x7f05027b

    goto/16 :goto_0

    :cond_1e
    const/4 v8, 0x1

    if-ne v5, v8, :cond_26

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v8

    if-eqz v8, :cond_21

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_21

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_1f

    const v7, 0x7f0501d1

    :goto_4
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v6

    goto/16 :goto_1

    :cond_1f
    const/4 v8, 0x2

    if-ne v3, v8, :cond_20

    const v7, 0x7f0501d3

    goto :goto_4

    :cond_20
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const v7, 0x7f0501d1

    goto :goto_4

    :pswitch_0
    const v7, 0x7f0501d1

    goto :goto_4

    :pswitch_1
    const v7, 0x7f0501d3

    goto :goto_4

    :cond_21
    const/high16 v8, 0x6b6d0000

    if-ne v4, v8, :cond_22

    :try_start_3
    const-string v8, "phonepad_number_km"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_22
    const/high16 v8, 0x6c6f0000

    if-ne v4, v8, :cond_23

    const-string v8, "phonepad_number_lo"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_23
    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_24

    const-string v8, "phonepad_number_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_24
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_25

    const-string v8, "phonepad_number_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v7

    goto :goto_4

    :cond_25
    const v7, 0x7f0501e2

    goto :goto_4

    :catch_2
    move-exception v0

    const v7, 0x7f0501e2

    goto :goto_4

    :cond_26
    const/4 v8, 0x2

    if-ne v5, v8, :cond_27

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v7

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v6

    goto/16 :goto_1

    :cond_27
    const/4 v8, 0x4

    if-ne v5, v8, :cond_28

    const v7, 0x7f0500e1

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v6

    goto/16 :goto_1

    :cond_28
    const-string v8, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v8

    if-eqz v8, :cond_29

    const v7, 0x7f050286

    :goto_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v6

    goto/16 :goto_1

    :cond_29
    const v7, 0x7f050285

    goto :goto_5

    :cond_2a
    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_2b

    const v7, 0x7f05027d

    goto :goto_5

    :cond_2b
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_2c

    const v7, 0x7f050283

    goto :goto_5

    :cond_2c
    const/high16 v8, 0x75720000

    if-ne v4, v8, :cond_2d

    const v7, 0x7f050296

    goto :goto_5

    :cond_2d
    const/high16 v8, 0x6b6d0000

    if-ne v4, v8, :cond_2e

    const v7, 0x7f050289

    goto :goto_5

    :cond_2e
    const/high16 v8, 0x6c6f0000

    if-ne v4, v8, :cond_2f

    const v7, 0x7f05028c

    goto :goto_5

    :cond_2f
    const v8, 0x7a314d4d

    if-ne v4, v8, :cond_30

    const v7, 0x7f050297

    goto :goto_5

    :cond_30
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v8, :cond_31

    const v7, 0x7f05027f

    goto :goto_5

    :cond_31
    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v8, :cond_32

    const v7, 0x7f050280

    goto :goto_5

    :cond_32
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v8

    if-eqz v8, :cond_33

    const v7, 0x7f05028b

    goto :goto_5

    :cond_33
    const v7, 0x7f05027b

    goto :goto_5

    :catch_3
    move-exception v0

    const-string v8, "SamsungIME"

    const-string v9, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_34
    :try_start_4
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string v8, "SamsungIME"

    const-string v9, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_35
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNumberKeyboardModeId()I
    .locals 12

    const v8, 0x7f0800f4

    const/4 v4, 0x0

    const v10, 0x7f0800f2

    const/4 v7, 0x1

    const v9, 0x7f0800f3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v11, "da_mode"

    invoke-interface {v6, v11, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v11, 0x8

    if-ne v1, v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v11

    if-nez v11, :cond_0

    move v4, v7

    :cond_0
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v11, :cond_d

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v11

    array-length v11, v11

    if-le v11, v7, :cond_8

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v7, :cond_5

    if-eqz v3, :cond_1

    const v7, 0x7f0800f5

    :goto_0
    return v7

    :cond_1
    if-eqz v5, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v7, :cond_4

    if-eqz v1, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    :try_start_0
    const-string v7, "mode_comma"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    goto :goto_0

    :catch_0
    move-exception v0

    move v7, v9

    goto :goto_0

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    const v7, 0x7f0800f7

    goto :goto_0

    :cond_6
    if-eqz v5, :cond_7

    const v7, 0x7f0800f6

    goto :goto_0

    :cond_7
    move v7, v10

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    const v7, 0x7f0800f5

    goto :goto_0

    :cond_9
    if-eqz v5, :cond_a

    move v7, v8

    goto :goto_0

    :cond_a
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v7, :cond_c

    if-eqz v1, :cond_b

    if-eqz v4, :cond_c

    :cond_b
    :try_start_1
    const-string v7, "mode_comma"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_0

    :catch_1
    move-exception v0

    move v7, v9

    goto :goto_0

    :cond_c
    move v7, v9

    goto :goto_0

    :cond_d
    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v8

    if-ne v8, v7, :cond_e

    iget-boolean v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-nez v7, :cond_e

    :try_start_2
    const-string v7, "mode_ip_address"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    goto :goto_0

    :catch_2
    move-exception v0

    move v7, v10

    goto :goto_0

    :cond_e
    move v7, v10

    goto :goto_0

    :cond_f
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v8

    array-length v8, v8

    if-le v8, v7, :cond_10

    if-nez v2, :cond_10

    move v7, v10

    goto :goto_0

    :cond_10
    move v7, v9

    goto :goto_0
.end method

.method private getNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 11
    .param p1    # Z

    const-string v8, "SamsungIME"

    const-string v9, "getNumberPopupKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v5

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "INPUT_LANGUAGE"

    const v10, 0x656e4742

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    const/16 v8, 0xa

    if-ne v5, v8, :cond_4

    const/4 v8, 0x7

    if-ne v3, v8, :cond_3

    if-eqz p1, :cond_2

    :try_start_0
    const-string v8, "split_month_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v8, v7, :cond_1

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v8, v4, :cond_1

    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    if-eq v8, v9, :cond_54

    :cond_1
    if-eqz v4, :cond_53

    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v8, v7, v4}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_3
    return-object v8

    :catch_0
    move-exception v0

    const v7, 0x7f0501dd

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v8, "split_month_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_0

    :catch_1
    move-exception v0

    const v7, 0x7f0501dd

    goto :goto_0

    :cond_3
    const/16 v8, 0x8

    if-ne v3, v8, :cond_0

    :try_start_2
    const-string v8, "floating_month"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    goto :goto_0

    :catch_2
    move-exception v0

    const v7, 0x7f0501dd

    goto :goto_0

    :cond_4
    const/16 v8, 0x9

    if-eq v5, v8, :cond_5

    const/16 v8, 0xe

    if-ne v5, v8, :cond_8

    :cond_5
    const/4 v8, 0x7

    if-ne v3, v8, :cond_7

    if-eqz p1, :cond_6

    :try_start_3
    const-string v8, "split_yeardatetime_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    goto :goto_0

    :catch_3
    move-exception v0

    const v7, 0x7f0501ec

    goto :goto_0

    :cond_6
    :try_start_4
    const-string v8, "split_yeardatetime_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    goto :goto_0

    :catch_4
    move-exception v0

    const v7, 0x7f0501ec

    goto :goto_0

    :cond_7
    const/16 v8, 0x8

    if-ne v3, v8, :cond_0

    :try_start_5
    const-string v8, "floating_yeardatetime"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    goto :goto_0

    :catch_5
    move-exception v0

    const v7, 0x7f05020e

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x2

    if-eq v3, v8, :cond_b

    const/4 v8, 0x7

    if-ne v3, v8, :cond_a

    if-eqz p1, :cond_9

    :try_start_6
    const-string v8, "split_phone_number_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v7

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const v7, 0x7f0501ec

    goto/16 :goto_0

    :cond_9
    :try_start_7
    const-string v8, "split_phone_number_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const v7, 0x7f0501ec

    goto/16 :goto_0

    :cond_a
    const/16 v8, 0x8

    if-ne v3, v8, :cond_0

    :try_start_8
    const-string v8, "floating_phone_number"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v7

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const v7, 0x7f0501ec

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isTabletPhonepadNumberInputMode()Z

    move-result v8

    if-eqz v8, :cond_23

    const/4 v8, 0x1

    if-ne v5, v8, :cond_e

    const/4 v8, 0x2

    if-eq v3, v8, :cond_e

    const/4 v8, 0x7

    if-ne v3, v8, :cond_d

    if-eqz p1, :cond_c

    :try_start_9
    const-string v8, "split_number_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_c
    const-string v8, "split_number_decimal_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_d
    const-string v8, "floating_number_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v7

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const v7, 0x7f0501e4

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_11

    const/4 v8, 0x2

    if-eq v3, v8, :cond_11

    const/4 v8, 0x7

    if-ne v3, v8, :cond_10

    if-eqz p1, :cond_f

    :try_start_a
    const-string v8, "split_number_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_f
    const-string v8, "split_number_decimal_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_10
    const-string v8, "floating_number_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v7

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const v7, 0x7f0501e4

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x2

    if-eq v3, v8, :cond_14

    const/4 v8, 0x7

    if-ne v3, v8, :cond_13

    if-eqz p1, :cond_12

    :try_start_b
    const-string v8, "split_number_only_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_12
    const-string v8, "split_number_only_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_13
    const-string v8, "floating_number_only"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result v7

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const v7, 0x7f0501e8

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_17

    const/4 v8, 0x2

    if-eq v3, v8, :cond_17

    const/4 v8, 0x7

    if-ne v3, v8, :cond_16

    if-eqz p1, :cond_15

    :try_start_c
    const-string v8, "split_number_signed_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_15
    const-string v8, "split_number_signed_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_16
    const-string v8, "floating_number_signed"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result v7

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const v7, 0x7f0501ea

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1a

    const/4 v8, 0x7

    if-ne v3, v8, :cond_19

    if-eqz p1, :cond_18

    :try_start_d
    const-string v8, "split_number_signed_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_18
    const-string v8, "split_number_signed_decimal_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_19
    const-string v8, "floating_number_signed_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result v7

    goto/16 :goto_0

    :catch_d
    move-exception v0

    const v7, 0x7f0501eb

    goto/16 :goto_0

    :cond_1a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_1d

    const/4 v8, 0x2

    if-eq v3, v8, :cond_1d

    const/4 v8, 0x7

    if-ne v3, v8, :cond_1c

    if-eqz p1, :cond_1b

    :try_start_e
    const-string v8, "split_time_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_1b
    const-string v8, "split_time_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_1c
    const-string v8, "floating_time"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result v7

    goto/16 :goto_0

    :catch_e
    move-exception v0

    const v7, 0x7f050206

    goto/16 :goto_0

    :cond_1d
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v8, 0x2

    if-eq v3, v8, :cond_20

    const/4 v8, 0x7

    if-ne v3, v8, :cond_1f

    if-eqz p1, :cond_1e

    :try_start_f
    const-string v8, "split_date_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_1e
    const-string v8, "split_date_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_1f
    const-string v8, "floating_date"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result v7

    goto/16 :goto_0

    :catch_f
    move-exception v0

    const v7, 0x7f0501b5

    goto/16 :goto_0

    :cond_20
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    if-eq v3, v8, :cond_0

    const/4 v8, 0x7

    if-ne v3, v8, :cond_22

    if-eqz p1, :cond_21

    :try_start_10
    const-string v8, "split_datetime_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_21
    const-string v8, "split_datetime_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_0

    :cond_22
    const-string v8, "floating_datetime"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result v7

    goto/16 :goto_0

    :catch_10
    move-exception v0

    const v7, 0x7f0501b6

    goto/16 :goto_0

    :cond_23
    const/4 v8, 0x7

    if-ne v3, v8, :cond_44

    if-eqz p1, :cond_2c

    const/high16 v8, 0x61720000

    if-ne v2, v8, :cond_25

    :try_start_11
    const-string v8, "split_number_symbols_left_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result v7

    :cond_24
    :goto_4
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v4

    goto/16 :goto_0

    :cond_25
    const/high16 v8, 0x66610000

    if-ne v2, v8, :cond_26

    :try_start_12
    const-string v8, "split_number_symbols_left_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_26
    const/high16 v8, 0x75720000

    if-ne v2, v8, :cond_27

    const-string v8, "split_number_symbols_left_urdu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_27
    const/high16 v8, 0x6b6d0000

    if-ne v2, v8, :cond_28

    const-string v8, "split_number_symbols_left_km"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_28
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v8

    if-eqz v8, :cond_29

    const-string v8, "split_number_symbols_left_lo"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_29
    const v8, 0x7a314d4d

    if-ne v2, v8, :cond_2a

    const-string v8, "split_number_symbols_left_zw"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_2a
    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v8, :cond_2b

    const-string v8, "split_number_symbols_left_ko"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_4

    :cond_2b
    const-string v8, "split_number_symbols_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v7

    goto :goto_4

    :catch_11
    move-exception v0

    const v7, 0x7f05027b

    goto :goto_4

    :cond_2c
    const/high16 v8, 0x61720000

    if-ne v2, v8, :cond_2d

    :try_start_13
    const-string v8, "split_number_symbols_left_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v7

    :goto_5
    const v8, 0x7f05027b

    if-ne v7, v8, :cond_24

    const/4 v6, 0x0

    :try_start_14
    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v8, :cond_43

    const-string v8, "split_number_symbols_right_ko"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result v6

    :goto_6
    move v7, v6

    goto :goto_4

    :cond_2d
    const/high16 v8, 0x66610000

    if-ne v2, v8, :cond_2e

    :try_start_15
    const-string v8, "split_number_symbols_left_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_2e
    const/high16 v8, 0x75720000

    if-ne v2, v8, :cond_2f

    const-string v8, "split_number_symbols_left_urdu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_2f
    const/high16 v8, 0x6b6d0000

    if-ne v2, v8, :cond_30

    const-string v8, "split_number_symbols_right_km"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_30
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v8

    if-eqz v8, :cond_31

    const-string v8, "split_number_symbols_right_lo"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_31
    const v8, 0x7a314d4d

    if-ne v2, v8, :cond_32

    const-string v8, "split_number_symbols_right_zw"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_32
    const/high16 v8, 0x68690000

    if-ne v2, v8, :cond_33

    const-string v8, "split_number_symbols_right_hi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_33
    const/high16 v8, 0x626e0000

    if-ne v2, v8, :cond_34

    const-string v8, "split_number_symbols_right_bn"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_34
    const/high16 v8, 0x67750000

    if-ne v2, v8, :cond_35

    const-string v8, "split_number_symbols_right_gu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_35
    const/high16 v8, 0x74610000

    if-ne v2, v8, :cond_36

    const-string v8, "split_number_symbols_right_ta"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_36
    const/high16 v8, 0x6b6e0000

    if-ne v2, v8, :cond_37

    const-string v8, "split_number_symbols_right_kn"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_37
    const/high16 v8, 0x74650000

    if-ne v2, v8, :cond_38

    const-string v8, "split_number_symbols_right_te"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_38
    const/high16 v8, 0x6d6c0000

    if-ne v2, v8, :cond_39

    const-string v8, "split_number_symbols_right_ml"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_39
    const/high16 v8, 0x6d720000

    if-ne v2, v8, :cond_3a

    const-string v8, "split_number_symbols_right_mr"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_3a
    const/high16 v8, 0x70610000

    if-ne v2, v8, :cond_3b

    const-string v8, "split_number_symbols_right_pa"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_3b
    const/high16 v8, 0x73690000

    if-ne v2, v8, :cond_3c

    const-string v8, "split_number_symbols_right_si"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_3c
    const/high16 v8, 0x61730000

    if-ne v2, v8, :cond_3d

    const-string v8, "split_number_symbols_right_as"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_3d
    const/high16 v8, 0x6e650000

    if-ne v2, v8, :cond_3e

    const-string v8, "split_number_symbols_right_ne"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_3e
    const/high16 v8, 0x6f720000

    if-ne v2, v8, :cond_3f

    const-string v8, "split_number_symbols_right_or"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_3f
    const/high16 v8, 0x65730000

    if-eq v2, v8, :cond_40

    const v8, 0x65734553

    if-eq v2, v8, :cond_40

    const v8, 0x65735553

    if-ne v2, v8, :cond_41

    :cond_40
    const-string v8, "split_number_symbols_right_es"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_41
    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v8, :cond_42

    const-string v8, "split_number_symbols_right_ko"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_5

    :cond_42
    const-string v8, "split_number_symbols_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_12

    move-result v7

    goto/16 :goto_5

    :catch_12
    move-exception v0

    const v7, 0x7f05027b

    goto/16 :goto_5

    :cond_43
    :try_start_16
    const-string v8, "split_number_symbols_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_14

    move-result v6

    goto/16 :goto_6

    :cond_44
    const/16 v8, 0x8

    if-ne v3, v8, :cond_51

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingHWRKeyboardXmlId()I

    move-result v7

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v4

    goto/16 :goto_0

    :cond_45
    const/4 v8, 0x1

    if-ne v5, v8, :cond_46

    :try_start_17
    const-string v8, "floating_phonepad_number_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_13

    move-result v7

    :goto_7
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v4

    goto/16 :goto_0

    :cond_46
    :try_start_18
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_47

    const-string v8, "floating_phonepad_number_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_7

    :cond_47
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v8

    if-eqz v8, :cond_48

    const-string v8, "floating_phonepad_number_password"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_7

    :cond_48
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_49

    const-string v8, "floating_phonepad_number_signed"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_7

    :cond_49
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v8

    if-nez v8, :cond_4a

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v8

    if-eqz v8, :cond_4b

    :cond_4a
    const-string v8, "floating_phonepad_number_signed_decimal"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_7

    :cond_4b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_4c

    const-string v8, "floating_phonepad_time"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_7

    :cond_4c
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v8

    if-eqz v8, :cond_4d

    const-string v8, "floating_phonepad_date"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_7

    :cond_4d
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_4e

    const-string v8, "floating_phonepad_datetime"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_7

    :cond_4e
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v8

    if-eqz v8, :cond_4f

    const-string v8, "floating_kr_cji_number"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_7

    :cond_4f
    iget v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v8, v8, 0xff0

    const/16 v9, 0x70

    if-ne v8, v9, :cond_50

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v8

    goto/16 :goto_3

    :cond_50
    const-string v8, "floating_phonepad_number"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_13

    move-result v7

    goto/16 :goto_7

    :catch_13
    move-exception v0

    const v7, 0x7f0501e2

    goto/16 :goto_7

    :cond_51
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v8

    if-eqz v8, :cond_52

    const v7, 0x7f05028b

    :goto_8
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v4

    goto/16 :goto_0

    :cond_52
    const v7, 0x7f05027b

    goto :goto_8

    :cond_53
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_54
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    :catch_14
    move-exception v8

    goto/16 :goto_4
.end method

.method private getOneHandNumberKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 13

    const/high16 v12, 0x6c6f0000

    const/high16 v11, 0x6b6d0000

    const/4 v10, 0x0

    const/high16 v9, 0x66610000

    const/high16 v8, 0x61720000

    const-string v5, "SamsungIME"

    const-string v6, "getNumberNoHwrKeyboard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonePadNumberKeyboardXmlId()I

    move-result v4

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    if-nez v4, :cond_1

    if-nez v2, :cond_d

    const-string v5, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :try_start_0
    const-string v5, "one_hand_qwerty_number_symbols_he_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SYMBOLS_PAGE"

    invoke-interface {v5, v6, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v5, v3, :cond_2

    iget-boolean v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    if-eq v5, v6, :cond_1c

    :cond_2
    if-eqz v3, :cond_1b

    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v5, v4, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_3
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v5

    :catch_0
    move-exception v0

    const v4, 0x7f050286

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v5, "one_hand_qwerty_number_symbols_he"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    :catch_1
    move-exception v0

    const v4, 0x7f050285

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-ne v1, v8, :cond_5

    :try_start_2
    const-string v5, "one_hand_qwerty_number_symbols_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_5
    if-ne v1, v9, :cond_6

    const-string v5, "one_hand_qwerty_number_symbols_farsi"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_6
    const/high16 v5, 0x75720000

    if-ne v1, v5, :cond_0

    const-string v5, "one_hand_qwerty_number_symbols_urdu"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    goto :goto_0

    :catch_2
    move-exception v0

    const v4, 0x7f05027d

    goto :goto_0

    :cond_7
    if-ne v1, v11, :cond_8

    :try_start_3
    const-string v5, "one_hand_qwerty_number_symbols_km"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    goto :goto_0

    :catch_3
    move-exception v0

    const v4, 0x7f050289

    goto :goto_0

    :cond_8
    if-ne v1, v12, :cond_9

    :try_start_4
    const-string v5, "one_hand_qwerty_number_symbols_lo"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const v4, 0x7f05028c

    goto/16 :goto_0

    :cond_9
    const v5, 0x7a314d4d

    if-ne v1, v5, :cond_a

    :try_start_5
    const-string v5, "one_hand_qwerty_number_symbols_zw"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const v4, 0x7f050297

    goto/16 :goto_0

    :cond_a
    iget-boolean v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v5, :cond_b

    :try_start_6
    const-string v5, "one_hand_qwerty_number_symbols_add_smiley"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v4

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const v4, 0x7f05027b

    goto/16 :goto_0

    :cond_b
    :try_start_7
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "one_hand_qwerty_number_symbols_ko"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_c
    const-string v5, "one_hand_qwerty_number_symbols"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v4

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const v4, 0x7f05027b

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x1

    if-ne v2, v5, :cond_12

    if-ne v1, v11, :cond_e

    :try_start_8
    const-string v5, "one_hand_phonepad_number_km"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v4

    :goto_4
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboardModeId()I

    move-result v3

    goto/16 :goto_1

    :cond_e
    if-ne v1, v12, :cond_f

    :try_start_9
    const-string v5, "one_hand_phonepad_number_lo"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    :cond_f
    if-ne v1, v8, :cond_10

    const-string v5, "one_hand_phonepad_number_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    :cond_10
    if-ne v1, v9, :cond_11

    const-string v5, "one_hand_phonepad_number_farsi"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_4

    :cond_11
    const-string v5, "one_hand_phonepad_number"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v4

    goto :goto_4

    :catch_8
    move-exception v0

    const v4, 0x7f0501e2

    goto :goto_4

    :cond_12
    const-string v5, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_14

    :try_start_a
    const-string v5, "one_hand_qwerty_number_symbols_he_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v4

    :goto_5
    const v4, 0x7f050286

    :cond_13
    :goto_6
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SYMBOLS_PAGE"

    invoke-interface {v5, v6, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v3

    goto/16 :goto_1

    :catch_9
    move-exception v0

    const v4, 0x7f050286

    goto :goto_5

    :cond_14
    :try_start_b
    const-string v5, "one_hand_qwerty_number_symbols_he"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v4

    goto :goto_6

    :catch_a
    move-exception v0

    const v4, 0x7f050285

    goto :goto_6

    :cond_15
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_18

    if-ne v1, v8, :cond_16

    :try_start_c
    const-string v5, "one_hand_qwerty_number_symbols_arabic"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    :cond_16
    if-ne v1, v9, :cond_17

    const-string v5, "one_hand_qwerty_number_symbols_farsi"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    :cond_17
    const/high16 v5, 0x75720000

    if-ne v1, v5, :cond_13

    const-string v5, "one_hand_qwerty_number_symbols_urdu"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v4

    goto :goto_6

    :catch_b
    move-exception v0

    const v4, 0x7f05027d

    goto :goto_6

    :cond_18
    iget-boolean v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v5, :cond_19

    :try_start_d
    const-string v5, "one_hand_qwerty_number_symbols_add_smiley"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v4

    goto :goto_6

    :catch_c
    move-exception v0

    const v4, 0x7f05027b

    goto :goto_6

    :cond_19
    :try_start_e
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v5

    if-eqz v5, :cond_1a

    const-string v5, "one_hand_qwerty_number_symbols_ko"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto :goto_6

    :cond_1a
    const-string v5, "one_hand_qwerty_number_symbols"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v4

    goto :goto_6

    :catch_d
    move-exception v0

    const v4, 0x7f05027b

    goto :goto_6

    :cond_1b
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    :cond_1c
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_3
.end method

.method private getOneHandPhonepadXmlId(I)I
    .locals 20
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v5, :cond_0

    move/from16 p1, v2

    :cond_0
    const/high16 v17, -0x10000

    and-int v12, p1, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v14

    const v16, 0x7f0501b9

    sparse-switch v12, :sswitch_data_0

    :try_start_0
    const-string v17, "one_hand_phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4f

    move-result v16

    :goto_0
    return v16

    :sswitch_0
    :try_start_1
    const-string v17, "one_hand_phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    goto :goto_0

    :catch_0
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_1
    :try_start_2
    const-string v17, "one_hand_phonepad_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    goto :goto_0

    :catch_1
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_2
    :try_start_3
    const-string v17, "one_hand_phonepad_de"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v16

    goto :goto_0

    :catch_2
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_3
    :try_start_4
    const-string v17, "one_hand_phonepad_es"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v16

    goto :goto_0

    :catch_3
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_4
    :try_start_5
    const-string v17, "one_hand_phonepad_it"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v16

    goto :goto_0

    :catch_4
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_5
    :try_start_6
    const-string v17, "one_hand_phonepad_cs"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v16

    goto :goto_0

    :catch_5
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_6
    :try_start_7
    const-string v17, "one_hand_phonepad_da"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v16

    goto :goto_0

    :catch_6
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_7
    :try_start_8
    const-string v17, "one_hand_phonepad_et"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v16

    goto :goto_0

    :catch_7
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_8
    :try_start_9
    const-string v17, "one_hand_phonepad_hr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v16

    goto :goto_0

    :catch_8
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_9
    :try_start_a
    const-string v17, "one_hand_phonepad_lv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v16

    goto :goto_0

    :catch_9
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_a
    :try_start_b
    const-string v17, "one_hand_phonepad_lt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v16

    goto :goto_0

    :catch_a
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_b
    :try_start_c
    const-string v17, "one_hand_phonepad_hu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v16

    goto/16 :goto_0

    :catch_b
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_c
    :try_start_d
    const-string v17, "one_hand_phonepad_nb"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v16

    goto/16 :goto_0

    :catch_c
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_d
    :try_start_e
    const-string v17, "one_hand_phonepad_nl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v16

    goto/16 :goto_0

    :catch_d
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_e
    :try_start_f
    const-string v17, "one_hand_phonepad_pl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v16

    goto/16 :goto_0

    :catch_e
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_f
    :try_start_10
    const-string v17, "one_hand_phonepad_pt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v16

    goto/16 :goto_0

    :catch_f
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_10
    :try_start_11
    const-string v17, "one_hand_phonepad_ro"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v16

    goto/16 :goto_0

    :catch_10
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_11
    :try_start_12
    const-string v17, "one_hand_phonepad_fi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v16

    goto/16 :goto_0

    :catch_11
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_12
    :try_start_13
    const-string v17, "one_hand_phonepad_sr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v16

    goto/16 :goto_0

    :catch_12
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_13
    :try_start_14
    const-string v17, "one_hand_phonepad_sv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v16

    goto/16 :goto_0

    :catch_13
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_14
    :try_start_15
    const-string v17, "one_hand_phonepad_sk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    move-result v16

    goto/16 :goto_0

    :catch_14
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_15
    :try_start_16
    const-string v17, "one_hand_phonepad_sl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_15

    move-result v16

    goto/16 :goto_0

    :catch_15
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_16
    :try_start_17
    const-string v17, "one_hand_phonepad_tr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v16

    goto/16 :goto_0

    :catch_16
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_17
    :try_start_18
    const-string v17, "one_hand_phonepad_ca"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v16

    goto/16 :goto_0

    :catch_17
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_18
    :try_start_19
    const-string v17, "one_hand_phonepad_gl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v16

    goto/16 :goto_0

    :catch_18
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_19
    :try_start_1a
    const-string v17, "one_hand_phonepad_eu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v16

    goto/16 :goto_0

    :catch_19
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1a
    :try_start_1b
    const-string v17, "one_hand_phonepad_is"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v16

    goto/16 :goto_0

    :catch_1a
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1b
    :try_start_1c
    const-string v17, "one_hand_phonepad_sq"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v16

    goto/16 :goto_0

    :catch_1b
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1c
    :try_start_1d
    const-string v17, "one_hand_phonepad_az"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v16

    goto/16 :goto_0

    :catch_1c
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1d
    :try_start_1e
    const-string v17, "one_hand_phonepad_id"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v16

    goto/16 :goto_0

    :catch_1d
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1e
    :try_start_1f
    const-string v17, "one_hand_phonepad_ms"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v16

    goto/16 :goto_0

    :catch_1e
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    :try_start_20
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v16

    goto/16 :goto_0

    :catch_1f
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    :try_start_21
    const-string v17, "one_hand_phonepad_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result v16

    goto/16 :goto_0

    :catch_20
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_2
    packed-switch v4, :pswitch_data_0

    :try_start_22
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_23

    move-result v16

    goto/16 :goto_0

    :pswitch_0
    :try_start_23
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_21

    move-result v16

    goto/16 :goto_0

    :catch_21
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :pswitch_1
    :try_start_24
    const-string v17, "one_hand_phonepad_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_22

    move-result v16

    goto/16 :goto_0

    :catch_22
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :catch_23
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_3
    packed-switch v4, :pswitch_data_1

    :try_start_25
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_28

    move-result v16

    goto/16 :goto_0

    :pswitch_2
    :try_start_26
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_24

    move-result v16

    goto/16 :goto_0

    :catch_24
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :pswitch_3
    :try_start_27
    const-string v17, "one_hand_phonepad_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_25

    move-result v16

    goto/16 :goto_0

    :catch_25
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :pswitch_4
    :try_start_28
    const-string v17, "one_hand_phonepad_kr_nara"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_26

    move-result v16

    goto/16 :goto_0

    :catch_26
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :pswitch_5
    :try_start_29
    const-string v17, "one_hand_phonepad_kr_sky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_27

    move-result v16

    goto/16 :goto_0

    :catch_27
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :catch_28
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    packed-switch v11, :pswitch_data_2

    :try_start_2a
    const-string v17, "one_hand_phonepad_kr_cji"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_2a

    move-result v16

    goto/16 :goto_0

    :pswitch_6
    :try_start_2b
    const-string v17, "one_hand_phonepad_kr_cji_turbo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_29

    move-result v16

    goto/16 :goto_0

    :catch_29
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :catch_2a
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_20
    :try_start_2c
    const-string v17, "one_hand_phonepad_kk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v16

    goto/16 :goto_0

    :catch_2b
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_21
    :try_start_2d
    const-string v17, "one_hand_phonepad_ru"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v16

    goto/16 :goto_0

    :catch_2c
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_22
    :try_start_2e
    const-string v17, "one_hand_phonepad_bg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v16

    goto/16 :goto_0

    :catch_2d
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_23
    :try_start_2f
    const-string v17, "one_hand_phonepad_uk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v16

    goto/16 :goto_0

    :catch_2e
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_24
    :try_start_30
    const-string v17, "one_hand_phonepad_el"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v16

    goto/16 :goto_0

    :catch_2f
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_25
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    :try_start_31
    const-string v17, "one_hand_phonepad_zh_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v16

    goto/16 :goto_0

    :catch_30
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_5
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    if-eqz v14, :cond_6

    :try_start_32
    const-string v17, "one_hand_phonepad_zt_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v16

    goto/16 :goto_0

    :catch_31
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLengthOfSpellText()I

    move-result v17

    if-lez v17, :cond_7

    :try_start_33
    const-string v17, "one_hand_phonepad_zt_zhuyin_spell"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v16

    goto/16 :goto_0

    :catch_32
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_7
    :try_start_34
    const-string v17, "one_hand_phonepad_zt_zhuyin"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v16

    goto/16 :goto_0

    :catch_33
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_9

    :try_start_35
    const-string v17, "one_hand_phonepad_cn_stroke"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v16

    goto/16 :goto_0

    :catch_34
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_9
    if-eqz v8, :cond_a

    :try_start_36
    const-string v17, "one_hand_phonepad_cn_pinyin_spell"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v16

    goto/16 :goto_0

    :catch_35
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_a
    :try_start_37
    const-string v17, "one_hand_phonepad_cn_pinyin"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v16

    goto/16 :goto_0

    :catch_36
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    :try_start_38
    const-string v17, "one_hand_phonepad_th_tone"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v16

    goto/16 :goto_0

    :catch_37
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    :try_start_39
    const-string v17, "one_hand_phonepad_th_tone_01"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v16

    goto/16 :goto_0

    :catch_38
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    :try_start_3a
    const-string v17, "one_hand_phonepad_th_tone_02"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v16

    goto/16 :goto_0

    :catch_39
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :cond_d
    :try_start_3b
    const-string v17, "one_hand_phonepad_th"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v16

    goto/16 :goto_0

    :catch_3a
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_27
    :try_start_3c
    const-string v17, "one_hand_phonepad_vi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v16

    goto/16 :goto_0

    :catch_3b
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_28
    :try_start_3d
    const-string v17, "one_hand_phonepad_ar"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v16

    goto/16 :goto_0

    :catch_3c
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_29
    :try_start_3e
    const-string v17, "one_hand_phonepad_fa"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v16

    goto/16 :goto_0

    :catch_3d
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_2a
    :try_start_3f
    const-string v17, "one_hand_phonepad_ur"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v16

    goto/16 :goto_0

    :catch_3e
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_2b
    :try_start_40
    const-string v17, "one_hand_phonepad_he"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v16

    goto/16 :goto_0

    :catch_3f
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_2c
    :try_start_41
    const-string v17, "one_hand_phonepad_ka"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v16

    goto/16 :goto_0

    :catch_40
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_2d
    :try_start_42
    const-string v17, "one_hand_phonepad_hy"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v16

    goto/16 :goto_0

    :catch_41
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_2e
    :try_start_43
    const-string v17, "one_hand_phonepad_mk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v16

    goto/16 :goto_0

    :catch_42
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_2f
    :try_start_44
    const-string v17, "one_hand_phonepad_km"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v16

    goto/16 :goto_0

    :catch_43
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_30
    :try_start_45
    const-string v17, "one_hand_phonepad_lo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v16

    goto/16 :goto_0

    :catch_44
    move-exception v3

    const v16, 0x7f0501d8

    goto/16 :goto_0

    :sswitch_31
    :try_start_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "one_hand_phonepad_ja_flick"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    :cond_e
    const-string v17, "one_hand_phonepad_ja"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v16

    goto/16 :goto_0

    :catch_45
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_f

    const v16, 0x7f0501ca

    goto/16 :goto_0

    :cond_f
    const v16, 0x7f0501c9

    goto/16 :goto_0

    :sswitch_32
    :try_start_47
    const-string v17, "one_hand_phonepad_mn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_46

    move-result v16

    goto/16 :goto_0

    :catch_46
    move-exception v3

    const v16, 0x7f0501dc

    goto/16 :goto_0

    :sswitch_33
    :try_start_48
    const-string v17, "one_hand_phonepad_uz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_47

    move-result v16

    goto/16 :goto_0

    :catch_47
    move-exception v3

    const v16, 0x7f05020c

    goto/16 :goto_0

    :sswitch_34
    :try_start_49
    const-string v17, "one_hand_phonepad_ky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_48

    move-result v16

    goto/16 :goto_0

    :catch_48
    move-exception v3

    const v16, 0x7f0501d7

    goto/16 :goto_0

    :sswitch_35
    :try_start_4a
    const-string v17, "one_hand_phonepad_tg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_49

    move-result v16

    goto/16 :goto_0

    :catch_49
    move-exception v3

    const v16, 0x7f050201

    goto/16 :goto_0

    :sswitch_36
    :try_start_4b
    const-string v17, "one_hand_phonepad_tk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_4b} :catch_4a

    move-result v16

    goto/16 :goto_0

    :catch_4a
    move-exception v3

    const v16, 0x7f050207

    goto/16 :goto_0

    :sswitch_37
    :try_start_4c
    const-string v17, "one_hand_phonepad_af"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4c .. :try_end_4c} :catch_4b

    move-result v16

    goto/16 :goto_0

    :catch_4b
    move-exception v3

    const v16, 0x7f0501a9

    goto/16 :goto_0

    :sswitch_38
    :try_start_4d
    const-string v17, "one_hand_phonepad_ga"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4d .. :try_end_4d} :catch_4c

    move-result v16

    goto/16 :goto_0

    :catch_4c
    move-exception v3

    const v16, 0x7f0501c0

    goto/16 :goto_0

    :sswitch_39
    :try_start_4e
    const-string v17, "one_hand_phonepad_sz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4e .. :try_end_4e} :catch_4d

    move-result v16

    goto/16 :goto_0

    :catch_4d
    move-exception v3

    const v16, 0x7f050200

    goto/16 :goto_0

    :sswitch_3a
    :try_start_4f
    const-string v17, "one_hand_phonepad_be"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4f .. :try_end_4f} :catch_4e

    move-result v16

    goto/16 :goto_0

    :catch_4e
    move-exception v3

    const v16, 0x7f0501ac

    goto/16 :goto_0

    :catch_4f
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61660000 -> :sswitch_37
        0x61720000 -> :sswitch_28
        0x617a0000 -> :sswitch_1c
        0x62650000 -> :sswitch_3a
        0x62670000 -> :sswitch_22
        0x63610000 -> :sswitch_17
        0x63730000 -> :sswitch_5
        0x64610000 -> :sswitch_6
        0x64650000 -> :sswitch_2
        0x656c0000 -> :sswitch_24
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_3
        0x65734553 -> :sswitch_3
        0x65735553 -> :sswitch_3
        0x65740000 -> :sswitch_7
        0x65750000 -> :sswitch_19
        0x66610000 -> :sswitch_29
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x67610000 -> :sswitch_38
        0x676c0000 -> :sswitch_18
        0x68720000 -> :sswitch_8
        0x68750000 -> :sswitch_b
        0x68790000 -> :sswitch_2d
        0x69640000 -> :sswitch_1d
        0x69730000 -> :sswitch_1a
        0x69740000 -> :sswitch_4
        0x69770000 -> :sswitch_2b
        0x6a610000 -> :sswitch_31
        0x6b610000 -> :sswitch_2c
        0x6b6b0000 -> :sswitch_20
        0x6b6d0000 -> :sswitch_2f
        0x6b6f0000 -> :sswitch_1f
        0x6b790000 -> :sswitch_34
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_a
        0x6c760000 -> :sswitch_9
        0x6d6b0000 -> :sswitch_2e
        0x6d6e0000 -> :sswitch_32
        0x6d730000 -> :sswitch_1e
        0x6e620000 -> :sswitch_c
        0x6e6c0000 -> :sswitch_d
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_f
        0x70744252 -> :sswitch_f
        0x70745054 -> :sswitch_f
        0x726f0000 -> :sswitch_10
        0x72750000 -> :sswitch_21
        0x736b0000 -> :sswitch_14
        0x736c0000 -> :sswitch_15
        0x73710000 -> :sswitch_1b
        0x73720000 -> :sswitch_12
        0x73760000 -> :sswitch_13
        0x737a0000 -> :sswitch_39
        0x74670000 -> :sswitch_35
        0x74680000 -> :sswitch_26
        0x746b0000 -> :sswitch_36
        0x74720000 -> :sswitch_16
        0x756b0000 -> :sswitch_23
        0x75720000 -> :sswitch_2a
        0x757a0000 -> :sswitch_33
        0x76690000 -> :sswitch_27
        0x7a680000 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getOneHandQwertyKeyboardXmlId(I)I
    .locals 20
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v8, :cond_0

    move/from16 p1, v3

    :cond_0
    const/high16 v17, -0x10000

    and-int v11, p1, v17

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v7

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "CH"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x66724652

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    :cond_1
    move-object v14, v7

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    const v16, 0x7f05022d

    sparse-switch v11, :sswitch_data_0

    :try_start_0
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_46

    move-result v16

    :cond_3
    :goto_0
    return v16

    :sswitch_0
    :try_start_1
    const-string v17, "one_hand_qwerty_hi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    goto :goto_0

    :catch_0
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_1
    :try_start_2
    const-string v17, "one_hand_qwerty_bn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    goto :goto_0

    :catch_1
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_2
    :try_start_3
    const-string v17, "one_hand_qwerty_gu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v16

    goto :goto_0

    :catch_2
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_3
    :try_start_4
    const-string v17, "one_hand_qwerty_kn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v16

    goto :goto_0

    :catch_3
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_4
    :try_start_5
    const-string v17, "one_hand_qwerty_ml"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v16

    goto :goto_0

    :catch_4
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_5
    :try_start_6
    const-string v17, "one_hand_qwerty_mr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v16

    goto :goto_0

    :catch_5
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_6
    :try_start_7
    const-string v17, "one_hand_qwerty_pa"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v16

    goto :goto_0

    :catch_6
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_7
    :try_start_8
    const-string v17, "one_hand_qwerty_si"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v16

    goto :goto_0

    :catch_7
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_8
    :try_start_9
    const-string v17, "one_hand_qwerty_te"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v16

    goto :goto_0

    :catch_8
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_9
    :try_start_a
    const-string v17, "one_hand_qwerty_ta"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v16

    goto :goto_0

    :catch_9
    move-exception v5

    const v16, 0x7f05022d

    goto :goto_0

    :sswitch_a
    :try_start_b
    const-string v17, "one_hand_qwerty_as"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v16

    goto :goto_0

    :catch_a
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_b
    :try_start_c
    const-string v17, "one_hand_qwerty_ne"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v16

    goto/16 :goto_0

    :catch_b
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_c
    :try_start_d
    const-string v17, "one_hand_qwerty_or"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v16

    goto/16 :goto_0

    :catch_c
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    :try_start_e
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_f

    move-result v16

    goto/16 :goto_0

    :pswitch_0
    :try_start_f
    const-string v17, "one_hand_qwerty_tr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_d

    move-result v16

    goto/16 :goto_0

    :catch_d
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :pswitch_1
    :try_start_10
    const-string v17, "one_hand_qwerty_tr_f"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_e

    move-result v16

    goto/16 :goto_0

    :catch_e
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :catch_f
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_e
    :try_start_11
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v16

    goto/16 :goto_0

    :catch_10
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_f
    :try_start_12
    const-string v17, "one_hand_qwertz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v16

    goto/16 :goto_0

    :catch_11
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_10
    const-string v17, "BE"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    :try_start_13
    const-string v17, "one_hand_azerty_no_accent"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v16

    goto/16 :goto_0

    :catch_12
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :cond_4
    :try_start_14
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v16

    goto/16 :goto_0

    :catch_13
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_11
    :try_start_15
    const-string v17, "one_hand_qwerty_es"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_14

    move-result v16

    goto/16 :goto_0

    :catch_14
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_12
    const-string v17, "CH"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    :try_start_16
    const-string v17, "one_hand_qwertz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_15

    move-result v16

    goto/16 :goto_0

    :catch_15
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :cond_5
    :try_start_17
    const-string v17, "one_hand_qwerty_it"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v16

    goto/16 :goto_0

    :catch_16
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v10

    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    :try_start_18
    const-string v17, "one_hand_qwerty_kr_to_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v16

    goto/16 :goto_0

    :catch_17
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :cond_6
    :try_start_19
    const-string v17, "one_hand_qwerty_kr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v16

    goto/16 :goto_0

    :catch_18
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    const v17, 0x66724341

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    :try_start_1a
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v16

    goto/16 :goto_0

    :catch_19
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :cond_7
    :try_start_1b
    const-string v17, "one_hand_azerty_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v16

    goto/16 :goto_0

    :catch_1a
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :cond_8
    const-string v17, "CA"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    :try_start_1c
    const-string v17, "one_hand_qwerty_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v16

    goto/16 :goto_0

    :catch_1b
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :cond_9
    const-string v17, "CH"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    :try_start_1d
    const-string v17, "one_hand_qwertz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v16

    goto/16 :goto_0

    :catch_1c
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :cond_a
    :try_start_1e
    const-string v17, "one_hand_azerty_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v16

    goto/16 :goto_0

    :catch_1d
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :try_start_1f
    const-string v17, "one_hand_qwertz_de"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1f

    move-result v16

    goto/16 :goto_0

    :pswitch_2
    :try_start_20
    const-string v17, "one_hand_qwertz_de_plus"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1e

    move-result v16

    goto/16 :goto_0

    :catch_1e
    move-exception v5

    const v16, 0x7f0502af

    goto/16 :goto_0

    :catch_1f
    move-exception v5

    const v16, 0x7f0502af

    goto/16 :goto_0

    :sswitch_16
    :try_start_21
    const-string v17, "one_hand_qwerty_kk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_20

    move-result v16

    goto/16 :goto_0

    :catch_20
    move-exception v17

    :sswitch_17
    :try_start_22
    const-string v17, "one_hand_qwerty_ru"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_21

    move-result v16

    goto/16 :goto_0

    :catch_21
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_18
    :try_start_23
    const-string v17, "one_hand_qwerty_da"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_22

    move-result v16

    goto/16 :goto_0

    :catch_22
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_19
    :try_start_24
    const-string v17, "one_hand_qwerty_nb"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_23

    move-result v16

    goto/16 :goto_0

    :catch_23
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_1a
    :try_start_25
    const-string v17, "one_hand_qwerty_fi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_24

    move-result v16

    goto/16 :goto_0

    :catch_24
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_1b
    :try_start_26
    const-string v17, "one_hand_qwerty_uk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result v16

    goto/16 :goto_0

    :catch_25
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :try_start_27
    const-string v17, "one_hand_qwerty_bg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_28

    move-result v16

    goto/16 :goto_0

    :pswitch_3
    :try_start_28
    const-string v17, "one_hand_qwerty_bg_phonetic"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_26

    move-result v16

    goto/16 :goto_0

    :catch_26
    move-exception v5

    :try_start_29
    const-string v17, "one_hand_qwerty_bg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_27

    move-result v16

    goto/16 :goto_0

    :catch_27
    move-exception v4

    const v16, 0x7f050225

    goto/16 :goto_0

    :catch_28
    move-exception v5

    const v16, 0x7f050225

    goto/16 :goto_0

    :sswitch_1d
    :try_start_2a
    const-string v17, "one_hand_qwerty_el"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v16

    goto/16 :goto_0

    :catch_29
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_1e
    :try_start_2b
    const-string v17, "one_hand_qwerty_lv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v16

    goto/16 :goto_0

    :catch_2a
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_1f
    :try_start_2c
    const-string v17, "one_hand_qwerty_is"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v16

    goto/16 :goto_0

    :catch_2b
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_20
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    :try_start_2d
    const-string v17, "one_hand_qwerty_zh"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v16

    goto/16 :goto_0

    :catch_2c
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :cond_b
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    :try_start_2e
    const-string v17, "one_hand_qwerty_zt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v16

    goto/16 :goto_0

    :catch_2d
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :cond_c
    :try_start_2f
    const-string v17, "one_hand_qwerty_cn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v16

    goto/16 :goto_0

    :catch_2e
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_21
    :try_start_30
    const-string v17, "one_hand_qwerty_th"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v16

    goto/16 :goto_0

    :catch_2f
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_22
    :try_start_31
    const-string v17, "one_hand_qwerty_vi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v16

    goto/16 :goto_0

    :catch_30
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_23
    :try_start_32
    const-string v17, "one_hand_qwerty_ar"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v16

    goto/16 :goto_0

    :catch_31
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_24
    :try_start_33
    const-string v17, "one_hand_qwerty_fa"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v16

    goto/16 :goto_0

    :catch_32
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_25
    :try_start_34
    const-string v17, "one_hand_qwerty_ur"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v16

    goto/16 :goto_0

    :catch_33
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_26
    :try_start_35
    const-string v17, "one_hand_qwerty_he"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v16

    goto/16 :goto_0

    :catch_34
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_27
    :try_start_36
    const-string v17, "one_hand_qwerty_ka"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v16

    goto/16 :goto_0

    :catch_35
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_28
    :try_start_37
    const-string v17, "one_hand_qwerty_hy"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v16

    goto/16 :goto_0

    :catch_36
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_29
    :try_start_38
    const-string v17, "one_hand_qwerty_az"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v16

    goto/16 :goto_0

    :catch_37
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_2a
    :try_start_39
    const-string v17, "one_hand_qwerty_lt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v16

    goto/16 :goto_0

    :catch_38
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_2b
    :try_start_3a
    const-string v17, "one_hand_qwerty_mk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v16

    goto/16 :goto_0

    :catch_39
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_2c
    :try_start_3b
    const-string v17, "one_hand_qwerty_et"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v16

    goto/16 :goto_0

    :catch_3a
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_2d
    :try_start_3c
    const-string v17, "one_hand_qwerty_sq"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v16

    goto/16 :goto_0

    :catch_3b
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_2e
    :try_start_3d
    const-string v17, "one_hand_qwerty_km"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v16

    goto/16 :goto_0

    :catch_3c
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_2f
    :try_start_3e
    const-string v17, "one_hand_qwerty_lo"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v16

    goto/16 :goto_0

    :catch_3d
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_30
    const v17, 0x7a314d4d

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    :try_start_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "one_hand_qwerty_zw_shift_on"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    :cond_d
    const-string v17, "one_hand_qwerty_zw"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v16

    goto/16 :goto_0

    :catch_3e
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_31
    :try_start_40
    const-string v17, "one_hand_qwerty_ja"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v16

    goto/16 :goto_0

    :catch_3f
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    :sswitch_32
    :try_start_41
    const-string v17, "one_hand_qwerty_mn"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v16

    goto/16 :goto_0

    :catch_40
    move-exception v5

    const v16, 0x7f050277

    goto/16 :goto_0

    :sswitch_33
    :try_start_42
    const-string v17, "one_hand_qwerty_uz"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v16

    goto/16 :goto_0

    :catch_41
    move-exception v5

    const v16, 0x7f0502a7

    goto/16 :goto_0

    :sswitch_34
    :try_start_43
    const-string v17, "one_hand_qwerty_ky"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v16

    goto/16 :goto_0

    :catch_42
    move-exception v5

    const v16, 0x7f050271

    goto/16 :goto_0

    :sswitch_35
    :try_start_44
    const-string v17, "one_hand_qwerty_tg"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v16

    goto/16 :goto_0

    :catch_43
    move-exception v5

    const v16, 0x7f0502a0

    goto/16 :goto_0

    :sswitch_36
    :try_start_45
    const-string v17, "one_hand_qwerty_tk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v16

    goto/16 :goto_0

    :catch_44
    move-exception v5

    const v16, 0x7f0502a2

    goto/16 :goto_0

    :sswitch_37
    :try_start_46
    const-string v17, "one_hand_qwerty_be"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v16

    goto/16 :goto_0

    :catch_45
    move-exception v5

    const v16, 0x7f050224

    goto/16 :goto_0

    :catch_46
    move-exception v5

    const v16, 0x7f05022d

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_23
        0x61730000 -> :sswitch_a
        0x617a0000 -> :sswitch_29
        0x62650000 -> :sswitch_37
        0x62670000 -> :sswitch_1c
        0x626e0000 -> :sswitch_1
        0x63610000 -> :sswitch_e
        0x63730000 -> :sswitch_f
        0x64610000 -> :sswitch_18
        0x64650000 -> :sswitch_15
        0x656c0000 -> :sswitch_1d
        0x656e0000 -> :sswitch_e
        0x65730000 -> :sswitch_11
        0x65734553 -> :sswitch_11
        0x65735553 -> :sswitch_11
        0x65740000 -> :sswitch_2c
        0x65750000 -> :sswitch_e
        0x66610000 -> :sswitch_24
        0x66690000 -> :sswitch_1a
        0x66720000 -> :sswitch_14
        0x66724341 -> :sswitch_14
        0x66724652 -> :sswitch_14
        0x676c0000 -> :sswitch_e
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_f
        0x68750000 -> :sswitch_f
        0x68790000 -> :sswitch_28
        0x69640000 -> :sswitch_e
        0x69730000 -> :sswitch_1f
        0x69740000 -> :sswitch_12
        0x69770000 -> :sswitch_26
        0x6a610000 -> :sswitch_31
        0x6b610000 -> :sswitch_27
        0x6b6b0000 -> :sswitch_16
        0x6b6d0000 -> :sswitch_2e
        0x6b6e0000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_13
        0x6b790000 -> :sswitch_34
        0x6c6f0000 -> :sswitch_2f
        0x6c740000 -> :sswitch_2a
        0x6c760000 -> :sswitch_1e
        0x6d6b0000 -> :sswitch_2b
        0x6d6c0000 -> :sswitch_4
        0x6d6e0000 -> :sswitch_32
        0x6d720000 -> :sswitch_5
        0x6d730000 -> :sswitch_e
        0x6e620000 -> :sswitch_19
        0x6e650000 -> :sswitch_b
        0x6e6c0000 -> :sswitch_10
        0x6f720000 -> :sswitch_c
        0x70610000 -> :sswitch_6
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_e
        0x726f0000 -> :sswitch_e
        0x72750000 -> :sswitch_17
        0x73690000 -> :sswitch_7
        0x736b0000 -> :sswitch_e
        0x736c0000 -> :sswitch_f
        0x73710000 -> :sswitch_2d
        0x73720000 -> :sswitch_f
        0x73760000 -> :sswitch_1a
        0x737a0000 -> :sswitch_e
        0x74610000 -> :sswitch_9
        0x74650000 -> :sswitch_8
        0x74670000 -> :sswitch_35
        0x74680000 -> :sswitch_21
        0x746b0000 -> :sswitch_36
        0x74720000 -> :sswitch_d
        0x756b0000 -> :sswitch_1b
        0x75720000 -> :sswitch_25
        0x757a0000 -> :sswitch_33
        0x76690000 -> :sswitch_22
        0x7a310000 -> :sswitch_30
        0x7a680000 -> :sswitch_20
        0x7a68434e -> :sswitch_20
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getOneHandSymbolKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 13

    const/high16 v12, 0x6c6f0000

    const/high16 v11, 0x6b6d0000

    const/4 v10, 0x0

    const-string v7, "SamsungIME"

    const-string v8, "getOneHandSymbolKeyboard"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v1

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_20

    if-eqz v1, :cond_1

    :try_start_0
    const-string v7, "one_hand_phonepad_phone_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v7, v6, :cond_0

    iget v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v7, v4, :cond_0

    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    if-eq v7, v8, :cond_29

    :cond_0
    if-eqz v4, :cond_28

    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v7, v6, v4}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_2
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v7

    :catch_0
    move-exception v0

    const v6, 0x7f0501ed

    goto :goto_0

    :cond_1
    const-string v7, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_1
    const-string v7, "one_hand_qwerty_number_symbols_he_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v4

    goto :goto_0

    :catch_1
    move-exception v0

    const v6, 0x7f050286

    goto :goto_3

    :cond_3
    :try_start_2
    const-string v7, "one_hand_qwerty_number_symbols_he"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v6

    goto :goto_3

    :catch_2
    move-exception v0

    const v6, 0x7f050285

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_8

    const/high16 v7, 0x61720000

    if-ne v2, v7, :cond_6

    :try_start_3
    const-string v7, "one_hand_qwerty_number_symbols_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    :cond_5
    :goto_4
    const v7, 0x7f05027b

    if-ne v6, v7, :cond_2

    const/4 v5, 0x0

    :try_start_4
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v7

    if-eqz v7, :cond_1f

    const-string v7, "one_hand_qwerty_number_symbols_ko"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1f

    move-result v5

    :goto_5
    move v6, v5

    goto :goto_3

    :cond_6
    const/high16 v7, 0x66610000

    if-ne v2, v7, :cond_7

    :try_start_5
    const-string v7, "one_hand_qwerty_number_symbols_farsi"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_4

    :cond_7
    const/high16 v7, 0x75720000

    if-ne v2, v7, :cond_5

    const-string v7, "one_hand_qwerty_number_symbols_urdu"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v6

    goto :goto_4

    :catch_3
    move-exception v0

    const v6, 0x7f05027d

    goto :goto_4

    :cond_8
    const/high16 v7, 0x68690000

    if-ne v2, v7, :cond_9

    :try_start_6
    const-string v7, "one_hand_qwerty_number_symbols_hi"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v6

    goto :goto_4

    :catch_4
    move-exception v0

    const v6, 0x7f050288

    goto :goto_4

    :cond_9
    const/high16 v7, 0x626e0000

    if-ne v2, v7, :cond_a

    :try_start_7
    const-string v7, "one_hand_qwerty_number_symbols_bn"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v6

    goto :goto_4

    :catch_5
    move-exception v0

    const v6, 0x7f050281

    goto :goto_4

    :cond_a
    const/high16 v7, 0x67750000

    if-ne v2, v7, :cond_b

    :try_start_8
    const-string v7, "one_hand_qwerty_number_symbols_gu"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v6

    goto :goto_4

    :catch_6
    move-exception v0

    const v6, 0x7f050284

    goto :goto_4

    :cond_b
    const/high16 v7, 0x6b6e0000

    if-ne v2, v7, :cond_c

    :try_start_9
    const-string v7, "one_hand_qwerty_number_symbols_kn"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v6

    goto :goto_4

    :catch_7
    move-exception v0

    const v6, 0x7f05028a

    goto :goto_4

    :cond_c
    const/high16 v7, 0x6d6c0000

    if-ne v2, v7, :cond_d

    :try_start_a
    const-string v7, "one_hand_qwerty_number_symbols_ml"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_8

    move-result v6

    goto :goto_4

    :catch_8
    move-exception v0

    const v6, 0x7f05028d

    goto :goto_4

    :cond_d
    const/high16 v7, 0x6d720000

    if-ne v2, v7, :cond_e

    :try_start_b
    const-string v7, "one_hand_qwerty_number_symbols_mr"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_9

    move-result v6

    goto/16 :goto_4

    :catch_9
    move-exception v0

    const v6, 0x7f05028e

    goto/16 :goto_4

    :cond_e
    const/high16 v7, 0x70610000

    if-ne v2, v7, :cond_f

    :try_start_c
    const-string v7, "one_hand_qwerty_number_symbols_pa"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_a

    move-result v6

    goto/16 :goto_4

    :catch_a
    move-exception v0

    const v6, 0x7f050291

    goto/16 :goto_4

    :cond_f
    const/high16 v7, 0x73690000

    if-ne v2, v7, :cond_10

    :try_start_d
    const-string v7, "one_hand_qwerty_number_symbols_si"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_b

    move-result v6

    goto/16 :goto_4

    :catch_b
    move-exception v0

    const v6, 0x7f050292

    goto/16 :goto_4

    :cond_10
    const/high16 v7, 0x74650000

    if-ne v2, v7, :cond_11

    :try_start_e
    const-string v7, "one_hand_qwerty_number_symbols_te"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_c

    move-result v6

    goto/16 :goto_4

    :catch_c
    move-exception v0

    const v6, 0x7f050294

    goto/16 :goto_4

    :cond_11
    const/high16 v7, 0x74610000

    if-ne v2, v7, :cond_12

    :try_start_f
    const-string v7, "one_hand_qwerty_number_symbols_ta"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_d

    move-result v6

    goto/16 :goto_4

    :catch_d
    move-exception v0

    const v6, 0x7f050293

    goto/16 :goto_4

    :cond_12
    const/high16 v7, 0x61730000

    if-ne v2, v7, :cond_13

    :try_start_10
    const-string v7, "one_hand_qwerty_number_symbols_as"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_e

    move-result v6

    goto/16 :goto_4

    :catch_e
    move-exception v0

    const v6, 0x7f05027e

    goto/16 :goto_4

    :cond_13
    const/high16 v7, 0x6e650000

    if-ne v2, v7, :cond_14

    :try_start_11
    const-string v7, "one_hand_qwerty_number_symbols_ne"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_f

    move-result v6

    goto/16 :goto_4

    :catch_f
    move-exception v0

    const v6, 0x7f05028f

    goto/16 :goto_4

    :cond_14
    const/high16 v7, 0x6f720000

    if-ne v2, v7, :cond_15

    :try_start_12
    const-string v7, "one_hand_qwerty_number_symbols_or"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_10

    move-result v6

    goto/16 :goto_4

    :catch_10
    move-exception v0

    const v6, 0x7f050290

    goto/16 :goto_4

    :cond_15
    if-ne v2, v11, :cond_16

    :try_start_13
    const-string v7, "one_hand_qwerty_number_symbols_km"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_11

    move-result v6

    goto/16 :goto_4

    :catch_11
    move-exception v0

    const v6, 0x7f050289

    goto/16 :goto_4

    :cond_16
    if-ne v2, v12, :cond_17

    :try_start_14
    const-string v7, "one_hand_qwerty_number_symbols_lo"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_12

    move-result v6

    goto/16 :goto_4

    :catch_12
    move-exception v0

    const v6, 0x7f05028c

    goto/16 :goto_4

    :cond_17
    const v7, 0x7a314d4d

    if-ne v2, v7, :cond_18

    :try_start_15
    const-string v7, "one_hand_qwerty_number_symbols_zw"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_13

    move-result v6

    goto/16 :goto_4

    :catch_13
    move-exception v0

    const v6, 0x7f050297

    goto/16 :goto_4

    :cond_18
    const/high16 v7, 0x74680000

    if-ne v2, v7, :cond_19

    :try_start_16
    const-string v7, "one_hand_qwerty_number_symbols_th"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_14

    move-result v6

    goto/16 :goto_4

    :catch_14
    move-exception v0

    const v6, 0x7f05027b

    goto/16 :goto_4

    :cond_19
    const/high16 v7, 0x65730000

    if-eq v2, v7, :cond_1a

    const v7, 0x65734553

    if-eq v2, v7, :cond_1a

    const v7, 0x65735553

    if-ne v2, v7, :cond_1b

    :cond_1a
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-nez v7, :cond_1b

    :try_start_17
    const-string v7, "one_hand_qwerty_number_symbols_es"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_15

    move-result v6

    goto/16 :goto_4

    :catch_15
    move-exception v0

    const v6, 0x7f05027b

    goto/16 :goto_4

    :cond_1b
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v7, :cond_1c

    :try_start_18
    const-string v7, "one_hand_qwerty_number_symbols_add_smiley"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_16

    move-result v6

    goto/16 :goto_4

    :catch_16
    move-exception v0

    const v6, 0x7f05027b

    goto/16 :goto_4

    :cond_1c
    :try_start_19
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v7

    if-eqz v7, :cond_1d

    const-string v7, "one_hand_qwerty_number_symbols_ko"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_4

    :cond_1d
    iget-boolean v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v7, :cond_1e

    const-string v7, "one_hand_qwerty_number_symbols_att_with_number_key_first_line"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_4

    :cond_1e
    const-string v7, "one_hand_qwerty_number_symbols"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_17

    move-result v6

    goto/16 :goto_4

    :catch_17
    move-exception v0

    const v6, 0x7f05027b

    goto/16 :goto_4

    :cond_1f
    :try_start_1a
    const-string v7, "one_hand_qwerty_number_symbols"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_1f

    move-result v5

    goto/16 :goto_5

    :cond_20
    if-eqz v1, :cond_21

    :try_start_1b
    const-string v7, "one_hand_phonepad_phone_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_18

    move-result v6

    goto/16 :goto_0

    :catch_18
    move-exception v0

    const v6, 0x7f0501ed

    goto/16 :goto_0

    :cond_21
    const-string v7, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_22

    :try_start_1c
    const-string v7, "one_phonepad_symbol_he_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_19

    move-result v6

    :goto_6
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "SYMBOLS_PAGE"

    invoke-interface {v7, v8, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v4

    goto/16 :goto_0

    :catch_19
    move-exception v0

    const v6, 0x7f0501fc

    goto :goto_6

    :cond_22
    :try_start_1d
    const-string v7, "one_hand_phonepad_symbol_he"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1a

    move-result v6

    goto :goto_6

    :catch_1a
    move-exception v0

    const v6, 0x7f0501fb

    goto :goto_6

    :cond_23
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v7

    if-eqz v7, :cond_24

    :try_start_1e
    const-string v7, "one_hand_phonepad_symbol_arabic"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1b

    move-result v6

    goto :goto_6

    :catch_1b
    move-exception v0

    const v6, 0x7f0501fa

    goto :goto_6

    :cond_24
    if-ne v2, v11, :cond_25

    :try_start_1f
    const-string v7, "one_hand_phonepad_symbol_km"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1c

    move-result v6

    goto :goto_6

    :catch_1c
    move-exception v0

    const v6, 0x7f0501fd

    goto :goto_6

    :cond_25
    if-ne v2, v12, :cond_26

    :try_start_20
    const-string v7, "one_hand_phonepad_symbol_lo"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1d

    move-result v6

    goto :goto_6

    :catch_1d
    move-exception v0

    const v6, 0x7f0501ff

    goto :goto_6

    :cond_26
    :try_start_21
    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v7

    if-eqz v7, :cond_27

    const-string v7, "one_hand_phonepad_symbol_ko"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v6

    goto :goto_6

    :cond_27
    const-string v7, "one_hand_phonepad_symbol"

    invoke-static {v7}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_1e

    move-result v6

    goto :goto_6

    :catch_1e
    move-exception v0

    const v6, 0x7f0501f9

    goto :goto_6

    :cond_28
    new-instance v7, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_29
    iget-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v7, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    :catch_1f
    move-exception v7

    goto/16 :goto_3
.end method

.method private getPhonePadCurrentSymbolPageModeId(I)I
    .locals 8
    .param p1    # I

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "da_mode"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v2

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v3

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_12

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v6

    if-eqz v6, :cond_12

    packed-switch p1, :pswitch_data_0

    if-eqz v2, :cond_10

    :try_start_0
    const-string v6, "symbol_page_1_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    move-result v4

    :goto_0
    return v4

    :pswitch_0
    if-eqz v2, :cond_0

    :try_start_1
    const-string v6, "symbol_page_1_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const-string v6, "symbol_page_1_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0

    :cond_1
    const v4, 0x7f0800fc

    goto :goto_0

    :catch_0
    move-exception v0

    const v4, 0x7f0800fc

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_2

    :try_start_2
    const-string v6, "symbol_page_2_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const-string v6, "symbol_page_2_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    goto :goto_0

    :cond_3
    const v4, 0x7f0800fe

    goto :goto_0

    :catch_1
    move-exception v0

    const v4, 0x7f0800fe

    goto :goto_0

    :pswitch_2
    if-eqz v2, :cond_4

    :try_start_3
    const-string v6, "symbol_page_3_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    const-string v6, "symbol_page_3_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    goto :goto_0

    :cond_5
    const v4, 0x7f080100

    goto :goto_0

    :catch_2
    move-exception v0

    const v4, 0x7f080100

    goto :goto_0

    :pswitch_3
    if-eqz v2, :cond_6

    :try_start_4
    const-string v6, "symbol_page_4_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    const-string v6, "symbol_page_4_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v4

    goto :goto_0

    :cond_7
    const v4, 0x7f080111

    goto :goto_0

    :catch_3
    move-exception v0

    const v4, 0x7f080111

    goto :goto_0

    :pswitch_4
    if-eqz v2, :cond_8

    :try_start_5
    const-string v6, "symbol_page_5_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    const-string v6, "symbol_page_5_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_9
    const-string v6, "symbol_page_5_normal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const v4, 0x7f0800fc

    goto/16 :goto_0

    :pswitch_5
    if-eqz v2, :cond_a

    :try_start_6
    const-string v6, "symbol_page_6_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    const-string v6, "symbol_page_6_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_b
    const-string v6, "symbol_page_6_normal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v4

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const v4, 0x7f080111

    goto/16 :goto_0

    :pswitch_6
    if-eqz v2, :cond_c

    :try_start_7
    const-string v6, "symbol_page_7_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_c
    if-eqz v3, :cond_d

    const-string v6, "symbol_page_7_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_d
    const-string v6, "symbol_page_7_normal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v4

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const v4, 0x7f080111

    goto/16 :goto_0

    :pswitch_7
    if-eqz v2, :cond_e

    :try_start_8
    const-string v6, "symbol_page_8_email"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_e
    if-eqz v3, :cond_f

    const-string v6, "symbol_page_8_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_f
    const-string v6, "symbol_page_8_normal"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v4

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const v4, 0x7f080111

    goto/16 :goto_0

    :cond_10
    if-eqz v3, :cond_11

    :try_start_9
    const-string v6, "symbol_page_1_url"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v4

    goto/16 :goto_0

    :cond_11
    const v4, 0x7f0800fc

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const v4, 0x7f0800fc

    goto/16 :goto_0

    :cond_12
    packed-switch p1, :pswitch_data_1

    if-eqz v2, :cond_23

    :try_start_a
    const-string v6, "symbol_page_1_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_11

    move-result v4

    goto/16 :goto_0

    :pswitch_8
    if-eqz v2, :cond_13

    :try_start_b
    const-string v6, "symbol_page_1_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_13
    if-eqz v3, :cond_14

    const-string v6, "symbol_page_1_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_9

    move-result v4

    goto/16 :goto_0

    :cond_14
    const v4, 0x7f0800fd

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const v4, 0x7f0800fd

    goto/16 :goto_0

    :pswitch_9
    if-eqz v2, :cond_15

    :try_start_c
    const-string v6, "symbol_page_2_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_15
    if-eqz v3, :cond_16

    const-string v6, "symbol_page_2_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_a

    move-result v4

    goto/16 :goto_0

    :cond_16
    const v4, 0x7f0800ff

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const v4, 0x7f0800ff

    goto/16 :goto_0

    :pswitch_a
    if-eqz v2, :cond_17

    :try_start_d
    const-string v6, "symbol_page_3_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_17
    if-eqz v3, :cond_18

    const-string v6, "symbol_page_3_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_b

    move-result v4

    goto/16 :goto_0

    :cond_18
    const v4, 0x7f080101

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const v4, 0x7f080101

    goto/16 :goto_0

    :pswitch_b
    if-eqz v2, :cond_19

    :try_start_e
    const-string v6, "symbol_page_4_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_19
    if-eqz v3, :cond_1a

    const-string v6, "symbol_page_4_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_c

    move-result v4

    goto/16 :goto_0

    :cond_1a
    const v4, 0x7f080114

    goto/16 :goto_0

    :catch_c
    move-exception v0

    const v4, 0x7f080114

    goto/16 :goto_0

    :pswitch_c
    if-eqz v2, :cond_1b

    :try_start_f
    const-string v6, "symbol_page_5_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1b
    if-eqz v3, :cond_1c

    const-string v6, "symbol_page_5_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1c
    const-string v6, "symbol_page_5_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_d

    move-result v4

    goto/16 :goto_0

    :catch_d
    move-exception v0

    const v4, 0x7f0800fd

    goto/16 :goto_0

    :pswitch_d
    if-eqz v2, :cond_1d

    :try_start_10
    const-string v6, "symbol_page_6_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1d
    if-eqz v3, :cond_1e

    const-string v6, "symbol_page_6_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1e
    const-string v6, "symbol_page_6_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_e

    move-result v4

    goto/16 :goto_0

    :catch_e
    move-exception v0

    const v4, 0x7f0800fd

    goto/16 :goto_0

    :pswitch_e
    if-eqz v2, :cond_1f

    :try_start_11
    const-string v6, "symbol_page_7_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_1f
    if-eqz v3, :cond_20

    const-string v6, "symbol_page_7_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_20
    const-string v6, "symbol_page_7_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_f

    move-result v4

    goto/16 :goto_0

    :catch_f
    move-exception v0

    const v4, 0x7f0800fd

    goto/16 :goto_0

    :pswitch_f
    if-eqz v2, :cond_21

    :try_start_12
    const-string v6, "symbol_page_8_email_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_21
    if-eqz v3, :cond_22

    const-string v6, "symbol_page_8_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_22
    const-string v6, "symbol_page_8_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_10

    move-result v4

    goto/16 :goto_0

    :catch_10
    move-exception v0

    const v4, 0x7f0800fd

    goto/16 :goto_0

    :cond_23
    if-eqz v3, :cond_24

    :try_start_13
    const-string v6, "symbol_page_1_url_single_language"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_11

    move-result v4

    goto/16 :goto_0

    :cond_24
    const v4, 0x7f0800fd

    goto/16 :goto_0

    :catch_11
    move-exception v0

    const v4, 0x7f0800fd

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getPhonePadNumberKeyboardXmlId()I
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    if-eqz v1, :cond_1

    :try_start_0
    const-string v4, "one_hand_phonepad_month"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    const v3, 0x7f0501dd

    goto :goto_0

    :cond_1
    const v3, 0x7f0501dd

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    :try_start_1
    const-string v4, "one_hand_phonepad_phone_number"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    goto :goto_0

    :catch_1
    move-exception v0

    const v3, 0x7f0501ec

    goto :goto_0

    :cond_3
    const v3, 0x7f0501ec

    goto :goto_0

    :cond_4
    const/16 v4, 0x9

    if-eq v2, v4, :cond_5

    const/16 v4, 0xe

    if-ne v2, v4, :cond_7

    :cond_5
    if-eqz v1, :cond_6

    :try_start_2
    const-string v4, "one_hand_phonepad_yeardatetime"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    goto :goto_0

    :catch_2
    move-exception v0

    const v3, 0x7f05020e

    goto :goto_0

    :cond_6
    const v3, 0x7f05020e

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_10

    if-ne v2, v5, :cond_8

    :try_start_3
    const-string v4, "one_hand_phonepad_number_decimal"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    goto :goto_0

    :catch_3
    move-exception v0

    const v3, 0x7f0501e4

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_9

    :try_start_4
    const-string v4, "one_hand_phonepad_number_decimal"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    goto :goto_0

    :catch_4
    move-exception v0

    const v3, 0x7f0501e4

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_a

    :try_start_5
    const-string v4, "one_hand_phonepad_number_password"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v3

    goto :goto_0

    :catch_5
    move-exception v0

    const v3, 0x7f0501e9

    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_b

    :try_start_6
    const-string v4, "one_hand_phonepad_number_signed"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v3

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const v3, 0x7f0501ea

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    :try_start_7
    const-string v4, "one_hand_phonepad_number_signed_decimal"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v3

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const v3, 0x7f0501eb

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_e

    :try_start_8
    const-string v4, "one_hand_phonepad_time"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v3

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const v3, 0x7f050206

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v4

    if-eqz v4, :cond_f

    :try_start_9
    const-string v4, "one_hand_phonepad_date"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v3

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const v3, 0x7f0501b5

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_a
    const-string v4, "one_hand_phonepad_datetime"

    invoke-static {v4}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v3

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const v3, 0x7f0501b6

    goto/16 :goto_0

    :cond_10
    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    if-ne v4, v5, :cond_0

    :cond_11
    if-ne v2, v5, :cond_12

    const v3, 0x7f0501e4

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_13

    const v3, 0x7f0501e4

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v4

    if-eqz v4, :cond_14

    const v3, 0x7f0501e9

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v4

    if-eqz v4, :cond_15

    const v3, 0x7f0501ea

    goto/16 :goto_0

    :cond_15
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    const v3, 0x7f0501eb

    goto/16 :goto_0

    :cond_17
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_18

    const v3, 0x7f050206

    goto/16 :goto_0

    :cond_18
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v4

    if-eqz v4, :cond_19

    const v3, 0x7f0501b5

    goto/16 :goto_0

    :cond_19
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v4

    if-eqz v4, :cond_0

    const v3, 0x7f0501b6

    goto/16 :goto_0
.end method

.method private getPhonepadXmlId(I)I
    .locals 20
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v17, "da_mode"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v17, "da_language"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v5, :cond_0

    move/from16 p1, v2

    :cond_0
    const/high16 v17, -0x10000

    and-int v12, p1, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v14

    const v16, 0x7f0501b9

    sparse-switch v12, :sswitch_data_0

    const v16, 0x7f0501b9

    :goto_0
    return v16

    :sswitch_0
    :try_start_0
    const-string v17, "phonepad_en"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    goto :goto_0

    :catch_0
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_1
    :try_start_1
    const-string v17, "phonepad_fr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    goto :goto_0

    :catch_1
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_2
    :try_start_2
    const-string v17, "phonepad_de"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v16

    goto :goto_0

    :catch_2
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_3
    :try_start_3
    const-string v17, "phonepad_es"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v16

    goto :goto_0

    :catch_3
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_4
    :try_start_4
    const-string v17, "phonepad_it"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v16

    goto :goto_0

    :catch_4
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_5
    :try_start_5
    const-string v17, "phonepad_cs"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v16

    goto :goto_0

    :catch_5
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_6
    :try_start_6
    const-string v17, "phonepad_da"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v16

    goto :goto_0

    :catch_6
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_7
    :try_start_7
    const-string v17, "phonepad_et"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v16

    goto :goto_0

    :catch_7
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_8
    :try_start_8
    const-string v17, "phonepad_hr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v16

    goto :goto_0

    :catch_8
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_9
    :try_start_9
    const-string v17, "phonepad_lv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v16

    goto :goto_0

    :catch_9
    move-exception v3

    const v16, 0x7f0501b9

    goto :goto_0

    :sswitch_a
    :try_start_a
    const-string v17, "phonepad_lt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v16

    goto :goto_0

    :catch_a
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_b
    :try_start_b
    const-string v17, "phonepad_hu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result v16

    goto/16 :goto_0

    :catch_b
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_c
    :try_start_c
    const-string v17, "phonepad_nb"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    move-result v16

    goto/16 :goto_0

    :catch_c
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_d
    :try_start_d
    const-string v17, "phonepad_nl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    move-result v16

    goto/16 :goto_0

    :catch_d
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_e
    :try_start_e
    const-string v17, "phonepad_pl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_e

    move-result v16

    goto/16 :goto_0

    :catch_e
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_f
    :try_start_f
    const-string v17, "phonepad_pt"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_f

    move-result v16

    goto/16 :goto_0

    :catch_f
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_10
    :try_start_10
    const-string v17, "phonepad_ro"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_10

    move-result v16

    goto/16 :goto_0

    :catch_10
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_11
    :try_start_11
    const-string v17, "phonepad_fi"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_11

    move-result v16

    goto/16 :goto_0

    :catch_11
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_12
    :try_start_12
    const-string v17, "phonepad_sr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_12

    move-result v16

    goto/16 :goto_0

    :catch_12
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_13
    :try_start_13
    const-string v17, "phonepad_sv"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_13

    move-result v16

    goto/16 :goto_0

    :catch_13
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_14
    :try_start_14
    const-string v17, "phonepad_sk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_14

    move-result v16

    goto/16 :goto_0

    :catch_14
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_15
    :try_start_15
    const-string v17, "phonepad_sl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result v16

    goto/16 :goto_0

    :catch_15
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_16
    :try_start_16
    const-string v17, "phonepad_tr"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_16

    move-result v16

    goto/16 :goto_0

    :catch_16
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_17
    :try_start_17
    const-string v17, "phonepad_ca"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_17

    move-result v16

    goto/16 :goto_0

    :catch_17
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_18
    :try_start_18
    const-string v17, "phonepad_gl"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_18

    move-result v16

    goto/16 :goto_0

    :catch_18
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_19
    :try_start_19
    const-string v17, "phonepad_eu"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_19

    move-result v16

    goto/16 :goto_0

    :catch_19
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1a
    :try_start_1a
    const-string v17, "phonepad_is"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_1a

    move-result v16

    goto/16 :goto_0

    :catch_1a
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1b
    :try_start_1b
    const-string v17, "phonepad_sq"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1b

    move-result v16

    goto/16 :goto_0

    :catch_1b
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1c
    :try_start_1c
    const-string v17, "phonepad_az"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1c

    move-result v16

    goto/16 :goto_0

    :catch_1c
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1d
    :try_start_1d
    const-string v17, "phonepad_id"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1d

    move-result v16

    goto/16 :goto_0

    :catch_1d
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1e
    :try_start_1e
    const-string v17, "phonepad_ms"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1e

    move-result v16

    goto/16 :goto_0

    :catch_1e
    move-exception v3

    const v16, 0x7f0501b9

    goto/16 :goto_0

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "KOR_MODE"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_USE_INPUT_METHOD_TYPE_ON_KOR"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v10, v0, :cond_1

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    const v16, 0x7f0501d3

    goto/16 :goto_0

    :cond_2
    packed-switch v4, :pswitch_data_0

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :pswitch_0
    const v16, 0x7f0501d1

    goto/16 :goto_0

    :pswitch_1
    const v16, 0x7f0501d3

    goto/16 :goto_0

    :cond_3
    packed-switch v4, :pswitch_data_1

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :pswitch_2
    const v16, 0x7f0501d1

    goto/16 :goto_0

    :pswitch_3
    const v16, 0x7f0501d3

    goto/16 :goto_0

    :pswitch_4
    const v16, 0x7f0501d5

    goto/16 :goto_0

    :pswitch_5
    const v16, 0x7f0501d6

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    packed-switch v11, :pswitch_data_2

    const v16, 0x7f0501d1

    goto/16 :goto_0

    :pswitch_6
    const v16, 0x7f0501d3

    goto/16 :goto_0

    :sswitch_20
    :try_start_1f
    const-string v17, "phonepad_kk"

    invoke-static/range {v17 .. v17}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1f

    move-result v16

    goto/16 :goto_0

    :catch_1f
    move-exception v3

    const v16, 0x7f0501f2

    goto/16 :goto_0

    :sswitch_21
    const v16, 0x7f0501f2

    goto/16 :goto_0

    :sswitch_22
    const v16, 0x7f0501ad

    goto/16 :goto_0

    :sswitch_23
    const v16, 0x7f05020a

    goto/16 :goto_0

    :sswitch_24
    const v16, 0x7f0501b8

    goto/16 :goto_0

    :sswitch_25
    const v17, 0x7a68484b

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const v16, 0x7f05020f

    goto/16 :goto_0

    :cond_5
    const v17, 0x7a685457

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    if-eqz v14, :cond_6

    const v16, 0x7f050210

    goto/16 :goto_0

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLengthOfSpellText()I

    move-result v17

    if-lez v17, :cond_7

    const v16, 0x7f050212

    goto/16 :goto_0

    :cond_7
    const v16, 0x7f050211

    goto/16 :goto_0

    :cond_8
    if-eqz v14, :cond_9

    const v16, 0x7f0501b2

    goto/16 :goto_0

    :cond_9
    if-eqz v8, :cond_a

    const v16, 0x7f0501b1

    goto/16 :goto_0

    :cond_a
    const v16, 0x7f0501b0

    goto/16 :goto_0

    :sswitch_26
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v15

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    const v16, 0x7f050203

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    const v16, 0x7f050204

    goto/16 :goto_0

    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_d

    const v16, 0x7f050205

    goto/16 :goto_0

    :cond_d
    const v16, 0x7f050202

    goto/16 :goto_0

    :sswitch_27
    const v16, 0x7f05020d

    goto/16 :goto_0

    :sswitch_28
    const v16, 0x7f0501aa

    goto/16 :goto_0

    :sswitch_29
    const v16, 0x7f0501bd

    goto/16 :goto_0

    :sswitch_2a
    const v16, 0x7f05020b

    goto/16 :goto_0

    :sswitch_2b
    const v16, 0x7f0501c2

    goto/16 :goto_0

    :sswitch_2c
    const v16, 0x7f0501cc

    goto/16 :goto_0

    :sswitch_2d
    const v16, 0x7f0501c5

    goto/16 :goto_0

    :sswitch_2e
    const v16, 0x7f0501db

    goto/16 :goto_0

    :sswitch_2f
    const v16, 0x7f0501ce

    goto/16 :goto_0

    :sswitch_30
    const v16, 0x7f0501d8

    goto/16 :goto_0

    :sswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "SETTINGS_DEFAULT_KEYPAD_FLICK"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    const v16, 0x7f0501ca

    goto/16 :goto_0

    :cond_e
    const v16, 0x7f0501c9

    goto/16 :goto_0

    :sswitch_32
    const v16, 0x7f0501dc

    goto/16 :goto_0

    :sswitch_33
    const v16, 0x7f05020c

    goto/16 :goto_0

    :sswitch_34
    const v16, 0x7f0501d7

    goto/16 :goto_0

    :sswitch_35
    const v16, 0x7f050201

    goto/16 :goto_0

    :sswitch_36
    const v16, 0x7f050207

    goto/16 :goto_0

    :sswitch_37
    const v16, 0x7f0501a9

    goto/16 :goto_0

    :sswitch_38
    const v16, 0x7f0501c0

    goto/16 :goto_0

    :sswitch_39
    const v16, 0x7f050200

    goto/16 :goto_0

    :sswitch_3a
    const v16, 0x7f0501ac

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61660000 -> :sswitch_37
        0x61720000 -> :sswitch_28
        0x617a0000 -> :sswitch_1c
        0x62650000 -> :sswitch_3a
        0x62670000 -> :sswitch_22
        0x63610000 -> :sswitch_17
        0x63730000 -> :sswitch_5
        0x64610000 -> :sswitch_6
        0x64650000 -> :sswitch_2
        0x656c0000 -> :sswitch_24
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_3
        0x65734553 -> :sswitch_3
        0x65735553 -> :sswitch_3
        0x65740000 -> :sswitch_7
        0x65750000 -> :sswitch_19
        0x66610000 -> :sswitch_29
        0x66690000 -> :sswitch_11
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x67610000 -> :sswitch_38
        0x676c0000 -> :sswitch_18
        0x68720000 -> :sswitch_8
        0x68750000 -> :sswitch_b
        0x68790000 -> :sswitch_2d
        0x69640000 -> :sswitch_1d
        0x69730000 -> :sswitch_1a
        0x69740000 -> :sswitch_4
        0x69770000 -> :sswitch_2b
        0x6a610000 -> :sswitch_31
        0x6b610000 -> :sswitch_2c
        0x6b6b0000 -> :sswitch_20
        0x6b6d0000 -> :sswitch_2f
        0x6b6f0000 -> :sswitch_1f
        0x6b790000 -> :sswitch_34
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_a
        0x6c760000 -> :sswitch_9
        0x6d6b0000 -> :sswitch_2e
        0x6d6e0000 -> :sswitch_32
        0x6d730000 -> :sswitch_1e
        0x6e620000 -> :sswitch_c
        0x6e6c0000 -> :sswitch_d
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_f
        0x70744252 -> :sswitch_f
        0x70745054 -> :sswitch_f
        0x726f0000 -> :sswitch_10
        0x72750000 -> :sswitch_21
        0x736b0000 -> :sswitch_14
        0x736c0000 -> :sswitch_15
        0x73710000 -> :sswitch_1b
        0x73720000 -> :sswitch_12
        0x73760000 -> :sswitch_13
        0x737a0000 -> :sswitch_39
        0x74670000 -> :sswitch_35
        0x74680000 -> :sswitch_26
        0x746b0000 -> :sswitch_36
        0x74720000 -> :sswitch_16
        0x756b0000 -> :sswitch_23
        0x75720000 -> :sswitch_2a
        0x757a0000 -> :sswitch_33
        0x76690000 -> :sswitch_27
        0x7a680000 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method private getQwertyKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 7

    const-string v4, "SamsungIME"

    const-string v5, "getQwertyKeyboard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v3

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v4, v3, :cond_0

    iget v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    if-eq v4, v5, :cond_4

    :cond_0
    if-eqz v2, :cond_2

    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    :goto_0
    invoke-direct {v5, v4, v3, v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v4, v3, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_2
    iget-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    :goto_3
    invoke-direct {v5, v4, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_2
.end method

.method private getQwertyKeyboardXmlId(I)I
    .locals 17
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v14, "da_mode"

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v14, "da_language"

    const/4 v15, -0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v6, :cond_0

    move/from16 p1, v2

    :cond_0
    const/high16 v14, -0x10000

    and-int v8, p1, v14

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const v14, 0x66724652

    move/from16 v0, p1

    if-eq v0, v14, :cond_2

    :cond_1
    move-object v11, v5

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    const v13, 0x7f05022d

    sparse-switch v8, :sswitch_data_0

    const v13, 0x7f05022d

    :cond_3
    :goto_0
    return v13

    :sswitch_0
    const v13, 0x7f050234

    goto :goto_0

    :sswitch_1
    const v13, 0x7f050227

    goto :goto_0

    :sswitch_2
    const v13, 0x7f050232

    goto :goto_0

    :sswitch_3
    const v13, 0x7f05023c

    goto :goto_0

    :sswitch_4
    const v13, 0x7f050276

    goto :goto_0

    :sswitch_5
    const v13, 0x7f050278

    goto :goto_0

    :sswitch_6
    const v13, 0x7f050299

    goto :goto_0

    :sswitch_7
    const v13, 0x7f05029b

    goto :goto_0

    :sswitch_8
    const v13, 0x7f05029f

    goto :goto_0

    :sswitch_9
    const v13, 0x7f05029e

    goto :goto_0

    :sswitch_a
    const v13, 0x7f050222

    goto :goto_0

    :sswitch_b
    const v13, 0x7f05027a

    goto :goto_0

    :sswitch_c
    const v13, 0x7f050298

    goto :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    const v13, 0x7f05022d

    goto :goto_0

    :pswitch_0
    const v13, 0x7f0502a3

    goto :goto_0

    :pswitch_1
    const v13, 0x7f0502a4

    goto :goto_0

    :sswitch_e
    const v13, 0x7f05022d

    goto :goto_0

    :sswitch_f
    :try_start_0
    const-string v14, "qwerty_sl"

    invoke-static {v14}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    goto :goto_0

    :catch_0
    move-exception v14

    :sswitch_10
    const v13, 0x7f0502ae

    goto :goto_0

    :sswitch_11
    const-string v14, "BE"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const v13, 0x7f050001

    goto :goto_0

    :cond_4
    const v13, 0x7f05022d

    goto :goto_0

    :sswitch_12
    const v13, 0x7f05022e

    goto :goto_0

    :sswitch_13
    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const v13, 0x7f0502ae

    goto :goto_0

    :cond_5
    const v13, 0x7f050237

    goto/16 :goto_0

    :sswitch_14
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v14, :cond_6

    if-eqz v7, :cond_6

    const v13, 0x7f050270

    goto/16 :goto_0

    :cond_6
    const v13, 0x7f05026f

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_9

    const v14, 0x66724341

    move/from16 v0, p1

    if-eq v0, v14, :cond_7

    const/high16 v14, 0x66720000

    move/from16 v0, p1

    if-ne v0, v14, :cond_8

    const-string v14, "CA"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_7
    const v13, 0x7f05022d

    goto/16 :goto_0

    :cond_8
    const/high16 v13, 0x7f050000

    goto/16 :goto_0

    :cond_9
    const-string v14, "CA"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const v13, 0x7f05022d

    goto/16 :goto_0

    :cond_a
    const-string v14, "CH"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const v13, 0x7f0502ae

    goto/16 :goto_0

    :cond_b
    const/high16 v13, 0x7f050000

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    const v13, 0x7f0502af

    goto/16 :goto_0

    :pswitch_2
    :try_start_1
    const-string v14, "qwertz_de_plus"

    invoke-static {v14}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const v13, 0x7f0502af

    goto/16 :goto_0

    :sswitch_17
    const v13, 0x7f05023a

    goto/16 :goto_0

    :sswitch_18
    const v13, 0x7f05029a

    goto/16 :goto_0

    :sswitch_19
    const v13, 0x7f05022a

    goto/16 :goto_0

    :sswitch_1a
    const v13, 0x7f050279

    goto/16 :goto_0

    :sswitch_1b
    const v13, 0x7f050231

    goto/16 :goto_0

    :sswitch_1c
    const v13, 0x7f0502a5

    goto/16 :goto_0

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_2

    const v13, 0x7f050225

    goto/16 :goto_0

    :pswitch_3
    :try_start_2
    const-string v14, "qwerty_bg_phonetic"

    invoke-static {v14}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v13

    goto/16 :goto_0

    :catch_2
    move-exception v3

    const v13, 0x7f050225

    goto/16 :goto_0

    :sswitch_1e
    const v13, 0x7f05022b

    goto/16 :goto_0

    :sswitch_1f
    const v13, 0x7f050274

    goto/16 :goto_0

    :sswitch_20
    const v13, 0x7f050236

    goto/16 :goto_0

    :sswitch_21
    const v14, 0x7a68484b

    move/from16 v0, p1

    if-ne v0, v14, :cond_c

    const v13, 0x7f0502aa

    goto/16 :goto_0

    :cond_c
    const v14, 0x7a685457

    move/from16 v0, p1

    if-ne v0, v14, :cond_d

    const v13, 0x7f0502ab

    goto/16 :goto_0

    :cond_d
    const v13, 0x7f050228

    goto/16 :goto_0

    :sswitch_22
    const v13, 0x7f0502a1

    goto/16 :goto_0

    :sswitch_23
    invoke-static {}, Lcom/diotek/ime/framework/input/Telex/Telex;->getVietnameseInputMode()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    if-nez v14, :cond_e

    :try_start_3
    const-string v14, "qwerty_vi_vni"

    invoke-static {v14}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v13

    goto/16 :goto_0

    :catch_3
    move-exception v3

    const v13, 0x7f0502a8

    goto/16 :goto_0

    :cond_e
    const v13, 0x7f0502a8

    goto/16 :goto_0

    :sswitch_24
    const v13, 0x7f050221

    goto/16 :goto_0

    :sswitch_25
    const v13, 0x7f050230

    goto/16 :goto_0

    :sswitch_26
    const v13, 0x7f0502a6

    goto/16 :goto_0

    :sswitch_27
    const v13, 0x7f050233

    goto/16 :goto_0

    :sswitch_28
    const v13, 0x7f050239

    goto/16 :goto_0

    :sswitch_29
    const v13, 0x7f050235

    goto/16 :goto_0

    :sswitch_2a
    const v13, 0x7f050223

    goto/16 :goto_0

    :sswitch_2b
    const v13, 0x7f050273

    goto/16 :goto_0

    :sswitch_2c
    const v13, 0x7f050275

    goto/16 :goto_0

    :sswitch_2d
    const v13, 0x7f05022f

    goto/16 :goto_0

    :sswitch_2e
    const v13, 0x7f05029d

    goto/16 :goto_0

    :sswitch_2f
    const v13, 0x7f05023b

    goto/16 :goto_0

    :sswitch_30
    const v13, 0x7f050272

    goto/16 :goto_0

    :sswitch_31
    const v14, 0x7a314d4d

    move/from16 v0, p1

    if-ne v0, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v14

    if-eqz v14, :cond_f

    const v13, 0x7f0502ad

    goto/16 :goto_0

    :cond_f
    const v13, 0x7f0502ac

    goto/16 :goto_0

    :sswitch_32
    const v13, 0x7f050238

    goto/16 :goto_0

    :sswitch_33
    const v13, 0x7f050277

    goto/16 :goto_0

    :sswitch_34
    const v13, 0x7f0502a7

    goto/16 :goto_0

    :sswitch_35
    const v13, 0x7f050271

    goto/16 :goto_0

    :sswitch_36
    const v13, 0x7f0502a0

    goto/16 :goto_0

    :sswitch_37
    const v13, 0x7f0502a2

    goto/16 :goto_0

    :sswitch_38
    const v13, 0x7f050224

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_24
        0x61730000 -> :sswitch_a
        0x617a0000 -> :sswitch_2a
        0x62650000 -> :sswitch_38
        0x62670000 -> :sswitch_1d
        0x626e0000 -> :sswitch_1
        0x63610000 -> :sswitch_e
        0x63730000 -> :sswitch_10
        0x64610000 -> :sswitch_19
        0x64650000 -> :sswitch_16
        0x656c0000 -> :sswitch_1e
        0x656e0000 -> :sswitch_e
        0x65730000 -> :sswitch_12
        0x65734553 -> :sswitch_12
        0x65735553 -> :sswitch_12
        0x65740000 -> :sswitch_2d
        0x65750000 -> :sswitch_e
        0x66610000 -> :sswitch_25
        0x66690000 -> :sswitch_1b
        0x66720000 -> :sswitch_15
        0x66724341 -> :sswitch_15
        0x66724652 -> :sswitch_15
        0x676c0000 -> :sswitch_e
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_10
        0x68750000 -> :sswitch_10
        0x68790000 -> :sswitch_29
        0x69640000 -> :sswitch_e
        0x69730000 -> :sswitch_20
        0x69740000 -> :sswitch_13
        0x69770000 -> :sswitch_27
        0x6a610000 -> :sswitch_32
        0x6b610000 -> :sswitch_28
        0x6b6b0000 -> :sswitch_17
        0x6b6d0000 -> :sswitch_2f
        0x6b6e0000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_14
        0x6b790000 -> :sswitch_35
        0x6c6f0000 -> :sswitch_30
        0x6c740000 -> :sswitch_2b
        0x6c760000 -> :sswitch_1f
        0x6d6b0000 -> :sswitch_2c
        0x6d6c0000 -> :sswitch_4
        0x6d6e0000 -> :sswitch_33
        0x6d720000 -> :sswitch_5
        0x6d730000 -> :sswitch_e
        0x6e620000 -> :sswitch_1a
        0x6e650000 -> :sswitch_b
        0x6e6c0000 -> :sswitch_11
        0x6f720000 -> :sswitch_c
        0x70610000 -> :sswitch_6
        0x706c0000 -> :sswitch_e
        0x70740000 -> :sswitch_e
        0x726f0000 -> :sswitch_e
        0x72750000 -> :sswitch_18
        0x73690000 -> :sswitch_7
        0x736b0000 -> :sswitch_e
        0x736c0000 -> :sswitch_f
        0x73710000 -> :sswitch_2e
        0x73720000 -> :sswitch_10
        0x73760000 -> :sswitch_1b
        0x737a0000 -> :sswitch_e
        0x74610000 -> :sswitch_9
        0x74650000 -> :sswitch_8
        0x74670000 -> :sswitch_36
        0x74680000 -> :sswitch_22
        0x746b0000 -> :sswitch_37
        0x74720000 -> :sswitch_d
        0x756b0000 -> :sswitch_1c
        0x75720000 -> :sswitch_26
        0x757a0000 -> :sswitch_34
        0x76690000 -> :sswitch_23
        0x7a310000 -> :sswitch_31
        0x7a680000 -> :sswitch_21
        0x7a68434e -> :sswitch_21
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getQwertyKnobKeyboardXmlId(I)I
    .locals 10
    .param p1    # I

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v8, "da_mode"

    const/4 v9, 0x0

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v8, "da_language"

    const/4 v9, -0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v2, :cond_0

    move p1, v0

    :cond_0
    const/high16 v8, -0x10000

    and-int v3, p1, v8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "CH"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const v8, 0x66724652

    if-eq p1, v8, :cond_2

    :cond_1
    move-object v6, v1

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f050244

    sparse-switch v3, :sswitch_data_0

    const v7, 0x7f050244

    :goto_0
    return v7

    :sswitch_0
    const v7, 0x7f050249

    goto :goto_0

    :sswitch_1
    const v7, 0x7f050241

    goto :goto_0

    :sswitch_2
    const v7, 0x7f050248

    goto :goto_0

    :sswitch_3
    const v7, 0x7f050251

    goto :goto_0

    :sswitch_4
    const v7, 0x7f050258

    goto :goto_0

    :sswitch_5
    const v7, 0x7f05025c

    goto :goto_0

    :sswitch_6
    const v7, 0x7f05025e

    goto :goto_0

    :sswitch_7
    const v7, 0x7f050263

    goto :goto_0

    :sswitch_8
    const v7, 0x7f050262

    goto :goto_0

    :sswitch_9
    const v7, 0x7f05023e

    goto :goto_0

    :sswitch_a
    const v7, 0x7f05025b

    goto :goto_0

    :sswitch_b
    const v7, 0x7f050244

    goto :goto_0

    :sswitch_c
    const v7, 0x7f050244

    goto :goto_0

    :sswitch_d
    const v7, 0x7f05025f

    goto :goto_0

    :sswitch_e
    const v7, 0x7f0502ae

    goto :goto_0

    :sswitch_f
    const v7, 0x7f050244

    goto :goto_0

    :sswitch_10
    const v7, 0x7f050245

    goto :goto_0

    :sswitch_11
    const v7, 0x7f050244

    goto :goto_0

    :sswitch_12
    const v7, 0x7f050252

    goto :goto_0

    :sswitch_13
    const v7, 0x7f05026b

    goto :goto_0

    :sswitch_14
    const v7, 0x7f050242

    goto :goto_0

    :sswitch_15
    const v7, 0x7f05024f

    goto :goto_0

    :sswitch_16
    const v7, 0x7f05025d

    goto :goto_0

    :sswitch_17
    const v7, 0x7f05025a

    goto :goto_0

    :sswitch_18
    const v7, 0x7f050261

    goto :goto_0

    :sswitch_19
    const v7, 0x7f050268

    goto :goto_0

    :sswitch_1a
    const v7, 0x7f050240

    goto :goto_0

    :sswitch_1b
    const v7, 0x7f050243

    goto :goto_0

    :sswitch_1c
    const v7, 0x7f050256

    goto :goto_0

    :sswitch_1d
    const v7, 0x7f05024b

    goto :goto_0

    :sswitch_1e
    const v8, 0x7a68484b

    if-ne p1, v8, :cond_3

    const v7, 0x7f05026d

    goto/16 :goto_0

    :cond_3
    const v8, 0x7a685457

    if-ne p1, v8, :cond_4

    const v7, 0x7f05026e

    goto/16 :goto_0

    :cond_4
    const v7, 0x7f05026c

    goto/16 :goto_0

    :sswitch_1f
    const v7, 0x7f050265

    goto/16 :goto_0

    :sswitch_20
    const v7, 0x7f05026b

    goto/16 :goto_0

    :sswitch_21
    const v7, 0x7f05023d

    goto/16 :goto_0

    :sswitch_22
    const v7, 0x7f050247

    goto/16 :goto_0

    :sswitch_23
    const v7, 0x7f050269

    goto/16 :goto_0

    :sswitch_24
    const v7, 0x7f05024c

    goto/16 :goto_0

    :sswitch_25
    const v7, 0x7f05024e

    goto/16 :goto_0

    :sswitch_26
    const v7, 0x7f05024a

    goto/16 :goto_0

    :sswitch_27
    const v7, 0x7f05023f

    goto/16 :goto_0

    :sswitch_28
    const v7, 0x7f050255

    goto/16 :goto_0

    :sswitch_29
    const v7, 0x7f050257

    goto/16 :goto_0

    :sswitch_2a
    const v7, 0x7f050246

    goto/16 :goto_0

    :sswitch_2b
    const v7, 0x7f050260

    goto/16 :goto_0

    :sswitch_2c
    const v7, 0x7f050250

    goto/16 :goto_0

    :sswitch_2d
    const v7, 0x7f050254

    goto/16 :goto_0

    :sswitch_2e
    const v7, 0x7f050244

    goto/16 :goto_0

    :sswitch_2f
    const v7, 0x7f05024d

    goto/16 :goto_0

    :sswitch_30
    const v7, 0x7f050259

    goto/16 :goto_0

    :sswitch_31
    const v7, 0x7f05026a

    goto/16 :goto_0

    :sswitch_32
    const v7, 0x7f050253

    goto/16 :goto_0

    :sswitch_33
    const v7, 0x7f050264

    goto/16 :goto_0

    :sswitch_34
    const v7, 0x7f050266

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_21
        0x61730000 -> :sswitch_9
        0x617a0000 -> :sswitch_27
        0x62670000 -> :sswitch_1a
        0x626e0000 -> :sswitch_1
        0x63610000 -> :sswitch_c
        0x63730000 -> :sswitch_e
        0x64610000 -> :sswitch_17
        0x64650000 -> :sswitch_14
        0x656c0000 -> :sswitch_1b
        0x656e0000 -> :sswitch_c
        0x65730000 -> :sswitch_10
        0x65734553 -> :sswitch_10
        0x65735553 -> :sswitch_10
        0x65740000 -> :sswitch_2a
        0x65750000 -> :sswitch_c
        0x66610000 -> :sswitch_22
        0x66690000 -> :sswitch_18
        0x66720000 -> :sswitch_13
        0x66724341 -> :sswitch_13
        0x66724652 -> :sswitch_13
        0x676c0000 -> :sswitch_c
        0x67750000 -> :sswitch_2
        0x68690000 -> :sswitch_0
        0x68720000 -> :sswitch_e
        0x68750000 -> :sswitch_e
        0x68790000 -> :sswitch_26
        0x69640000 -> :sswitch_c
        0x69730000 -> :sswitch_1d
        0x69740000 -> :sswitch_11
        0x69770000 -> :sswitch_24
        0x6a610000 -> :sswitch_2f
        0x6b610000 -> :sswitch_25
        0x6b6b0000 -> :sswitch_15
        0x6b6d0000 -> :sswitch_2c
        0x6b6e0000 -> :sswitch_3
        0x6b6f0000 -> :sswitch_12
        0x6b790000 -> :sswitch_32
        0x6c6f0000 -> :sswitch_2d
        0x6c740000 -> :sswitch_28
        0x6c760000 -> :sswitch_1c
        0x6d6b0000 -> :sswitch_29
        0x6d6c0000 -> :sswitch_4
        0x6d6e0000 -> :sswitch_30
        0x6d720000 -> :sswitch_0
        0x6d730000 -> :sswitch_c
        0x6e620000 -> :sswitch_17
        0x6e650000 -> :sswitch_0
        0x6e6c0000 -> :sswitch_f
        0x6f720000 -> :sswitch_a
        0x70610000 -> :sswitch_5
        0x706c0000 -> :sswitch_c
        0x70740000 -> :sswitch_c
        0x726f0000 -> :sswitch_c
        0x72750000 -> :sswitch_16
        0x73690000 -> :sswitch_6
        0x736b0000 -> :sswitch_c
        0x736c0000 -> :sswitch_d
        0x73710000 -> :sswitch_2b
        0x73720000 -> :sswitch_e
        0x73760000 -> :sswitch_18
        0x737a0000 -> :sswitch_c
        0x74610000 -> :sswitch_8
        0x74650000 -> :sswitch_7
        0x74670000 -> :sswitch_33
        0x74680000 -> :sswitch_1f
        0x746b0000 -> :sswitch_34
        0x74720000 -> :sswitch_b
        0x756b0000 -> :sswitch_19
        0x75720000 -> :sswitch_23
        0x757a0000 -> :sswitch_31
        0x76690000 -> :sswitch_20
        0x7a310000 -> :sswitch_2e
        0x7a680000 -> :sswitch_1e
        0x7a68434e -> :sswitch_1e
    .end sparse-switch
.end method

.method private getSoftFuncKbd()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 5

    const-string v3, "SamsungIME"

    const-string v4, "getSoftFuncKbd"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSoftFuncKbdXmlId()I

    move-result v2

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSoftFuncKbdModeId()I

    move-result v1

    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v3, v1, :cond_0

    iget-boolean v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_0
    if-eqz v1, :cond_2

    :try_start_0
    new-instance v3, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2, v1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v3, v2, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "SamsungIME"

    const-string v4, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v3, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v3, "SamsungIME"

    const-string v4, "OutOfMemoryError occurs in DefaultKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1
.end method

.method private getSoftFuncKbdModeId()I
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v0

    const/16 v1, -0xa2

    if-ne v0, v1, :cond_0

    const v0, 0x7f080118

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSoftFuncKbdXmlId()I
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    if-le v2, v3, :cond_0

    const v1, 0x7f0501a7

    :goto_0
    return v1

    :cond_0
    const v1, 0x7f0501a8

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    array-length v2, v2

    if-le v2, v3, :cond_2

    const v1, 0x7f0502b1

    goto :goto_0

    :cond_2
    const v1, 0x7f0502b2

    goto :goto_0
.end method

.method private getSplitLeftKeyboardXmlId(I)I
    .locals 14
    .param p1    # I

    const/high16 v11, -0x10000

    and-int v6, p1, v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v4

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const v11, 0x66724652

    if-eq p1, v11, :cond_1

    :cond_0
    move-object v8, v4

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    :try_start_0
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_0
    sparse-switch v6, :sswitch_data_0

    :try_start_1
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4b

    move-result v10

    :cond_2
    :goto_1
    return v10

    :catch_0
    move-exception v2

    const v10, 0x7f05022d

    goto :goto_0

    :sswitch_0
    :try_start_2
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    goto :goto_1

    :catch_1
    move-exception v2

    const v10, 0x7f05022d

    goto :goto_1

    :sswitch_1
    :try_start_3
    const-string v11, "split_sl_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    goto :goto_1

    :catch_2
    move-exception v11

    :sswitch_2
    :try_start_4
    const-string v11, "split_qwertz_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v10

    goto :goto_1

    :catch_3
    move-exception v2

    const v10, 0x7f0502ae

    goto :goto_1

    :sswitch_3
    :try_start_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    :pswitch_0
    const-string v11, "split_tr_qwerty_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    :pswitch_1
    const-string v11, "split_tr_f_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v10

    goto :goto_1

    :catch_4
    move-exception v2

    const v10, 0x7f05022d

    goto :goto_1

    :sswitch_4
    const-string v11, "BE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :try_start_6
    const-string v11, "split_azerty_fr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v10

    goto :goto_1

    :catch_5
    move-exception v2

    const/high16 v10, 0x7f050000

    goto :goto_1

    :cond_3
    :try_start_7
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v10

    goto :goto_1

    :catch_6
    move-exception v2

    const v10, 0x7f05022d

    goto :goto_1

    :sswitch_5
    :try_start_8
    const-string v11, "split_es_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v10

    goto :goto_1

    :catch_7
    move-exception v2

    const v10, 0x7f05022e

    goto :goto_1

    :sswitch_6
    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :try_start_9
    const-string v11, "split_qwertz_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v10

    goto/16 :goto_1

    :catch_8
    move-exception v2

    const v10, 0x7f0502ae

    goto/16 :goto_1

    :cond_4
    :try_start_a
    const-string v11, "split_it_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v10

    goto/16 :goto_1

    :catch_9
    move-exception v2

    const v10, 0x7f050237

    goto/16 :goto_1

    :sswitch_7
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_5

    :try_start_b
    const-string v11, "split_kr_cji_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v10

    goto/16 :goto_1

    :catch_a
    move-exception v2

    const v10, 0x7f05026f

    goto/16 :goto_1

    :cond_5
    const/4 v11, 0x2

    if-ne v5, v11, :cond_6

    :try_start_c
    const-string v11, "split_kr_cji_turbo_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v10

    goto/16 :goto_1

    :catch_b
    move-exception v2

    const v10, 0x7f05026f

    goto/16 :goto_1

    :cond_6
    if-nez v5, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v11

    if-eqz v11, :cond_7

    :try_start_d
    const-string v11, "split_kr_to_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v10

    goto/16 :goto_1

    :catch_c
    move-exception v2

    const v10, 0x7f050270

    goto/16 :goto_1

    :cond_7
    :try_start_e
    const-string v11, "split_kr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v10

    goto/16 :goto_1

    :catch_d
    move-exception v2

    const v10, 0x7f05026f

    goto/16 :goto_1

    :cond_8
    :try_start_f
    const-string v11, "split_kr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v10

    goto/16 :goto_1

    :catch_e
    move-exception v2

    const v10, 0x7f05026f

    goto/16 :goto_1

    :sswitch_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_a

    const v11, 0x66724341

    if-ne p1, v11, :cond_9

    :try_start_10
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v10

    goto/16 :goto_1

    :catch_f
    move-exception v2

    const v10, 0x7f05022d

    goto/16 :goto_1

    :cond_9
    :try_start_11
    const-string v11, "split_azerty_fr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v10

    goto/16 :goto_1

    :catch_10
    move-exception v2

    const/high16 v10, 0x7f050000

    goto/16 :goto_1

    :cond_a
    const-string v11, "CA"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    :try_start_12
    const-string v11, "split_en_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v10

    goto/16 :goto_1

    :catch_11
    move-exception v2

    const v10, 0x7f05022d

    goto/16 :goto_1

    :cond_b
    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    :try_start_13
    const-string v11, "split_qwertz_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v10

    goto/16 :goto_1

    :catch_12
    move-exception v2

    const v10, 0x7f0502ae

    goto/16 :goto_1

    :cond_c
    :try_start_14
    const-string v11, "split_azerty_fr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v10

    goto/16 :goto_1

    :catch_13
    move-exception v2

    const/high16 v10, 0x7f050000

    goto/16 :goto_1

    :sswitch_9
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :try_start_15
    const-string v11, "split_qwertz_de_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result v10

    goto/16 :goto_1

    :pswitch_2
    :try_start_16
    const-string v11, "split_qwertz_de_plus_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_14

    move-result v10

    goto/16 :goto_1

    :catch_14
    move-exception v2

    const v10, 0x7f0502af

    goto/16 :goto_1

    :catch_15
    move-exception v2

    const v10, 0x7f0502af

    goto/16 :goto_1

    :sswitch_a
    :try_start_17
    const-string v11, "split_kk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v10

    goto/16 :goto_1

    :catch_16
    move-exception v11

    :sswitch_b
    :try_start_18
    const-string v11, "split_ru_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v10

    goto/16 :goto_1

    :catch_17
    move-exception v2

    const v10, 0x7f05029a

    goto/16 :goto_1

    :sswitch_c
    :try_start_19
    const-string v11, "split_mn_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v10

    goto/16 :goto_1

    :catch_18
    move-exception v2

    const v10, 0x7f050277

    goto/16 :goto_1

    :sswitch_d
    :try_start_1a
    const-string v11, "split_ky_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v10

    goto/16 :goto_1

    :catch_19
    move-exception v2

    const v10, 0x7f050271

    goto/16 :goto_1

    :sswitch_e
    :try_start_1b
    const-string v11, "split_tg_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v10

    goto/16 :goto_1

    :catch_1a
    move-exception v2

    const v10, 0x7f0502a0

    goto/16 :goto_1

    :sswitch_f
    :try_start_1c
    const-string v11, "split_tk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v10

    goto/16 :goto_1

    :catch_1b
    move-exception v2

    const v10, 0x7f0502a2

    goto/16 :goto_1

    :sswitch_10
    :try_start_1d
    const-string v11, "split_da_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v10

    goto/16 :goto_1

    :catch_1c
    move-exception v2

    const v10, 0x7f05022a

    goto/16 :goto_1

    :sswitch_11
    :try_start_1e
    const-string v11, "split_nb_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v10

    goto/16 :goto_1

    :catch_1d
    move-exception v2

    const v10, 0x7f050279

    goto/16 :goto_1

    :sswitch_12
    :try_start_1f
    const-string v11, "split_fi_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v10

    goto/16 :goto_1

    :catch_1e
    move-exception v2

    const v10, 0x7f050231

    goto/16 :goto_1

    :sswitch_13
    :try_start_20
    const-string v11, "split_uk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v10

    goto/16 :goto_1

    :catch_1f
    move-exception v2

    const v10, 0x7f0502a5

    goto/16 :goto_1

    :sswitch_14
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :try_start_21
    const-string v11, "split_bg_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_22

    move-result v10

    goto/16 :goto_1

    :pswitch_3
    :try_start_22
    const-string v11, "split_bg_phonetic_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_20

    move-result v10

    goto/16 :goto_1

    :catch_20
    move-exception v2

    :try_start_23
    const-string v11, "split_bg_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_21

    move-result v10

    goto/16 :goto_1

    :catch_21
    move-exception v1

    const v10, 0x7f050225

    goto/16 :goto_1

    :catch_22
    move-exception v2

    const v10, 0x7f050225

    goto/16 :goto_1

    :sswitch_15
    :try_start_24
    const-string v11, "split_el_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_23

    move-result v10

    goto/16 :goto_1

    :catch_23
    move-exception v2

    const v10, 0x7f05022b

    goto/16 :goto_1

    :sswitch_16
    :try_start_25
    const-string v11, "split_lv_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_24

    move-result v10

    goto/16 :goto_1

    :catch_24
    move-exception v2

    const v10, 0x7f050274

    goto/16 :goto_1

    :sswitch_17
    :try_start_26
    const-string v11, "split_ar_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result v10

    goto/16 :goto_1

    :catch_25
    move-exception v2

    const v10, 0x7f050221

    goto/16 :goto_1

    :sswitch_18
    :try_start_27
    const-string v11, "split_ur_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_26

    move-result v10

    goto/16 :goto_1

    :catch_26
    move-exception v2

    const v10, 0x7f0502a6

    goto/16 :goto_1

    :sswitch_19
    :try_start_28
    const-string v11, "split_fa_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_27

    move-result v10

    goto/16 :goto_1

    :catch_27
    move-exception v2

    const v10, 0x7f050230

    goto/16 :goto_1

    :sswitch_1a
    :try_start_29
    const-string v11, "split_he_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_28

    move-result v10

    goto/16 :goto_1

    :catch_28
    move-exception v2

    const v10, 0x7f050233

    goto/16 :goto_1

    :sswitch_1b
    :try_start_2a
    const-string v11, "split_th_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v10

    goto/16 :goto_1

    :catch_29
    move-exception v2

    const v10, 0x7f0502a1

    goto/16 :goto_1

    :sswitch_1c
    :try_start_2b
    const-string v11, "split_vi_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v10

    goto/16 :goto_1

    :catch_2a
    move-exception v2

    const v10, 0x7f0502a8

    goto/16 :goto_1

    :sswitch_1d
    :try_start_2c
    const-string v11, "split_uz_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v10

    goto/16 :goto_1

    :catch_2b
    move-exception v2

    const v10, 0x7f0502a7

    goto/16 :goto_1

    :sswitch_1e
    :try_start_2d
    const-string v11, "split_az_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v10

    goto/16 :goto_1

    :catch_2c
    move-exception v2

    const v10, 0x7f050223

    goto/16 :goto_1

    :sswitch_1f
    :try_start_2e
    const-string v11, "split_hy_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v10

    goto/16 :goto_1

    :catch_2d
    move-exception v2

    const v10, 0x7f050235

    goto/16 :goto_1

    :sswitch_20
    :try_start_2f
    const-string v11, "split_ka_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v10

    goto/16 :goto_1

    :catch_2e
    move-exception v2

    const v10, 0x7f050239

    goto/16 :goto_1

    :sswitch_21
    :try_start_30
    const-string v11, "split_is_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v10

    goto/16 :goto_1

    :catch_2f
    move-exception v2

    const v10, 0x7f050236

    goto/16 :goto_1

    :sswitch_22
    const v11, 0x7a68484b

    if-ne p1, v11, :cond_d

    :try_start_31
    const-string v11, "split_zk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v10

    goto/16 :goto_1

    :catch_30
    move-exception v2

    const v10, 0x7f0502aa

    goto/16 :goto_1

    :cond_d
    const v11, 0x7a685457

    if-ne p1, v11, :cond_e

    :try_start_32
    const-string v11, "split_zt_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v10

    goto/16 :goto_1

    :catch_31
    move-exception v2

    const v10, 0x7f0502ab

    goto/16 :goto_1

    :cond_e
    :try_start_33
    const-string v11, "split_cn_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v10

    goto/16 :goto_1

    :catch_32
    move-exception v2

    const v10, 0x7f050228

    goto/16 :goto_1

    :sswitch_23
    :try_start_34
    const-string v11, "split_zk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v10

    goto/16 :goto_1

    :catch_33
    move-exception v2

    const v10, 0x7f0502aa

    goto/16 :goto_1

    :sswitch_24
    :try_start_35
    const-string v11, "split_zt_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v10

    goto/16 :goto_1

    :catch_34
    move-exception v2

    const v10, 0x7f0502ab

    goto/16 :goto_1

    :sswitch_25
    :try_start_36
    const-string v11, "split_lt_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v10

    goto/16 :goto_1

    :catch_35
    move-exception v2

    const v10, 0x7f050273

    goto/16 :goto_1

    :sswitch_26
    :try_start_37
    const-string v11, "split_mk_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v10

    goto/16 :goto_1

    :catch_36
    move-exception v2

    const v10, 0x7f050275

    goto/16 :goto_1

    :sswitch_27
    :try_start_38
    const-string v11, "split_et_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v10

    goto/16 :goto_1

    :catch_37
    move-exception v2

    const v10, 0x7f05022f

    goto/16 :goto_1

    :sswitch_28
    :try_start_39
    const-string v11, "split_sq_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v10

    goto/16 :goto_1

    :catch_38
    move-exception v2

    const v10, 0x7f05029d

    goto/16 :goto_1

    :sswitch_29
    :try_start_3a
    const-string v11, "split_km_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v10

    goto/16 :goto_1

    :catch_39
    move-exception v2

    const v10, 0x7f05023b

    goto/16 :goto_1

    :sswitch_2a
    :try_start_3b
    const-string v11, "split_lo_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v10

    goto/16 :goto_1

    :catch_3a
    move-exception v2

    const v10, 0x7f050272

    goto/16 :goto_1

    :sswitch_2b
    const v11, 0x7a314d4d

    if-ne p1, v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v11

    if-eqz v11, :cond_f

    :try_start_3c
    const-string v11, "split_zw_left_shift_on"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v10

    goto/16 :goto_1

    :catch_3b
    move-exception v2

    const v10, 0x7f0502ac

    goto/16 :goto_1

    :cond_f
    :try_start_3d
    const-string v11, "split_zw_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v10

    goto/16 :goto_1

    :catch_3c
    move-exception v2

    const v10, 0x7f0502ac

    goto/16 :goto_1

    :sswitch_2c
    :try_start_3e
    const-string v11, "split_ja_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v10

    goto/16 :goto_1

    :catch_3d
    move-exception v2

    const v10, 0x7f050238

    goto/16 :goto_1

    :sswitch_2d
    :try_start_3f
    const-string v11, "split_hi_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v10

    goto/16 :goto_1

    :catch_3e
    move-exception v2

    const v10, 0x7f050234

    goto/16 :goto_1

    :sswitch_2e
    :try_start_40
    const-string v11, "split_bn_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v10

    goto/16 :goto_1

    :catch_3f
    move-exception v2

    const v10, 0x7f050227

    goto/16 :goto_1

    :sswitch_2f
    :try_start_41
    const-string v11, "split_gu_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v10

    goto/16 :goto_1

    :catch_40
    move-exception v2

    const v10, 0x7f050232

    goto/16 :goto_1

    :sswitch_30
    :try_start_42
    const-string v11, "split_kn_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v10

    goto/16 :goto_1

    :catch_41
    move-exception v2

    const v10, 0x7f05023c

    goto/16 :goto_1

    :sswitch_31
    :try_start_43
    const-string v11, "split_ml_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v10

    goto/16 :goto_1

    :catch_42
    move-exception v2

    const v10, 0x7f050276

    goto/16 :goto_1

    :sswitch_32
    :try_start_44
    const-string v11, "split_mr_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v10

    goto/16 :goto_1

    :catch_43
    move-exception v2

    const v10, 0x7f050278

    goto/16 :goto_1

    :sswitch_33
    :try_start_45
    const-string v11, "split_pa_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v10

    goto/16 :goto_1

    :catch_44
    move-exception v2

    const v10, 0x7f050299

    goto/16 :goto_1

    :sswitch_34
    :try_start_46
    const-string v11, "split_ta_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v10

    goto/16 :goto_1

    :catch_45
    move-exception v2

    const v10, 0x7f05029e

    goto/16 :goto_1

    :sswitch_35
    :try_start_47
    const-string v11, "split_te_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_46

    move-result v10

    goto/16 :goto_1

    :catch_46
    move-exception v2

    const v10, 0x7f05029f

    goto/16 :goto_1

    :sswitch_36
    :try_start_48
    const-string v11, "split_si_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_47

    move-result v10

    goto/16 :goto_1

    :catch_47
    move-exception v2

    const v10, 0x7f05029b

    goto/16 :goto_1

    :sswitch_37
    :try_start_49
    const-string v11, "split_as_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_48

    move-result v10

    goto/16 :goto_1

    :catch_48
    move-exception v2

    const v10, 0x7f050222

    goto/16 :goto_1

    :sswitch_38
    :try_start_4a
    const-string v11, "split_ne_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_49

    move-result v10

    goto/16 :goto_1

    :catch_49
    move-exception v2

    const v10, 0x7f05027a

    goto/16 :goto_1

    :sswitch_39
    :try_start_4b
    const-string v11, "split_or_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_4b} :catch_4a

    move-result v10

    goto/16 :goto_1

    :catch_4a
    move-exception v2

    const v10, 0x7f050298

    goto/16 :goto_1

    :catch_4b
    move-exception v2

    const v10, 0x7f05022d

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_17
        0x61730000 -> :sswitch_37
        0x617a0000 -> :sswitch_1e
        0x62670000 -> :sswitch_14
        0x626e0000 -> :sswitch_2e
        0x63610000 -> :sswitch_0
        0x63730000 -> :sswitch_2
        0x64610000 -> :sswitch_10
        0x64650000 -> :sswitch_9
        0x656c0000 -> :sswitch_15
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_5
        0x65734553 -> :sswitch_5
        0x65735553 -> :sswitch_5
        0x65740000 -> :sswitch_27
        0x65750000 -> :sswitch_0
        0x66610000 -> :sswitch_19
        0x66690000 -> :sswitch_12
        0x66720000 -> :sswitch_8
        0x66724341 -> :sswitch_8
        0x66724652 -> :sswitch_8
        0x676c0000 -> :sswitch_0
        0x67750000 -> :sswitch_2f
        0x68690000 -> :sswitch_2d
        0x68720000 -> :sswitch_2
        0x68750000 -> :sswitch_2
        0x68790000 -> :sswitch_1f
        0x69640000 -> :sswitch_0
        0x69730000 -> :sswitch_21
        0x69740000 -> :sswitch_6
        0x69770000 -> :sswitch_1a
        0x6a610000 -> :sswitch_2c
        0x6b610000 -> :sswitch_20
        0x6b6b0000 -> :sswitch_a
        0x6b6d0000 -> :sswitch_29
        0x6b6e0000 -> :sswitch_30
        0x6b6f0000 -> :sswitch_7
        0x6b790000 -> :sswitch_d
        0x6c6f0000 -> :sswitch_2a
        0x6c740000 -> :sswitch_25
        0x6c760000 -> :sswitch_16
        0x6d6b0000 -> :sswitch_26
        0x6d6c0000 -> :sswitch_31
        0x6d6e0000 -> :sswitch_c
        0x6d720000 -> :sswitch_32
        0x6d730000 -> :sswitch_0
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_38
        0x6e6c0000 -> :sswitch_4
        0x6f720000 -> :sswitch_39
        0x70610000 -> :sswitch_33
        0x706c0000 -> :sswitch_0
        0x70740000 -> :sswitch_0
        0x726f0000 -> :sswitch_0
        0x72750000 -> :sswitch_b
        0x73690000 -> :sswitch_36
        0x736b0000 -> :sswitch_0
        0x736c0000 -> :sswitch_1
        0x73710000 -> :sswitch_28
        0x73720000 -> :sswitch_2
        0x73760000 -> :sswitch_12
        0x737a0000 -> :sswitch_0
        0x74610000 -> :sswitch_34
        0x74650000 -> :sswitch_35
        0x74670000 -> :sswitch_e
        0x74680000 -> :sswitch_1b
        0x746b0000 -> :sswitch_f
        0x74720000 -> :sswitch_3
        0x756b0000 -> :sswitch_13
        0x75720000 -> :sswitch_18
        0x757a0000 -> :sswitch_1d
        0x76690000 -> :sswitch_1c
        0x7a310000 -> :sswitch_2b
        0x7a680000 -> :sswitch_22
        0x7a68434e -> :sswitch_22
        0x7a68484b -> :sswitch_23
        0x7a685457 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getSplitNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 11
    .param p1    # Z

    const-string v8, "SamsungIME"

    const-string v9, "getSplitNumberPopupKeyboard"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v6

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "INPUT_LANGUAGE"

    const v10, 0x656e4742

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez v3, :cond_5

    if-eqz p1, :cond_5

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    :try_start_0
    const-string v8, "split_number_arrow"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :cond_2
    const/16 v8, 0xa

    if-ne v6, v8, :cond_6

    if-eqz v2, :cond_3

    :try_start_1
    const-string v8, "split_month_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v8, v7, :cond_4

    iget v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v8, v5, :cond_4

    iget-boolean v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    if-eq v8, v9, :cond_1c

    :cond_4
    if-eqz v5, :cond_1b

    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v8, v7, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_3
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_4
    return-object v8

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v8

    goto :goto_4

    :catch_1
    move-exception v1

    const v7, 0x7f0501dd

    goto :goto_1

    :cond_6
    const/16 v8, 0x9

    if-eq v6, v8, :cond_7

    const/16 v8, 0xe

    if-ne v6, v8, :cond_8

    :cond_7
    if-eqz v2, :cond_3

    :try_start_2
    const-string v8, "split_yeardatetime_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v7

    goto :goto_1

    :catch_2
    move-exception v1

    const v7, 0x7f0501ec

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v2, :cond_3

    :try_start_3
    const-string v8, "split_phone_number_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    goto :goto_1

    :catch_3
    move-exception v1

    const v7, 0x7f0501ec

    goto :goto_1

    :cond_9
    const/4 v8, 0x1

    if-ne v6, v8, :cond_a

    if-eqz v2, :cond_3

    :try_start_4
    const-string v8, "split_number_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v7

    goto :goto_1

    :catch_4
    move-exception v1

    const v7, 0x7f0501e4

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDecimalNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v2, :cond_3

    :try_start_5
    const-string v8, "split_number_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v7

    goto :goto_1

    :catch_5
    move-exception v1

    const v7, 0x7f0501e4

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedNumberInputType()Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v2, :cond_3

    :try_start_6
    const-string v8, "split_number_signed_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v7

    goto/16 :goto_1

    :catch_6
    move-exception v1

    const v7, 0x7f0501ea

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isSignedDecimalNumberInputType()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberOnlyInputType()Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    if-eqz v2, :cond_3

    :try_start_7
    const-string v8, "split_number_signed_decimal_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v7

    goto/16 :goto_1

    :catch_7
    move-exception v1

    const v7, 0x7f0501eb

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_f

    if-eqz v2, :cond_3

    :try_start_8
    const-string v8, "split_time_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v7

    goto/16 :goto_1

    :catch_8
    move-exception v1

    const v7, 0x7f050206

    goto/16 :goto_1

    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateInputType()Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz v2, :cond_3

    :try_start_9
    const-string v8, "split_date_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v7

    goto/16 :goto_1

    :catch_9
    move-exception v1

    const v7, 0x7f0501b5

    goto/16 :goto_1

    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputType()Z

    move-result v8

    if-eqz v8, :cond_11

    if-eqz v2, :cond_3

    :try_start_a
    const-string v8, "split_datetime_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    move-result v7

    goto/16 :goto_1

    :catch_a
    move-exception v1

    const v7, 0x7f0501b6

    goto/16 :goto_1

    :cond_11
    if-eqz p1, :cond_16

    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_12

    :try_start_b
    const-string v8, "split_number_symbols_left_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    move-result v7

    :goto_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "SYMBOLS_PAGE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    goto/16 :goto_1

    :cond_12
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_13

    :try_start_c
    const-string v8, "split_number_symbols_left_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_13
    const/high16 v8, 0x75720000

    if-ne v4, v8, :cond_14

    const-string v8, "split_number_symbols_left_urdu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_14
    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v8, :cond_15

    const-string v8, "split_number_symbols_left_ko"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_15
    const-string v8, "split_number_symbols_left"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v7

    goto :goto_5

    :catch_b
    move-exception v1

    const v7, 0x7f05027b

    goto :goto_5

    :cond_16
    const/high16 v8, 0x61720000

    if-ne v4, v8, :cond_17

    :try_start_d
    const-string v8, "split_number_symbols_right_arabic"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_17
    const/high16 v8, 0x66610000

    if-ne v4, v8, :cond_18

    const-string v8, "split_number_symbols_right_farsi"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_18
    const/high16 v8, 0x75720000

    if-ne v4, v8, :cond_19

    const-string v8, "split_number_symbols_right_urdu"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_19
    iget-boolean v8, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v8, :cond_1a

    const-string v8, "split_number_symbols_right_ko"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    :cond_1a
    const-string v8, "split_number_symbols_right"

    invoke-static {v8}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v7

    goto :goto_5

    :catch_c
    move-exception v1

    const v7, 0x7f05027b

    goto :goto_5

    :cond_1b
    new-instance v8, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    :cond_1c
    iget-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v8, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_3
.end method

.method private getSplitRightKeyboardXmlId(I)I
    .locals 14
    .param p1    # I

    const/high16 v11, -0x10000

    and-int v6, p1, v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v4

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const v11, 0x66724652

    if-eq p1, v11, :cond_1

    :cond_0
    move-object v8, v4

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    :try_start_0
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_0
    sparse-switch v6, :sswitch_data_0

    :try_start_1
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_4b

    move-result v10

    :cond_2
    :goto_1
    return v10

    :catch_0
    move-exception v2

    const v10, 0x7f05022d

    goto :goto_0

    :sswitch_0
    :try_start_2
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    goto :goto_1

    :catch_1
    move-exception v2

    const v10, 0x7f05022d

    goto :goto_1

    :sswitch_1
    :try_start_3
    const-string v11, "split_sl_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    goto :goto_1

    :catch_2
    move-exception v11

    :sswitch_2
    :try_start_4
    const-string v11, "split_qwertz_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v10

    goto :goto_1

    :catch_3
    move-exception v2

    const v10, 0x7f0502ae

    goto :goto_1

    :sswitch_3
    :try_start_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    :pswitch_0
    const-string v11, "split_tr_qwerty_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    :pswitch_1
    const-string v11, "split_tr_f_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v10

    goto :goto_1

    :catch_4
    move-exception v2

    const v10, 0x7f05022d

    goto :goto_1

    :sswitch_4
    const-string v11, "BE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :try_start_6
    const-string v11, "split_azerty_no_accent_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v10

    goto :goto_1

    :catch_5
    move-exception v2

    const/high16 v10, 0x7f050000

    goto :goto_1

    :cond_3
    :try_start_7
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v10

    goto :goto_1

    :catch_6
    move-exception v2

    const v10, 0x7f05022d

    goto :goto_1

    :sswitch_5
    :try_start_8
    const-string v11, "split_es_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v10

    goto :goto_1

    :catch_7
    move-exception v2

    const v10, 0x7f05022e

    goto :goto_1

    :sswitch_6
    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :try_start_9
    const-string v11, "split_qwertz_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_8

    move-result v10

    goto/16 :goto_1

    :catch_8
    move-exception v2

    const v10, 0x7f0502ae

    goto/16 :goto_1

    :cond_4
    :try_start_a
    const-string v11, "split_it_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_9

    move-result v10

    goto/16 :goto_1

    :catch_9
    move-exception v2

    const v10, 0x7f050237

    goto/16 :goto_1

    :sswitch_7
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_5

    :try_start_b
    const-string v11, "split_kr_cji_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_a

    move-result v10

    goto/16 :goto_1

    :catch_a
    move-exception v2

    const v10, 0x7f05026f

    goto/16 :goto_1

    :cond_5
    const/4 v11, 0x2

    if-ne v5, v11, :cond_6

    :try_start_c
    const-string v11, "split_kr_cji_turbo_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_b

    move-result v10

    goto/16 :goto_1

    :catch_b
    move-exception v2

    const v10, 0x7f05026f

    goto/16 :goto_1

    :cond_6
    if-nez v5, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v11

    if-eqz v11, :cond_7

    :try_start_d
    const-string v11, "split_kr_to_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_c

    move-result v10

    goto/16 :goto_1

    :catch_c
    move-exception v2

    const v10, 0x7f050270

    goto/16 :goto_1

    :cond_7
    :try_start_e
    const-string v11, "split_kr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_d

    move-result v10

    goto/16 :goto_1

    :catch_d
    move-exception v2

    const v10, 0x7f05026f

    goto/16 :goto_1

    :cond_8
    :try_start_f
    const-string v11, "split_kr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_f} :catch_e

    move-result v10

    goto/16 :goto_1

    :catch_e
    move-exception v2

    const v10, 0x7f05026f

    goto/16 :goto_1

    :sswitch_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_a

    const v11, 0x66724341

    if-ne p1, v11, :cond_9

    :try_start_10
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_f

    move-result v10

    goto/16 :goto_1

    :catch_f
    move-exception v2

    const v10, 0x7f05022d

    goto/16 :goto_1

    :cond_9
    :try_start_11
    const-string v11, "split_azerty_fr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_10

    move-result v10

    goto/16 :goto_1

    :catch_10
    move-exception v2

    const/high16 v10, 0x7f050000

    goto/16 :goto_1

    :cond_a
    const-string v11, "CA"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    :try_start_12
    const-string v11, "split_en_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_11

    move-result v10

    goto/16 :goto_1

    :catch_11
    move-exception v2

    const v10, 0x7f05022d

    goto/16 :goto_1

    :cond_b
    const-string v11, "CH"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    :try_start_13
    const-string v11, "split_qwertz_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_12

    move-result v10

    goto/16 :goto_1

    :catch_12
    move-exception v2

    const v10, 0x7f0502ae

    goto/16 :goto_1

    :cond_c
    :try_start_14
    const-string v11, "split_azerty_fr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_13

    move-result v10

    goto/16 :goto_1

    :catch_13
    move-exception v2

    const/high16 v10, 0x7f050000

    goto/16 :goto_1

    :sswitch_9
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_GERMAN_KEYBOARD_TYPE"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :try_start_15
    const-string v11, "split_qwertz_de_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_15

    move-result v10

    goto/16 :goto_1

    :pswitch_2
    :try_start_16
    const-string v11, "split_qwertz_de_plus_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_14

    move-result v10

    goto/16 :goto_1

    :catch_14
    move-exception v2

    const v10, 0x7f0502af

    goto/16 :goto_1

    :catch_15
    move-exception v2

    const v10, 0x7f0502af

    goto/16 :goto_1

    :sswitch_a
    :try_start_17
    const-string v11, "split_kk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_16

    move-result v10

    goto/16 :goto_1

    :catch_16
    move-exception v11

    :sswitch_b
    :try_start_18
    const-string v11, "split_ru_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_17

    move-result v10

    goto/16 :goto_1

    :catch_17
    move-exception v2

    const v10, 0x7f05029a

    goto/16 :goto_1

    :sswitch_c
    :try_start_19
    const-string v11, "split_mn_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_18

    move-result v10

    goto/16 :goto_1

    :catch_18
    move-exception v2

    const v10, 0x7f050277

    goto/16 :goto_1

    :sswitch_d
    :try_start_1a
    const-string v11, "split_ky_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_19

    move-result v10

    goto/16 :goto_1

    :catch_19
    move-exception v2

    const v10, 0x7f050271

    goto/16 :goto_1

    :sswitch_e
    :try_start_1b
    const-string v11, "split_tg_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_1a

    move-result v10

    goto/16 :goto_1

    :catch_1a
    move-exception v2

    const v10, 0x7f0502a0

    goto/16 :goto_1

    :sswitch_f
    :try_start_1c
    const-string v11, "split_tk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1c .. :try_end_1c} :catch_1b

    move-result v10

    goto/16 :goto_1

    :catch_1b
    move-exception v2

    const v10, 0x7f0502a2

    goto/16 :goto_1

    :sswitch_10
    :try_start_1d
    const-string v11, "split_da_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1d .. :try_end_1d} :catch_1c

    move-result v10

    goto/16 :goto_1

    :catch_1c
    move-exception v2

    const v10, 0x7f05022a

    goto/16 :goto_1

    :sswitch_11
    :try_start_1e
    const-string v11, "split_nb_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1e .. :try_end_1e} :catch_1d

    move-result v10

    goto/16 :goto_1

    :catch_1d
    move-exception v2

    const v10, 0x7f050279

    goto/16 :goto_1

    :sswitch_12
    :try_start_1f
    const-string v11, "split_fi_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1f .. :try_end_1f} :catch_1e

    move-result v10

    goto/16 :goto_1

    :catch_1e
    move-exception v2

    const v10, 0x7f050231

    goto/16 :goto_1

    :sswitch_13
    :try_start_20
    const-string v11, "split_uk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_20
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_20} :catch_1f

    move-result v10

    goto/16 :goto_1

    :catch_1f
    move-exception v2

    const v10, 0x7f0502a5

    goto/16 :goto_1

    :sswitch_14
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :try_start_21
    const-string v11, "split_bg_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_21} :catch_22

    move-result v10

    goto/16 :goto_1

    :pswitch_3
    :try_start_22
    const-string v11, "split_bg_phonetic_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_22} :catch_20

    move-result v10

    goto/16 :goto_1

    :catch_20
    move-exception v2

    :try_start_23
    const-string v11, "split_bg_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_23} :catch_21

    move-result v10

    goto/16 :goto_1

    :catch_21
    move-exception v1

    const v10, 0x7f050225

    goto/16 :goto_1

    :catch_22
    move-exception v2

    const v10, 0x7f050225

    goto/16 :goto_1

    :sswitch_15
    :try_start_24
    const-string v11, "split_el_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_24 .. :try_end_24} :catch_23

    move-result v10

    goto/16 :goto_1

    :catch_23
    move-exception v2

    const v10, 0x7f05022b

    goto/16 :goto_1

    :sswitch_16
    :try_start_25
    const-string v11, "split_lv_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25 .. :try_end_25} :catch_24

    move-result v10

    goto/16 :goto_1

    :catch_24
    move-exception v2

    const v10, 0x7f050274

    goto/16 :goto_1

    :sswitch_17
    :try_start_26
    const-string v11, "split_ar_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26 .. :try_end_26} :catch_25

    move-result v10

    goto/16 :goto_1

    :catch_25
    move-exception v2

    const v10, 0x7f050221

    goto/16 :goto_1

    :sswitch_18
    :try_start_27
    const-string v11, "split_ur_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_27 .. :try_end_27} :catch_26

    move-result v10

    goto/16 :goto_1

    :catch_26
    move-exception v2

    const v10, 0x7f0502a6

    goto/16 :goto_1

    :sswitch_19
    :try_start_28
    const-string v11, "split_fa_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_28} :catch_27

    move-result v10

    goto/16 :goto_1

    :catch_27
    move-exception v2

    const v10, 0x7f050230

    goto/16 :goto_1

    :sswitch_1a
    :try_start_29
    const-string v11, "split_he_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_29} :catch_28

    move-result v10

    goto/16 :goto_1

    :catch_28
    move-exception v2

    const v10, 0x7f050233

    goto/16 :goto_1

    :sswitch_1b
    :try_start_2a
    const-string v11, "split_th_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2a .. :try_end_2a} :catch_29

    move-result v10

    goto/16 :goto_1

    :catch_29
    move-exception v2

    const v10, 0x7f0502a1

    goto/16 :goto_1

    :sswitch_1c
    :try_start_2b
    const-string v11, "split_vi_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2b .. :try_end_2b} :catch_2a

    move-result v10

    goto/16 :goto_1

    :catch_2a
    move-exception v2

    const v10, 0x7f0502a8

    goto/16 :goto_1

    :sswitch_1d
    :try_start_2c
    const-string v11, "split_uz_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_2c} :catch_2b

    move-result v10

    goto/16 :goto_1

    :catch_2b
    move-exception v2

    const v10, 0x7f0502a7

    goto/16 :goto_1

    :sswitch_1e
    :try_start_2d
    const-string v11, "split_az_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2d .. :try_end_2d} :catch_2c

    move-result v10

    goto/16 :goto_1

    :catch_2c
    move-exception v2

    const v10, 0x7f050223

    goto/16 :goto_1

    :sswitch_1f
    :try_start_2e
    const-string v11, "split_hy_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2e .. :try_end_2e} :catch_2d

    move-result v10

    goto/16 :goto_1

    :catch_2d
    move-exception v2

    const v10, 0x7f050235

    goto/16 :goto_1

    :sswitch_20
    :try_start_2f
    const-string v11, "split_ka_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2f .. :try_end_2f} :catch_2e

    move-result v10

    goto/16 :goto_1

    :catch_2e
    move-exception v2

    const v10, 0x7f050239

    goto/16 :goto_1

    :sswitch_21
    const v11, 0x7a68484b

    if-ne p1, v11, :cond_d

    :try_start_30
    const-string v11, "split_zk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_30} :catch_2f

    move-result v10

    goto/16 :goto_1

    :catch_2f
    move-exception v2

    const v10, 0x7f0502aa

    goto/16 :goto_1

    :cond_d
    const v11, 0x7a685457

    if-ne p1, v11, :cond_e

    :try_start_31
    const-string v11, "split_zt_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_31} :catch_30

    move-result v10

    goto/16 :goto_1

    :catch_30
    move-exception v2

    const v10, 0x7f0502ab

    goto/16 :goto_1

    :cond_e
    :try_start_32
    const-string v11, "split_cn_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_32 .. :try_end_32} :catch_31

    move-result v10

    goto/16 :goto_1

    :catch_31
    move-exception v2

    const v10, 0x7f050228

    goto/16 :goto_1

    :sswitch_22
    :try_start_33
    const-string v11, "split_zk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_33 .. :try_end_33} :catch_32

    move-result v10

    goto/16 :goto_1

    :catch_32
    move-exception v2

    const v10, 0x7f0502aa

    goto/16 :goto_1

    :sswitch_23
    :try_start_34
    const-string v11, "split_zt_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_34 .. :try_end_34} :catch_33

    move-result v10

    goto/16 :goto_1

    :catch_33
    move-exception v2

    const v10, 0x7f0502ab

    goto/16 :goto_1

    :sswitch_24
    :try_start_35
    const-string v11, "split_lt_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_35} :catch_34

    move-result v10

    goto/16 :goto_1

    :catch_34
    move-exception v2

    const v10, 0x7f050273

    goto/16 :goto_1

    :sswitch_25
    :try_start_36
    const-string v11, "split_is_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_36
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_36 .. :try_end_36} :catch_35

    move-result v10

    goto/16 :goto_1

    :catch_35
    move-exception v2

    const v10, 0x7f050236

    goto/16 :goto_1

    :sswitch_26
    :try_start_37
    const-string v11, "split_mk_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_37 .. :try_end_37} :catch_36

    move-result v10

    goto/16 :goto_1

    :catch_36
    move-exception v2

    const v10, 0x7f050275

    goto/16 :goto_1

    :sswitch_27
    :try_start_38
    const-string v11, "split_et_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_38
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_38 .. :try_end_38} :catch_37

    move-result v10

    goto/16 :goto_1

    :catch_37
    move-exception v2

    const v10, 0x7f05022f

    goto/16 :goto_1

    :sswitch_28
    :try_start_39
    const-string v11, "split_sq_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_39} :catch_38

    move-result v10

    goto/16 :goto_1

    :catch_38
    move-exception v2

    const v10, 0x7f05029d

    goto/16 :goto_1

    :sswitch_29
    :try_start_3a
    const-string v11, "split_km_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3a .. :try_end_3a} :catch_39

    move-result v10

    goto/16 :goto_1

    :catch_39
    move-exception v2

    const v10, 0x7f05023b

    goto/16 :goto_1

    :sswitch_2a
    :try_start_3b
    const-string v11, "split_lo_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3b .. :try_end_3b} :catch_3a

    move-result v10

    goto/16 :goto_1

    :catch_3a
    move-exception v2

    const v10, 0x7f050272

    goto/16 :goto_1

    :sswitch_2b
    const v11, 0x7a314d4d

    if-ne p1, v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v11

    if-eqz v11, :cond_f

    :try_start_3c
    const-string v11, "split_zw_right_shift_on"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3c .. :try_end_3c} :catch_3b

    move-result v10

    goto/16 :goto_1

    :catch_3b
    move-exception v2

    const v10, 0x7f0502ac

    goto/16 :goto_1

    :cond_f
    :try_start_3d
    const-string v11, "split_zw_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3d .. :try_end_3d} :catch_3c

    move-result v10

    goto/16 :goto_1

    :catch_3c
    move-exception v2

    const v10, 0x7f0502ac

    goto/16 :goto_1

    :sswitch_2c
    :try_start_3e
    const-string v11, "split_ja_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3e .. :try_end_3e} :catch_3d

    move-result v10

    goto/16 :goto_1

    :catch_3d
    move-exception v2

    const v10, 0x7f050238

    goto/16 :goto_1

    :sswitch_2d
    :try_start_3f
    const-string v11, "split_hi_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3f .. :try_end_3f} :catch_3e

    move-result v10

    goto/16 :goto_1

    :catch_3e
    move-exception v2

    const v10, 0x7f050234

    goto/16 :goto_1

    :sswitch_2e
    :try_start_40
    const-string v11, "split_bn_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_40 .. :try_end_40} :catch_3f

    move-result v10

    goto/16 :goto_1

    :catch_3f
    move-exception v2

    const v10, 0x7f050227

    goto/16 :goto_1

    :sswitch_2f
    :try_start_41
    const-string v11, "split_gu_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_41
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_41 .. :try_end_41} :catch_40

    move-result v10

    goto/16 :goto_1

    :catch_40
    move-exception v2

    const v10, 0x7f050232

    goto/16 :goto_1

    :sswitch_30
    :try_start_42
    const-string v11, "split_kn_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_42 .. :try_end_42} :catch_41

    move-result v10

    goto/16 :goto_1

    :catch_41
    move-exception v2

    const v10, 0x7f05023c

    goto/16 :goto_1

    :sswitch_31
    :try_start_43
    const-string v11, "split_mr_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_43
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_43 .. :try_end_43} :catch_42

    move-result v10

    goto/16 :goto_1

    :catch_42
    move-exception v2

    const v10, 0x7f050278

    goto/16 :goto_1

    :sswitch_32
    :try_start_44
    const-string v11, "split_ml_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_44 .. :try_end_44} :catch_43

    move-result v10

    goto/16 :goto_1

    :catch_43
    move-exception v2

    const v10, 0x7f050276

    goto/16 :goto_1

    :sswitch_33
    :try_start_45
    const-string v11, "split_pa_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_45 .. :try_end_45} :catch_44

    move-result v10

    goto/16 :goto_1

    :catch_44
    move-exception v2

    const v10, 0x7f050299

    goto/16 :goto_1

    :sswitch_34
    :try_start_46
    const-string v11, "split_ta_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_46 .. :try_end_46} :catch_45

    move-result v10

    goto/16 :goto_1

    :catch_45
    move-exception v2

    const v10, 0x7f05029e

    goto/16 :goto_1

    :sswitch_35
    :try_start_47
    const-string v11, "split_te_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_47
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_47 .. :try_end_47} :catch_46

    move-result v10

    goto/16 :goto_1

    :catch_46
    move-exception v2

    const v10, 0x7f05029f

    goto/16 :goto_1

    :sswitch_36
    :try_start_48
    const-string v11, "split_si_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_48
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_48 .. :try_end_48} :catch_47

    move-result v10

    goto/16 :goto_1

    :catch_47
    move-exception v2

    const v10, 0x7f05029b

    goto/16 :goto_1

    :sswitch_37
    :try_start_49
    const-string v11, "split_as_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_49 .. :try_end_49} :catch_48

    move-result v10

    goto/16 :goto_1

    :catch_48
    move-exception v2

    const v10, 0x7f050222

    goto/16 :goto_1

    :sswitch_38
    :try_start_4a
    const-string v11, "split_ne_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4a .. :try_end_4a} :catch_49

    move-result v10

    goto/16 :goto_1

    :catch_49
    move-exception v2

    const v10, 0x7f05027a

    goto/16 :goto_1

    :sswitch_39
    :try_start_4b
    const-string v11, "split_or_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_4b} :catch_4a

    move-result v10

    goto/16 :goto_1

    :catch_4a
    move-exception v2

    const v10, 0x7f050298

    goto/16 :goto_1

    :catch_4b
    move-exception v2

    const v10, 0x7f05022d

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_17
        0x61730000 -> :sswitch_37
        0x617a0000 -> :sswitch_1e
        0x62670000 -> :sswitch_14
        0x626e0000 -> :sswitch_2e
        0x63610000 -> :sswitch_0
        0x63730000 -> :sswitch_2
        0x64610000 -> :sswitch_10
        0x64650000 -> :sswitch_9
        0x656c0000 -> :sswitch_15
        0x656e0000 -> :sswitch_0
        0x65730000 -> :sswitch_5
        0x65734553 -> :sswitch_5
        0x65735553 -> :sswitch_5
        0x65740000 -> :sswitch_27
        0x65750000 -> :sswitch_0
        0x66610000 -> :sswitch_19
        0x66690000 -> :sswitch_12
        0x66720000 -> :sswitch_8
        0x66724341 -> :sswitch_8
        0x66724652 -> :sswitch_8
        0x676c0000 -> :sswitch_0
        0x67750000 -> :sswitch_2f
        0x68690000 -> :sswitch_2d
        0x68720000 -> :sswitch_2
        0x68750000 -> :sswitch_2
        0x68790000 -> :sswitch_1f
        0x69730000 -> :sswitch_25
        0x69740000 -> :sswitch_6
        0x69770000 -> :sswitch_1a
        0x6a610000 -> :sswitch_2c
        0x6b610000 -> :sswitch_20
        0x6b6b0000 -> :sswitch_a
        0x6b6d0000 -> :sswitch_29
        0x6b6e0000 -> :sswitch_30
        0x6b6f0000 -> :sswitch_7
        0x6b790000 -> :sswitch_d
        0x6c6f0000 -> :sswitch_2a
        0x6c740000 -> :sswitch_24
        0x6c760000 -> :sswitch_16
        0x6d6b0000 -> :sswitch_26
        0x6d6c0000 -> :sswitch_32
        0x6d6e0000 -> :sswitch_c
        0x6d720000 -> :sswitch_31
        0x6e620000 -> :sswitch_11
        0x6e650000 -> :sswitch_38
        0x6e6c0000 -> :sswitch_4
        0x6f720000 -> :sswitch_39
        0x70610000 -> :sswitch_33
        0x706c0000 -> :sswitch_0
        0x70740000 -> :sswitch_0
        0x726f0000 -> :sswitch_0
        0x72750000 -> :sswitch_b
        0x73690000 -> :sswitch_36
        0x736b0000 -> :sswitch_0
        0x736c0000 -> :sswitch_1
        0x73710000 -> :sswitch_28
        0x73720000 -> :sswitch_2
        0x73760000 -> :sswitch_12
        0x737a0000 -> :sswitch_0
        0x74610000 -> :sswitch_34
        0x74650000 -> :sswitch_35
        0x74670000 -> :sswitch_e
        0x74680000 -> :sswitch_1b
        0x746b0000 -> :sswitch_f
        0x74720000 -> :sswitch_3
        0x756b0000 -> :sswitch_13
        0x75720000 -> :sswitch_18
        0x757a0000 -> :sswitch_1d
        0x76690000 -> :sswitch_1c
        0x7a310000 -> :sswitch_2b
        0x7a680000 -> :sswitch_21
        0x7a68434e -> :sswitch_21
        0x7a68484b -> :sswitch_22
        0x7a685457 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private getSymbolKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 12

    const-string v9, "SamsungIME"

    const-string v10, "getSymbolKeyboard"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "INPUT_LANGUAGE"

    const v11, 0x656e4742

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v1

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1f

    if-eqz v1, :cond_2

    const v8, 0x7f0501ed

    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v9, v8, :cond_1

    iget v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v9, v5, :cond_1

    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v10

    if-eq v9, v10, :cond_38

    :cond_1
    if-eqz v5, :cond_37

    new-instance v9, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v8, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v9, v8, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_2
    iget-object v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v9

    :cond_2
    const-string v9, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const v8, 0x7f050286

    :goto_3
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getValidSymbolsPage(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    if-eq v6, v7, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SYMBOLS_PAGE"

    invoke-interface {v9, v10, v7}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const v8, 0x7f050285

    goto :goto_3

    :cond_4
    const/high16 v9, 0x61720000

    if-ne v3, v9, :cond_5

    const v8, 0x7f05027d

    goto :goto_3

    :cond_5
    const/high16 v9, 0x66610000

    if-ne v3, v9, :cond_6

    const v8, 0x7f050283

    goto :goto_3

    :cond_6
    const/high16 v9, 0x75720000

    if-ne v3, v9, :cond_7

    const v8, 0x7f050296

    goto :goto_3

    :cond_7
    const/high16 v9, 0x68690000

    if-ne v3, v9, :cond_8

    const v8, 0x7f050288

    goto :goto_3

    :cond_8
    const/high16 v9, 0x626e0000

    if-ne v3, v9, :cond_9

    const v8, 0x7f050281

    goto :goto_3

    :cond_9
    const/high16 v9, 0x67750000

    if-ne v3, v9, :cond_a

    const v8, 0x7f050284

    goto :goto_3

    :cond_a
    const/high16 v9, 0x6b6e0000

    if-ne v3, v9, :cond_b

    const v8, 0x7f05028a

    goto :goto_3

    :cond_b
    const/high16 v9, 0x6d6c0000

    if-ne v3, v9, :cond_c

    const v8, 0x7f05028d

    goto :goto_3

    :cond_c
    const/high16 v9, 0x6d720000

    if-ne v3, v9, :cond_d

    const v8, 0x7f05028e

    goto :goto_3

    :cond_d
    const/high16 v9, 0x70610000

    if-ne v3, v9, :cond_e

    const v8, 0x7f050291

    goto :goto_3

    :cond_e
    const/high16 v9, 0x73690000

    if-ne v3, v9, :cond_f

    const v8, 0x7f050292

    goto :goto_3

    :cond_f
    const/high16 v9, 0x74650000

    if-ne v3, v9, :cond_10

    const v8, 0x7f050294

    goto :goto_3

    :cond_10
    const/high16 v9, 0x74610000

    if-ne v3, v9, :cond_11

    const v8, 0x7f050293

    goto/16 :goto_3

    :cond_11
    const/high16 v9, 0x61730000

    if-ne v3, v9, :cond_12

    const v8, 0x7f05027e

    goto/16 :goto_3

    :cond_12
    const/high16 v9, 0x6e650000

    if-ne v3, v9, :cond_13

    const v8, 0x7f05028f

    goto/16 :goto_3

    :cond_13
    const/high16 v9, 0x6f720000

    if-ne v3, v9, :cond_14

    const v8, 0x7f050290

    goto/16 :goto_3

    :cond_14
    const/high16 v9, 0x6b6d0000

    if-ne v3, v9, :cond_15

    const v8, 0x7f050289

    goto/16 :goto_3

    :cond_15
    const/high16 v9, 0x6c6f0000

    if-ne v3, v9, :cond_16

    const v8, 0x7f05028c

    goto/16 :goto_3

    :cond_16
    const v9, 0x7a314d4d

    if-ne v3, v9, :cond_17

    const v8, 0x7f050297

    goto/16 :goto_3

    :cond_17
    const/high16 v9, 0x74680000

    if-ne v3, v9, :cond_18

    const v8, 0x7f050295

    goto/16 :goto_3

    :cond_18
    const/high16 v9, 0x65730000

    if-eq v3, v9, :cond_19

    const v9, 0x65734553

    if-eq v3, v9, :cond_19

    const v9, 0x65735553

    if-ne v3, v9, :cond_1a

    :cond_19
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-nez v9, :cond_1a

    :try_start_0
    const-string v9, "qwerty_number_symbols_es"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto/16 :goto_3

    :catch_0
    move-exception v0

    const v8, 0x7f05027b

    goto/16 :goto_3

    :cond_1a
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v9, :cond_1b

    const v8, 0x7f05027f

    goto/16 :goto_3

    :cond_1b
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v9, :cond_1c

    const v8, 0x7f050280

    goto/16 :goto_3

    :cond_1c
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v9, :cond_1d

    :try_start_1
    const-string v9, "qwerty_number_symbols_add_smiley"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    goto/16 :goto_3

    :catch_1
    move-exception v0

    const v8, 0x7f05027b

    goto/16 :goto_3

    :cond_1d
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v9

    if-eqz v9, :cond_1e

    const v8, 0x7f05028b

    goto/16 :goto_3

    :cond_1e
    const v8, 0x7f05027b

    goto/16 :goto_3

    :cond_1f
    const/4 v9, 0x1

    if-ne v4, v9, :cond_2a

    if-eqz v1, :cond_20

    const v8, 0x7f0501ed

    goto/16 :goto_0

    :cond_20
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-eqz v9, :cond_23

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v2

    const/4 v9, 0x1

    if-ne v2, v9, :cond_21

    :try_start_2
    const-string v9, "phonepad_kr_cji_symbol"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    :goto_4
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    goto/16 :goto_0

    :cond_21
    const/4 v9, 0x2

    if-ne v2, v9, :cond_22

    :try_start_3
    const-string v9, "phonepad_kr_cji_turbo_symbol"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v8

    goto :goto_4

    :cond_22
    const v8, 0x7f0501fe

    goto :goto_4

    :catch_2
    move-exception v0

    const v8, 0x7f0501fe

    goto :goto_4

    :cond_23
    const-string v9, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v9

    if-eqz v9, :cond_24

    const v8, 0x7f0501fc

    goto :goto_4

    :cond_24
    const v8, 0x7f0501fb

    goto :goto_4

    :cond_25
    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v9

    if-eqz v9, :cond_26

    const v8, 0x7f0501fa

    goto :goto_4

    :cond_26
    const/high16 v9, 0x6b6d0000

    if-ne v3, v9, :cond_27

    const v8, 0x7f0501fd

    goto :goto_4

    :cond_27
    const/high16 v9, 0x6c6f0000

    if-ne v3, v9, :cond_28

    const v8, 0x7f0501ff

    goto :goto_4

    :cond_28
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v9

    if-eqz v9, :cond_29

    const v8, 0x7f0501fe

    goto :goto_4

    :cond_29
    const v8, 0x7f0501f9

    goto :goto_4

    :cond_2a
    const/4 v9, 0x2

    if-ne v4, v9, :cond_2c

    invoke-direct {p0, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHWRSymbolKeyboardXmlId(I)I

    move-result v8

    if-eqz v8, :cond_2b

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    :goto_5
    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME"

    const-string v10, "getSymbolKeyboard() - wrong keyboard mode in s3"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2b
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v8

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v5

    goto :goto_5

    :cond_2c
    const/4 v9, 0x4

    if-ne v4, v9, :cond_2d

    const v8, 0x7f0500e1

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v5

    sget-boolean v9, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SamsungIME"

    const-string v10, "getSymbolKeyboard() - wrong keyboard mode in s3"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2d
    const-string v9, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v9

    if-eqz v9, :cond_2e

    const v8, 0x7f050286

    :goto_6
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SYMBOLS_PAGE"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v9}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v5

    goto/16 :goto_0

    :cond_2e
    const v8, 0x7f050285

    goto :goto_6

    :cond_2f
    const/high16 v9, 0x61720000

    if-ne v3, v9, :cond_30

    const v8, 0x7f05027d

    goto :goto_6

    :cond_30
    const/high16 v9, 0x66610000

    if-ne v3, v9, :cond_31

    const v8, 0x7f050283

    goto :goto_6

    :cond_31
    const/high16 v9, 0x75720000

    if-ne v3, v9, :cond_32

    const v8, 0x7f050296

    goto :goto_6

    :cond_32
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v9, :cond_33

    const v8, 0x7f05027f

    goto :goto_6

    :cond_33
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v9, :cond_34

    const v8, 0x7f050280

    goto :goto_6

    :cond_34
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v9, :cond_35

    :try_start_4
    const-string v9, "qwerty_number_symbols_add_smiley"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v8

    goto :goto_6

    :catch_3
    move-exception v0

    const v8, 0x7f05027b

    goto :goto_6

    :cond_35
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v9

    if-eqz v9, :cond_36

    const v8, 0x7f05028b

    goto :goto_6

    :cond_36
    const v8, 0x7f05027b

    goto :goto_6

    :cond_37
    new-instance v9, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v8}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_38
    iget-object v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2
.end method

.method private getSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 14
    .param p1    # Z

    const-string v11, "SamsungIME"

    const-string v12, "getSymbolPopupKeyboard"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v10, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "INPUT_LANGUAGE"

    const v13, 0x656e4742

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v3

    const/4 v11, 0x7

    if-ne v6, v11, :cond_54

    if-eqz v2, :cond_6

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    const-string v11, "split_number_arrow"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_0
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v11, v10, :cond_0

    iget v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v11, v7, :cond_0

    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v12

    if-eq v11, v12, :cond_8e

    :cond_0
    if-eqz v7, :cond_8d

    new-instance v11, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v10, v7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v11, v10, v7}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v11

    :cond_1
    :try_start_1
    const-string v11, "split_phone_symbol_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const-string v11, "split_phone_symbol_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    :cond_3
    const-string v11, "split_number_arrow"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    goto :goto_0

    :catch_0
    move-exception v1

    const v10, 0x7f0501ed

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :try_start_2
    const-string v11, "split_phone_symbol_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v10

    goto :goto_0

    :catch_1
    move-exception v1

    const v10, 0x7f0501ed

    goto :goto_0

    :cond_5
    :try_start_3
    const-string v11, "split_phone_symbol_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v10

    goto :goto_0

    :catch_2
    move-exception v1

    const v10, 0x7f0501ed

    goto :goto_0

    :cond_6
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_f

    const/high16 v11, 0x6b6f0000

    if-ne v5, v11, :cond_f

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_9

    if-eqz p1, :cond_8

    :try_start_4
    const-string v11, "split_kr_cji_symbol_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v10

    :cond_7
    :goto_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SYMBOLS_PAGE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_0

    :cond_8
    :try_start_5
    const-string v11, "split_kr_cji_symbol_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v10

    goto :goto_3

    :catch_3
    move-exception v1

    const v10, 0x7f05027b

    goto :goto_3

    :cond_9
    const/4 v11, 0x2

    if-ne v4, v11, :cond_b

    if-eqz p1, :cond_a

    :try_start_6
    const-string v11, "split_kr_cji_turbo_symbol_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    :cond_a
    const-string v11, "split_kr_cji_turbo_symbol_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v10

    goto :goto_3

    :catch_4
    move-exception v1

    const v10, 0x7f05027b

    goto :goto_3

    :cond_b
    if-nez v4, :cond_7

    if-eqz p1, :cond_d

    :try_start_7
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_c

    const-string v11, "split_number_symbols_left_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    :cond_c
    const-string v11, "split_number_symbols_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    :cond_d
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_e

    const-string v11, "split_number_symbols_right_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    :cond_e
    const-string v11, "split_number_symbols_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v10

    goto :goto_3

    :catch_5
    move-exception v1

    const v10, 0x7f05027b

    goto :goto_3

    :cond_f
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v11

    if-eqz v11, :cond_1f

    if-eqz v3, :cond_17

    if-eqz p1, :cond_16

    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_10

    :try_start_8
    const-string v11, "split_number_symbols_left_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_3

    :cond_10
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_11

    const-string v11, "split_number_symbols_left_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_11
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_12

    const-string v11, "split_number_symbols_left_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_12
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v11, :cond_13

    const-string v11, "split_number_symbols_left_att"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_13
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v11, :cond_14

    const-string v11, "split_number_symbols_left_att_with_number_key_first_line"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_14
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_15

    const-string v11, "split_number_symbols_left_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_15
    const-string v11, "split_number_symbols_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_16
    const-string v11, "split_number_arrow"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_17
    if-eqz p1, :cond_18

    const-string v11, "split_number_arrow"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_18
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_19

    const-string v11, "split_number_symbols_left_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_19
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_1a

    const-string v11, "split_number_symbols_left_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_1a
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_1b

    const-string v11, "split_number_symbols_left_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_1b
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v11, :cond_1c

    const-string v11, "split_number_symbols_left_att"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_1c
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v11, :cond_1d

    const-string v11, "split_number_symbols_left_att_with_number_key_first_line"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_1d
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_1e

    const-string v11, "split_number_symbols_left_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_1e
    const-string v11, "split_number_symbols_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v10

    goto/16 :goto_3

    :catch_6
    move-exception v0

    const v10, 0x7f05027b

    goto/16 :goto_3

    :cond_1f
    if-eqz p1, :cond_39

    :try_start_9
    const-string v11, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_20

    const-string v11, "split_number_symbols_left_he_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_20
    const-string v11, "split_number_symbols_left_he"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_21
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_22

    const-string v11, "split_number_symbols_left_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_22
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_23

    const-string v11, "split_number_symbols_left_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_23
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_24

    const-string v11, "split_number_symbols_left_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_24
    const/high16 v11, 0x6b6d0000

    if-ne v5, v11, :cond_25

    const-string v11, "split_number_symbols_left_km"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_25
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_26

    const-string v11, "split_number_symbols_left_lo"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_26
    const v11, 0x7a314d4d

    if-ne v5, v11, :cond_27

    const-string v11, "split_number_symbols_left_zw"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_27
    const/high16 v11, 0x68690000

    if-ne v5, v11, :cond_28

    const-string v11, "split_number_symbols_left_hi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_28
    const/high16 v11, 0x626e0000

    if-ne v5, v11, :cond_29

    const-string v11, "split_number_symbols_left_bn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_29
    const/high16 v11, 0x67750000

    if-ne v5, v11, :cond_2a

    const-string v11, "split_number_symbols_left_gu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_2a
    const/high16 v11, 0x74610000

    if-ne v5, v11, :cond_2b

    const-string v11, "split_number_symbols_left_ta"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_2b
    const/high16 v11, 0x6b6e0000

    if-ne v5, v11, :cond_2c

    const-string v11, "split_number_symbols_left_kn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_2c
    const/high16 v11, 0x74650000

    if-ne v5, v11, :cond_2d

    const-string v11, "split_number_symbols_left_te"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_2d
    const/high16 v11, 0x6d6c0000

    if-ne v5, v11, :cond_2e

    const-string v11, "split_number_symbols_left_ml"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_2e
    const/high16 v11, 0x6d720000

    if-ne v5, v11, :cond_2f

    const-string v11, "split_number_symbols_left_mr"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_2f
    const/high16 v11, 0x70610000

    if-ne v5, v11, :cond_30

    const-string v11, "split_number_symbols_left_pa"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_30
    const/high16 v11, 0x73690000

    if-ne v5, v11, :cond_31

    const-string v11, "split_number_symbols_left_si"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_31
    const/high16 v11, 0x61730000

    if-ne v5, v11, :cond_32

    const-string v11, "split_number_symbols_left_as"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_32
    const/high16 v11, 0x6e650000

    if-ne v5, v11, :cond_33

    const-string v11, "split_number_symbols_left_ne"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_33
    const/high16 v11, 0x6f720000

    if-ne v5, v11, :cond_34

    const-string v11, "split_number_symbols_left_or"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_34
    const/high16 v11, 0x74680000

    if-ne v5, v11, :cond_35

    const-string v11, "split_number_symbols_left_th"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_35
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v11, :cond_36

    const-string v11, "split_number_symbols_left_att"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_36
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v11, :cond_37

    const-string v11, "split_number_symbols_left_att_with_number_key_first_line"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_37
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_38

    const-string v11, "split_number_symbols_left_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3

    :cond_38
    const-string v11, "split_number_symbols_left"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v10

    goto/16 :goto_3

    :catch_7
    move-exception v1

    const v10, 0x7f05027b

    goto/16 :goto_3

    :cond_39
    :try_start_a
    const-string v11, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b

    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_3a

    const-string v11, "split_number_symbols_right_he_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_8

    move-result v10

    :goto_4
    const v11, 0x7f05027b

    if-ne v10, v11, :cond_7

    const/4 v8, 0x0

    :try_start_b
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_53

    const-string v11, "split_number_symbols_right_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_12

    move-result v8

    :goto_5
    move v10, v8

    goto/16 :goto_3

    :cond_3a
    :try_start_c
    const-string v11, "split_number_symbols_right_he"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_3b
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_3c

    const-string v11, "split_number_symbols_right_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_3c
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_3d

    const-string v11, "split_number_symbols_right_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_3d
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_3e

    const-string v11, "split_number_symbols_right_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_3e
    const/high16 v11, 0x6b6d0000

    if-ne v5, v11, :cond_3f

    const-string v11, "split_number_symbols_right_km"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_3f
    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isLaoLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_40

    const-string v11, "split_number_symbols_right_lo"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_40
    const v11, 0x7a314d4d

    if-ne v5, v11, :cond_41

    const-string v11, "split_number_symbols_right_zw"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_41
    const/high16 v11, 0x68690000

    if-ne v5, v11, :cond_42

    const-string v11, "split_number_symbols_right_hi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_42
    const/high16 v11, 0x626e0000

    if-ne v5, v11, :cond_43

    const-string v11, "split_number_symbols_right_bn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_43
    const/high16 v11, 0x67750000

    if-ne v5, v11, :cond_44

    const-string v11, "split_number_symbols_right_gu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_4

    :cond_44
    const/high16 v11, 0x74610000

    if-ne v5, v11, :cond_45

    const-string v11, "split_number_symbols_right_ta"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_45
    const/high16 v11, 0x6b6e0000

    if-ne v5, v11, :cond_46

    const-string v11, "split_number_symbols_right_kn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_46
    const/high16 v11, 0x74650000

    if-ne v5, v11, :cond_47

    const-string v11, "split_number_symbols_right_te"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_47
    const/high16 v11, 0x6d6c0000

    if-ne v5, v11, :cond_48

    const-string v11, "split_number_symbols_right_ml"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_48
    const/high16 v11, 0x6d720000

    if-ne v5, v11, :cond_49

    const-string v11, "split_number_symbols_right_mr"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_49
    const/high16 v11, 0x70610000

    if-ne v5, v11, :cond_4a

    const-string v11, "split_number_symbols_right_pa"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_4a
    const/high16 v11, 0x73690000

    if-ne v5, v11, :cond_4b

    const-string v11, "split_number_symbols_right_si"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_4b
    const/high16 v11, 0x61730000

    if-ne v5, v11, :cond_4c

    const-string v11, "split_number_symbols_right_as"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_4c
    const/high16 v11, 0x6e650000

    if-ne v5, v11, :cond_4d

    const-string v11, "split_number_symbols_right_ne"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_4d
    const/high16 v11, 0x6f720000

    if-ne v5, v11, :cond_4e

    const-string v11, "split_number_symbols_right_or"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_4e
    const/high16 v11, 0x74680000

    if-ne v5, v11, :cond_4f

    const-string v11, "split_number_symbols_right_th"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_4f
    const/high16 v11, 0x65730000

    if-eq v5, v11, :cond_50

    const v11, 0x65734553

    if-eq v5, v11, :cond_50

    const v11, 0x65735553

    if-ne v5, v11, :cond_51

    :cond_50
    const-string v11, "split_number_symbols_right_es"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_51
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_52

    const-string v11, "split_number_symbols_right_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_4

    :cond_52
    const-string v11, "split_number_symbols_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_8

    move-result v10

    goto/16 :goto_4

    :catch_8
    move-exception v1

    const v10, 0x7f05027b

    goto/16 :goto_4

    :cond_53
    :try_start_d
    const-string v11, "split_number_symbols_right"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_12

    move-result v8

    goto/16 :goto_5

    :cond_54
    const/16 v11, 0x8

    if-ne v6, v11, :cond_8b

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v11

    if-eqz v11, :cond_5e

    :try_start_e
    const-string v11, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_56

    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_55

    const-string v11, "floating_number_symbols_he_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    move-result v10

    :goto_6
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SYMBOLS_PAGE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_0

    :cond_55
    :try_start_f
    const-string v11, "floating_number_symbols_he"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    :cond_56
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_57

    const-string v11, "floating_number_symbols_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    :cond_57
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_58

    const-string v11, "floating_number_symbols_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    :cond_58
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_59

    const-string v11, "floating_number_symbols_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    :cond_59
    const/high16 v11, 0x74680000

    if-ne v5, v11, :cond_5a

    const-string v11, "floating_number_symbols_th"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    :cond_5a
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_5b

    const-string v11, "floating_number_symbols_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    :cond_5b
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v11, :cond_5c

    const-string v11, "floating_number_symbols_att"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    :cond_5c
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v11, :cond_5d

    const-string v11, "floating_number_symbols_att_with_number_key_first_line"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    :cond_5d
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    move-result v10

    goto :goto_6

    :catch_9
    move-exception v0

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingHWRKeyboardXmlId()I

    move-result v10

    goto :goto_6

    :cond_5e
    if-eqz v2, :cond_5f

    :try_start_10
    const-string v11, "floating_phone_symbol"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_10} :catch_a

    move-result v10

    goto/16 :goto_0

    :catch_a
    move-exception v1

    const v10, 0x7f0501ed

    goto/16 :goto_0

    :cond_5f
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v11, :cond_6d

    const/high16 v11, 0x6b6f0000

    if-ne v5, v11, :cond_6d

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v4

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v9

    const/4 v11, 0x2

    if-ne v9, v11, :cond_63

    const/4 v11, 0x1

    if-eq v4, v11, :cond_60

    const/4 v11, 0x2

    if-eq v4, v11, :cond_60

    const/4 v11, 0x3

    if-eq v4, v11, :cond_60

    const/4 v11, 0x4

    if-ne v4, v11, :cond_63

    :cond_60
    :try_start_11
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v11, :cond_62

    const-string v11, "floating_kr_cji_symbol"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_11} :catch_b

    move-result v10

    :cond_61
    :goto_7
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SYMBOLS_PAGE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_0

    :cond_62
    :try_start_12
    const-string v11, "floating_phonepad_symbol_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_12} :catch_b

    move-result v10

    goto :goto_7

    :catch_b
    move-exception v1

    const v10, 0x7f0501f9

    goto :goto_7

    :cond_63
    const/4 v11, 0x1

    if-ne v9, v11, :cond_66

    :try_start_13
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v11, :cond_64

    const-string v11, "floating_number_symbols_add_smiley"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    :cond_64
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_65

    const-string v11, "floating_number_symbols_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    :cond_65
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_13} :catch_c

    move-result v10

    goto :goto_7

    :catch_c
    move-exception v1

    const v10, 0x7f0501f9

    goto :goto_7

    :cond_66
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v11

    if-nez v11, :cond_67

    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v11

    if-eqz v11, :cond_6a

    :cond_67
    :try_start_14
    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v11, :cond_68

    const-string v11, "floating_kr_cji_symbol"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    :cond_68
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_69

    const-string v11, "floating_phonepad_symbol_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_7

    :cond_69
    const-string v11, "floating_phonepad_symbol"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_14} :catch_d

    move-result v10

    goto :goto_7

    :catch_d
    move-exception v1

    const v10, 0x7f0501f9

    goto :goto_7

    :cond_6a
    :try_start_15
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v11, :cond_6b

    const-string v11, "floating_number_symbols_add_smiley"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    :cond_6b
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_6c

    const-string v11, "floating_number_symbols_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_7

    :cond_6c
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_15 .. :try_end_15} :catch_e

    move-result v10

    goto/16 :goto_7

    :catch_e
    move-exception v1

    const v10, 0x7f0501f9

    goto/16 :goto_7

    :cond_6d
    :try_start_16
    const-string v11, "ISL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Sip_ReplaceLocalCurrencyAs"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6f

    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v11

    if-eqz v11, :cond_6e

    const-string v11, "floating_number_symbols_he_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_16} :catch_f

    move-result v10

    :goto_8
    const v11, 0x7f0501f9

    if-ne v10, v11, :cond_61

    const/4 v8, 0x0

    :try_start_17
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_8a

    const-string v11, "floating_number_symbols_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_17} :catch_11

    move-result v8

    :goto_9
    move v10, v8

    goto/16 :goto_7

    :cond_6e
    :try_start_18
    const-string v11, "floating_number_symbols_he"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_6f
    const/high16 v11, 0x61720000

    if-ne v5, v11, :cond_70

    const-string v11, "floating_number_symbols_arabic"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_70
    const/high16 v11, 0x66610000

    if-ne v5, v11, :cond_71

    const-string v11, "floating_number_symbols_farsi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_71
    const/high16 v11, 0x75720000

    if-ne v5, v11, :cond_72

    const-string v11, "floating_number_symbols_urdu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_72
    const/high16 v11, 0x68690000

    if-ne v5, v11, :cond_73

    const-string v11, "floating_number_symbols_hi"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_73
    const/high16 v11, 0x626e0000

    if-ne v5, v11, :cond_74

    const-string v11, "floating_number_symbols_bn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_74
    const/high16 v11, 0x67750000

    if-ne v5, v11, :cond_75

    const-string v11, "floating_number_symbols_gu"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_75
    const/high16 v11, 0x6b6e0000

    if-ne v5, v11, :cond_76

    const-string v11, "floating_number_symbols_kn"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_76
    const/high16 v11, 0x6d6c0000

    if-ne v5, v11, :cond_77

    const-string v11, "floating_number_symbols_ml"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_77
    const/high16 v11, 0x6d720000

    if-ne v5, v11, :cond_78

    const-string v11, "floating_number_symbols_mr"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto :goto_8

    :cond_78
    const/high16 v11, 0x70610000

    if-ne v5, v11, :cond_79

    const-string v11, "floating_number_symbols_pa"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_79
    const/high16 v11, 0x73690000

    if-ne v5, v11, :cond_7a

    const-string v11, "floating_number_symbols_si"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_7a
    const/high16 v11, 0x74610000

    if-ne v5, v11, :cond_7b

    const-string v11, "floating_number_symbols_ta"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_7b
    const/high16 v11, 0x74650000

    if-ne v5, v11, :cond_7c

    const-string v11, "floating_number_symbols_te"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_7c
    const/high16 v11, 0x61730000

    if-ne v5, v11, :cond_7d

    const-string v11, "floating_number_symbols_as"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_7d
    const/high16 v11, 0x6e650000

    if-ne v5, v11, :cond_7e

    const-string v11, "floating_number_symbols_ne"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_7e
    const/high16 v11, 0x6f720000

    if-ne v5, v11, :cond_7f

    const-string v11, "floating_number_symbols_or"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_7f
    const/high16 v11, 0x6b6d0000

    if-ne v5, v11, :cond_80

    const-string v11, "floating_number_symbols_km"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_80
    const/high16 v11, 0x6c6f0000

    if-ne v5, v11, :cond_81

    const-string v11, "floating_number_symbols_lo"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_81
    const v11, 0x7a314d4d

    if-ne v5, v11, :cond_82

    const-string v11, "floating_number_symbols_zw"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_82
    const/high16 v11, 0x74680000

    if-ne v5, v11, :cond_83

    const-string v11, "floating_number_symbols_th"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_83
    const/high16 v11, 0x65730000

    if-eq v5, v11, :cond_84

    const v11, 0x65734553

    if-eq v5, v11, :cond_84

    const v11, 0x65735553

    if-ne v5, v11, :cond_85

    :cond_84
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-nez v11, :cond_85

    const-string v11, "floating_number_symbols_es"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_85
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v11, :cond_86

    const-string v11, "floating_number_symbols_att"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_86
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    if-eqz v11, :cond_87

    const-string v11, "floating_number_symbols_att_with_number_key_first_line"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_87
    iget-boolean v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v11, :cond_88

    const-string v11, "floating_number_symbols_add_smiley"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_88
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_89

    const-string v11, "floating_number_symbols_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_8

    :cond_89
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_18
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_18} :catch_f

    move-result v10

    goto/16 :goto_8

    :catch_f
    move-exception v1

    const v10, 0x7f0501f9

    goto/16 :goto_8

    :cond_8a
    :try_start_19
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_19 .. :try_end_19} :catch_11

    move-result v8

    goto/16 :goto_9

    :cond_8b
    :try_start_1a
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_8c

    const-string v11, "floating_number_symbols_ko"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1a} :catch_10

    move-result v10

    :goto_a
    iget-object v11, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "SYMBOLS_PAGE"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentSymbolPageModeId(I)I

    move-result v7

    goto/16 :goto_0

    :cond_8c
    :try_start_1b
    const-string v11, "floating_number_symbols"

    invoke-static {v11}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_1b} :catch_10

    move-result v10

    goto :goto_a

    :catch_10
    move-exception v1

    const v10, 0x7f0501f9

    goto :goto_a

    :cond_8d
    new-instance v11, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12, v10}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_1

    :cond_8e
    iget-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v11, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto/16 :goto_2

    :catch_11
    move-exception v11

    goto/16 :goto_7

    :catch_12
    move-exception v11

    goto/16 :goto_3
.end method

.method private getTextKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 9

    const-string v6, "SamsungIME"

    const-string v7, "getTextKeyboard"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :cond_0
    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandQwertyKeyboardXmlId(I)I

    move-result v5

    :goto_0
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v4

    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v6, v5, :cond_1

    iget v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v6, v4, :cond_1

    iget-boolean v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    if-eq v6, v7, :cond_a

    :cond_1
    if-eqz v4, :cond_9

    new-instance v6, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_2
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v6, v5, v4}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_3
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v6

    :cond_2
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v5

    goto :goto_0

    :cond_3
    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHWRKeyboardXmlId()I

    move-result v5

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v4

    goto :goto_1

    :cond_4
    const/4 v6, 0x4

    if-ne v3, v6, :cond_5

    const v5, 0x7f0500e1

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v4

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandPhonepadXmlId(I)I

    move-result v5

    :goto_4
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v4

    goto :goto_1

    :cond_6
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonepadXmlId(I)I

    move-result v5

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandQwertyKeyboardXmlId(I)I

    move-result v5

    :goto_5
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v4

    goto :goto_1

    :cond_8
    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v5

    goto :goto_5

    :cond_9
    new-instance v6, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v5}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v6, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_3
.end method

.method private getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I
    .locals 12
    .param p1    # Landroid/view/inputmethod/EditorInfo;

    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v9

    if-eqz v9, :cond_2

    const v9, 0x7f0800f9

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "da_mode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v9, 0xf

    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v9, 0xff0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v4

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    const/16 v9, 0x8

    if-ne v3, v9, :cond_5

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "SETTINGS_DEFAULT_VOICE_INPUT"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v7, 0x1

    :cond_3
    :goto_2
    if-nez v4, :cond_19

    packed-switch v0, :pswitch_data_0

    sparse-switch v1, :sswitch_data_0

    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v9, :cond_12

    :try_start_0
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_e

    if-nez v5, :cond_e

    if-nez v7, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_d

    :cond_4
    const v9, 0x7f0800f2

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :pswitch_0
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_7

    const v9, 0x7f0800f2

    goto/16 :goto_0

    :cond_7
    const v9, 0x7f0800f3

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    :sswitch_0
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_a

    if-nez v5, :cond_a

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v9

    if-nez v9, :cond_9

    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v9, :cond_9

    const v9, 0x7f0800f5

    goto/16 :goto_0

    :cond_9
    const v9, 0x7f0800f7

    goto/16 :goto_0

    :cond_a
    const v9, 0x7f0800f5

    goto/16 :goto_0

    :sswitch_1
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_c

    if-nez v5, :cond_c

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v9

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-nez v9, :cond_b

    const v9, 0x7f0800f4

    goto/16 :goto_0

    :cond_b
    const v9, 0x7f0800f6

    goto/16 :goto_0

    :cond_c
    const v9, 0x7f0800f4

    goto/16 :goto_0

    :cond_d
    :try_start_1
    const-string v9, "mode_normal_voice_off"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_0

    :cond_e
    if-nez v7, :cond_f

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_f
    const v9, 0x7f0800f3

    goto/16 :goto_0

    :cond_10
    const-string v9, "mode_single_language_voice_off"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v9, "SamsungIME"

    const-string v10, "getTextKeyboardModeId() : return value not found exception!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_11

    if-nez v5, :cond_11

    const v9, 0x7f0800f2

    goto/16 :goto_0

    :cond_11
    const v9, 0x7f0800f3

    goto/16 :goto_0

    :cond_12
    iget-object v9, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_16

    if-nez v5, :cond_16

    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->isUseGlobalKey()Z

    move-result v9

    if-nez v9, :cond_15

    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v9, :cond_14

    if-eqz v3, :cond_13

    if-eqz v6, :cond_14

    :cond_13
    :try_start_2
    const-string v9, "mode_comma"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v9

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const v9, 0x7f0800f3

    goto/16 :goto_0

    :cond_14
    const v9, 0x7f0800f3

    goto/16 :goto_0

    :cond_15
    const v9, 0x7f0800f2

    goto/16 :goto_0

    :cond_16
    iget-boolean v9, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    if-eqz v9, :cond_18

    if-eqz v3, :cond_17

    if-eqz v6, :cond_18

    :cond_17
    :try_start_3
    const-string v9, "mode_comma"

    invoke-static {v9}, Lcom/diotek/ime/implement/resource/CustomResource;->getID(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v9

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const v9, 0x7f0800f3

    goto/16 :goto_0

    :cond_18
    const v9, 0x7f0800f3

    goto/16 :goto_0

    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
        0xd0 -> :sswitch_0
    .end sparse-switch
.end method

.method private getTextPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 8
    .param p1    # Z

    const-string v5, "SamsungIME"

    const-string v6, "getTextPopupKeyboard"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x7

    if-ne v2, v5, :cond_2

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSplitLeftKeyboardXmlId(I)I

    move-result v4

    :goto_0
    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    if-ne v5, v4, :cond_0

    iget v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    if-ne v5, v3, :cond_0

    iget-boolean v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v6

    if-eq v5, v6, :cond_7

    :cond_0
    if-eqz v3, :cond_6

    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v5, v4, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    :goto_3
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v5

    :cond_1
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSplitRightKeyboardXmlId(I)I

    move-result v4

    goto :goto_0

    :cond_2
    const/16 v5, 0x8

    if-ne v2, v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingHWRKeyboardXmlId()I

    move-result v4

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getHwrKeyboardModeId()I

    move-result v3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingPhonePadKeyboardXmlId(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingKeyboardXmlId(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboardXmlId(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    goto :goto_1

    :cond_6
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_3
.end method

.method private getValidSymbolsPage(I)I
    .locals 9
    .param p1    # I

    const v8, 0x7f0b0004

    const v7, 0x7f0b0002

    const-string v4, "SamsungIME"

    const-string v5, "getValidSymbolsPage"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/diotek/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    array-length v1, v4

    :goto_0
    if-gez p1, :cond_7

    add-int/lit8 p1, v1, -0x1

    :cond_0
    :goto_1
    return p1

    :cond_1
    sget-object v4, Lcom/diotek/ime/framework/common/Constant;->SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    array-length v1, v4

    goto :goto_0

    :cond_2
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    if-eqz v4, :cond_6

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_7
    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isTabletCji()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v0

    return v0
.end method

.method private setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V
    .locals 1
    .param p1    # Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .param p2    # I
    .param p3    # I

    iput p2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mXmlID:I

    iput p3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mModeID:I

    iput-object p1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mPrevKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsLandscape:Z

    return-void
.end method


# virtual methods
.method public closeView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->closeView()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    return-void
.end method

.method protected getCNFloatingKeyboardViewRscId(I)I
    .locals 2
    .param p1    # I

    const v0, 0x7f030023

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v0, 0x7f030004

    :cond_0
    return v0
.end method

.method protected getCNKeyboardViewRscId(I)I
    .locals 2
    .param p1    # I

    const v0, 0x7f030022

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const v0, 0x7f030004

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f030018

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const v0, 0x7f03001e

    goto :goto_0

    :cond_3
    const v0, 0x7f030017

    goto :goto_1
.end method

.method protected getCurrentCandidateView()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
    .locals 5

    const/4 v4, 0x0

    const-string v2, "SamsungIME"

    const-string v3, "getCurrentCandidateView"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v3, 0x7f03000a

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    :goto_1
    return-object v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v3, 0x7f030037

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v3, 0x7f030005

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->inflateWithCache(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_1
.end method

.method protected getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SamsungIME"

    const-string v2, "getCurrentKeyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isLandscapePhonenumberMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getKnobTextKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSoftFuncKbd()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :cond_3
    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_1
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandNumberKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_2
    invoke-virtual {p0, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_2

    :pswitch_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getOneHandSymbolKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_3
    invoke-virtual {p0, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSymbolKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getEmoticonKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 7
    .param p1    # Z

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v3, "SamsungIME"

    const-string v4, "getCurrentPopupKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getNumberAndSymbolsKeypadType()I

    move-result v1

    packed-switch v2, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    :goto_0
    iget-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v3

    :pswitch_0
    if-ne v0, v6, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingPhonepadNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSplitEnableOneHandKeypad()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSplitNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getNumberPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :pswitch_1
    if-ne v0, v6, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getFloatingPhonepadSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getSymbolPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getEmoticonPopupKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getCurrentSpellView()Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v2, 0x7f03004e

    invoke-interface {v1, v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->init()V

    goto :goto_0
.end method

.method public getCurrentThaiVowelPageNum()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    return v0
.end method

.method protected getEmoticonLayoutRscId(I)I
    .locals 1
    .param p1    # I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const v0, 0x7f030019

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f03001c

    goto :goto_0

    :cond_1
    const v0, 0x7f030017

    goto :goto_0
.end method

.method protected getEmoticonScrollLayoutRscId()I
    .locals 1

    const v0, 0x7f080027

    return v0
.end method

.method protected getFloatingEmoticonKeyboardViewRscId(I)I
    .locals 2
    .param p1    # I

    const v0, 0x7f030019

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const v0, 0x7f030004

    :cond_0
    return v0
.end method

.method protected getFloatingHWREmoticonLayoutRscId()I
    .locals 1

    const v0, 0x7f03001a

    return v0
.end method

.method protected getFullHwrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 3

    const v1, 0x7f0500e2

    new-instance v0, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    return-object v0
.end method

.method protected getFullHwrPanelViewRscId()I
    .locals 1

    const v0, 0x7f03001f

    return v0
.end method

.method protected getHWREmoticonLayoutRscId(I)I
    .locals 1
    .param p1    # I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const v0, 0x7f03001a

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03001b

    goto :goto_0
.end method

.method protected getHWRFloatingKeyboardViewRscId(I)I
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f03002c

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030026

    goto :goto_0
.end method

.method protected getHWRKeyboardRscId()I
    .locals 1

    const v0, 0x7f08002d

    return v0
.end method

.method public getHwPhonepadEnKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 6

    const-string v3, "SamsungIME"

    const-string v4, "getHwPhonepadEnKeyboard"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    const v5, 0x656e4742

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getPhonepadXmlId(I)I

    move-result v2

    const v1, 0x7f0800f2

    new-instance v3, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2, v1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    return-object v3
.end method

.method public getHwPhonepadKrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 4

    const-string v2, "SamsungIME"

    const-string v3, "getHwPhonepadKrKeyboard"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0501d1

    const v0, 0x7f0800f2

    new-instance v2, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    return-object v2
.end method

.method public getKeyboardKeyList(Z)Ljava/util/List;
    .locals 2
    .param p1    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getQwertyKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;

    const v0, 0x7f080034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;

    const v0, 0x7f08002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;
    .locals 1
    .param p1    # Landroid/widget/LinearLayout;
    .param p2    # Z

    if-eqz p2, :cond_0

    const v0, 0x7f08002f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080032

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method protected getKeyboardOneHandTalkBackDimView(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
    .locals 1
    .param p1    # Landroid/widget/LinearLayout;

    const v0, 0x7f080034

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;
    .locals 1
    .param p1    # Landroid/widget/LinearLayout;
    .param p2    # Z

    if-eqz p2, :cond_0

    const v0, 0x7f080030

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f080033

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    goto :goto_0
.end method

.method protected getKeyboardRscId()I
    .locals 1

    const v0, 0x7f080012

    return v0
.end method

.method protected getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/widget/LinearLayout;

    const v0, 0x7f080012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getKeyboardViewRscId(I)I
    .locals 2
    .param p1    # I

    const v0, 0x7f030021

    if-nez p1, :cond_1

    const v0, 0x7f030021

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const v0, 0x7f030004

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const v0, 0x7f03001e

    goto :goto_0
.end method

.method protected getOeHandCNPhonepadViewRscId()I
    .locals 1

    const v0, 0x7f080036

    return v0
.end method

.method protected getOneHandCNKeyboardViewRscId()I
    .locals 2

    const v0, 0x7f030024

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "keyboard_input_cn_one_hand_for_talkback"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getOneHandKeyboardViewRscId(I)I
    .locals 2
    .param p1    # I

    const v0, 0x7f030027

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "keyboard_input_one_hand_for_talkback"

    invoke-static {v1}, Lcom/diotek/ime/implement/resource/CustomResource;->getLayout(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f03001c

    :cond_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getPhoneticSpellScrollLayoutRscId()I
    .locals 1

    const v0, 0x7f08002b

    return v0
.end method

.method protected getPhoneticSpellScrollViewRscId()I
    .locals 1

    const v0, 0x7f080028

    return v0
.end method

.method protected getSplitKeyboardViewRscId(Z)I
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    const v0, 0x7f030029

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03002a

    goto :goto_0
.end method

.method protected getThaiTextKeyboard(I)Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .locals 12
    .param p1    # I

    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/high16 v9, 0x6b6d0000

    const v8, 0x656e4742

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getTextKeyboardModeId(Landroid/view/inputmethod/EditorInfo;)I

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_5

    packed-switch p1, :pswitch_data_0

    :goto_0
    new-instance v5, Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v4, v3}, Lcom/diotek/ime/framework/view/DefaultKeyboard;-><init>(Landroid/content/Context;II)V

    iput-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    invoke-direct {p0, v5, v4, v3}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentKeyboardInfo(Lcom/diotek/ime/framework/view/DefaultKeyboard;II)V

    iget-object v5, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mCurrentKeyboard:Lcom/diotek/ime/framework/view/DefaultKeyboard;

    return-object v5

    :pswitch_0
    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_0

    const-string v5, "one_hand_phonepad_km_special_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_1
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v5, "one_hand_phonepad_th_tone_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_1

    :catch_0
    move-exception v0

    const v4, 0x7f0501b9

    goto :goto_1

    :pswitch_1
    :try_start_2
    const-string v5, "one_hand_phonepad_th_tone"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    :goto_2
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    const v4, 0x7f0501b9

    goto :goto_2

    :pswitch_2
    :try_start_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_1

    const-string v5, "one_hand_phonepad_km"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v4

    :goto_3
    invoke-virtual {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto :goto_0

    :cond_1
    :try_start_4
    const-string v5, "one_hand_phonepad_th"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v4

    goto :goto_3

    :catch_2
    move-exception v0

    const v4, 0x7f0501b9

    goto :goto_3

    :pswitch_3
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v5

    if-ne v5, v10, :cond_3

    invoke-virtual {p0, v6}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    :try_start_5
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_2

    const-string v5, "one_hand_phonepad_km_special_02"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_2
    const-string v5, "one_hand_phonepad_th_tone_02"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v4

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const v4, 0x7f0501b9

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    :try_start_6
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_4

    const-string v5, "one_hand_phonepad_km_special_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_4
    const-string v5, "one_hand_phonepad_th_tone_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    move-result v4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const v4, 0x7f0501b9

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x8

    if-ne v2, v5, :cond_e

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_e

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_4
    :try_start_7
    const-string v5, "floating_phonepad_th_tone"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    move-result v4

    :goto_4
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :pswitch_5
    :try_start_8
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_6

    const-string v5, "floating_phonepad_km_special_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    move-result v4

    :goto_5
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :cond_6
    :try_start_9
    const-string v5, "floating_phonepad_th_tone_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    move-result v4

    goto :goto_5

    :catch_5
    move-exception v0

    const v4, 0x7f050204

    goto :goto_5

    :catch_6
    move-exception v0

    const v4, 0x7f050203

    goto :goto_4

    :pswitch_6
    :try_start_a
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_7

    const-string v5, "floating_phonepad_km"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_7

    move-result v4

    :goto_6
    invoke-virtual {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :cond_7
    :try_start_b
    const-string v5, "floating_phonepad_th"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_7

    move-result v4

    goto :goto_6

    :catch_7
    move-exception v0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_8

    const v4, 0x7f0501ce

    goto :goto_6

    :cond_8
    const v4, 0x7f050202

    goto :goto_6

    :pswitch_7
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v5

    if-ne v5, v10, :cond_b

    invoke-virtual {p0, v6}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    :try_start_c
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_9

    const-string v5, "floating_phonepad_km_special_02"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_9
    const-string v5, "floating_phonepad_th_tone_02"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_8

    move-result v4

    goto/16 :goto_0

    :catch_8
    move-exception v0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_a

    const v4, 0x7f0501d0

    goto/16 :goto_0

    :cond_a
    const v4, 0x7f050205

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    :try_start_d
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const v7, 0x656e4742

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_c

    const-string v5, "floating_phonepad_km_special_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_c
    const-string v5, "floating_phonepad_th_tone_01"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getXML(Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_9

    move-result v4

    goto/16 :goto_0

    :catch_9
    move-exception v0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_d

    const v4, 0x7f0501cf

    goto/16 :goto_0

    :cond_d
    const v4, 0x7f050204

    goto/16 :goto_0

    :cond_e
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_8
    const v4, 0x7f050203

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_f

    const v4, 0x7f0501cf

    :goto_7
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :cond_f
    const v4, 0x7f050204

    goto :goto_7

    :pswitch_a
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_10

    const v4, 0x7f0501ce

    :goto_8
    invoke-virtual {p0, v11}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    goto/16 :goto_0

    :cond_10
    const v4, 0x7f050202

    goto :goto_8

    :pswitch_b
    invoke-virtual {p0}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getCurrentThaiVowelPageNum()I

    move-result v5

    if-ne v5, v10, :cond_12

    invoke-virtual {p0, v6}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_11

    const v4, 0x7f0501d0

    goto/16 :goto_0

    :cond_11
    const v4, 0x7f050205

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0, v10}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setCurrentThaiVowelPageNum(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_13

    const v4, 0x7f0501cf

    goto/16 :goto_0

    :cond_13
    const v4, 0x7f050204

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x3d
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3d
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x3d
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method protected getVOHWRKeyboardViewRscId(I)I
    .locals 1
    .param p1    # I

    const v0, 0x7f03002b

    return v0
.end method

.method public initialize()V
    .locals 7

    const/16 v5, 0x1e0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->initialize()V

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v1

    const/16 v2, 0x500

    if-ne v0, v2, :cond_3

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_HD:Z

    const/16 v2, 0x780

    if-ne v0, v2, :cond_4

    const/16 v2, 0x438

    if-ne v1, v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_FHD:Z

    const/16 v2, 0x3c0

    if-ne v0, v2, :cond_5

    const/16 v2, 0x21c

    if-ne v1, v2, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_QHD:Z

    const/16 v2, 0x320

    if-ne v0, v2, :cond_6

    if-ne v1, v5, :cond_6

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_WVGA:Z

    if-ne v0, v5, :cond_7

    const/16 v2, 0x140

    if-ne v1, v2, :cond_7

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_HVGA:Z

    const/16 v2, 0xa00

    if-ne v0, v2, :cond_8

    const/16 v2, 0x640

    if-ne v1, v2, :cond_8

    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->IS_WQXGA:Z

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingAddtoNumberKeyFirstLine()Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Sip_EnableLanguageToggleButton"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_0
    move v2, v3

    :goto_6
    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_GLOBAL_KEY:Z

    const-string v2, "ATT"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Sip_ReplaceSymbolLayout4"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Sip_EnableSmileySymbol"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->ADD_SMILEY_SYMBOL:Z

    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsAddNumberKeyFirstLine:Z

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT:Z

    iput-boolean v3, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_SYMBOL_LAYOUT_BY_ATT_WITH_NUMBER_KEY_FIRST_LINE:Z

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "TABLET_MODE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mIsCommaKeyAsDefault:Z

    iget-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto/16 :goto_0

    :cond_4
    move v2, v4

    goto/16 :goto_1

    :cond_5
    move v2, v4

    goto/16 :goto_2

    :cond_6
    move v2, v4

    goto/16 :goto_3

    :cond_7
    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v4

    goto :goto_5

    :cond_9
    move v2, v4

    goto :goto_6
.end method

.method public isUseGlobalKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->USE_GLOBAL_KEY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getTalkBackEnable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangeInputLanuage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 4
    .param p1    # Lcom/diotek/ime/framework/common/Language;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->setSecondarySymbolStatus(I)V

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingLanguageToast()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/Toast;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    :cond_1
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f02073e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/implement/view/ViewControllerImpl;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onInitializeCustomResources()V
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/diotek/ime/implement/resource/CustomResource;->init(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected onInitializeFonts()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/FontManager;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public setCurrentThaiVowelPageNum(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    return-void
.end method

.method public setSecondarySymbolStatus(I)V
    .locals 0
    .param p1    # I

    invoke-super {p0, p1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSecondarySymbolStatus(I)V

    return-void
.end method

.method protected setSymbolPage(I)V
    .locals 3
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/ViewControllerImpl;->getValidSymbolsPage(I)I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    invoke-interface {v1, v2, v0}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updateKeyboard()V

    return-void
.end method
