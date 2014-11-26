.class public Lcom/diotek/ime/implement/input/InputControllerImpl;
.super Lcom/diotek/ime/framework/input/AbstractInputController;
.source "InputControllerImpl.java"


# static fields
.field private static final SPAN_CONVERT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_EISUKANA_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

.field private static final SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

.field public static UseMode3:Z

.field public static isPreviousStateShiftPress:Z


# instance fields
.field protected mDisplayText:Landroid/text/SpannableStringBuilder;

.field private mFullWidthMode:Z

.field private mHandwritingHasBeenUsed:Z

.field public mOCRSIPType:I

.field private mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

.field private mStatus:Z

.field private mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, -0x1000000

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x912701

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_CONVERT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x993256

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x604933

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_EISUKANA_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0xf0001

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x565657

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    sput-boolean v3, Lcom/diotek/ime/implement/input/InputControllerImpl;->isPreviousStateShiftPress:Z

    sput-boolean v3, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;-><init>()V

    iput-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mStatus:Z

    iput-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    iput v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mOCRSIPType:I

    iput-object v1, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

    iput-object v1, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;

    iput-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    return-void
.end method

.method private SearchHanja()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->SearchHanja()V

    return-void
.end method

.method private getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 10
    .param p1    # I

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const/high16 v8, 0x656e0000

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->getKeyboardKeyList(Z)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/high16 v6, 0x656c0000

    if-eq v2, v6, :cond_0

    const/high16 v6, 0x66720000

    if-eq v2, v6, :cond_0

    const v6, 0x66724652

    if-eq v2, v6, :cond_0

    const v6, 0x66724341

    if-ne v2, v6, :cond_3

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v4, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    int-to-char v6, p1

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v0

    :cond_2
    :goto_0
    return-object v5

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v6, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v6, v6, v9

    if-ne v6, p1, :cond_4

    move-object v5, v0

    goto :goto_0
.end method

.method private getXT9VerFromSecProductFeature()I
    .locals 3

    const-string v0, "SWIFTKEY"

    const-string v1, "XT9_9_8"

    const-string v2, "SWIFTKEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    return v1

    :cond_0
    const-string v1, "XT9_9_4"

    const-string v2, "SWIFTKEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "XT9_9"

    const-string v2, "SWIFTKEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "XT9"

    const-string v2, "SWIFTKEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private handleArrow(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->prevSymbolsPage()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->nextSymbolsPage()V

    goto :goto_0
.end method

.method private handleClipBoardKey()V
    .locals 15

    const/4 v14, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v13, v14}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v13}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "InputControllerImpl"

    const-string v3, "handleClipBoardKey : isClipboardAllowed false"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "InputControllerImpl"

    const-string v3, "handleClipBoardKey : isClipboardAllowed true"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v0, Landroid/view/KeyEvent;

    const/16 v6, 0xe8

    const/4 v11, 0x2

    move-wide v3, v1

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v14}, Lcom/diotek/ime/framework/common/InputManager;->showKeyboardAfterClipboardClosed(Z)V

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v3, -0x75

    invoke-interface {v0, v3}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanelWithVOHWRResource()V

    goto :goto_0
.end method

.method private handleHwrRangeChange(ZZ)V
    .locals 4
    .param p1    # Z
    .param p2    # Z

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getPreviousInputRange(Z)I

    move-result v0

    goto :goto_0
.end method

.method private handleMonthKey(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {v0, v3, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getMonthText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_0
    return-void
.end method

.method private handleRangeChange(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_0
    return-void
.end method

.method private handleRangeChangeToSym()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    :cond_3
    return-void
.end method

.method private handleThaiRangeChange(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->updateThaiKeyboardView(I)V

    return-void
.end method

.method private isNeedToUpdateInpuModueWithLanguage(Lcom/diotek/ime/framework/common/Language;)Z
    .locals 3
    .param p1    # Lcom/diotek/ime/framework/common/Language;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7a680000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method

.method private processMMKey(I)V
    .locals 8
    .param p1    # I

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v3

    invoke-static {p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v3}, Lcom/diotek/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v4

    if-eqz v4, :cond_6

    int-to-char v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v5, "S001"

    const-string v6, "Handwriting SIP"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v2}, Lcom/diotek/ime/framework/common/InputManager;->isAvailableLanguage(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->showTipsHwrInstallGuideDialog()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v5, "S001"

    const-string v6, "Voice Input"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->startVoiceListening()V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-class v5, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto :goto_0

    :pswitch_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v5, "S001"

    const-string v6, "Clipboard"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleClipBoardKey()V

    goto :goto_0

    :pswitch_6
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v5, "S001"

    const-string v6, "OCR"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->handleOcrKey()V

    goto :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v5, "S001"

    const-string v6, "Normal SIP"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToNormalKeyboardMode()V

    goto :goto_0

    :pswitch_8
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v5, "S001"

    const-string v6, "Floating SIP"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto :goto_0

    :pswitch_9
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v5, "S001"

    const-string v6, "Split SIP"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToSplitKeyboardMode()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-string v5, "S001"

    const-string v6, "Emoticon"

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x87

    invoke-static {v4}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v4, "last_used_mm_key_code"

    invoke-direct {p0, v4, v3}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToEmoticonMode()V

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showHalfFullWidthSwitchDialog()V

    goto/16 :goto_0

    :pswitch_c
    const/4 v0, 0x1

    const/4 v1, 0x1

    const-string v4, "UnifiedSetting"

    const-string v5, "UnifiedSetting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    :cond_2
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-nez v4, :cond_5

    if-eqz v1, :cond_3

    if-nez v0, :cond_5

    :cond_3
    const/16 v4, 0x8

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v4

    invoke-interface {v4}, Lcom/diotek/ime/framework/input/InputController;->changeToNormalKeyboardMode()V

    :goto_1
    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v4

    invoke-interface {v4}, Lcom/diotek/ime/framework/input/InputController;->changeToFloatingKeyboardMode()V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->showModeChangePopupKeyboard()V

    goto/16 :goto_0

    :pswitch_d
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->SearchHanja()V

    goto/16 :goto_0

    :cond_6
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x89
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setBooleanToPreference(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-interface {v2}, Lcom/diotek/ime/framework/repository/Repository;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setIntToPreference(Ljava/lang/String;I)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-interface {v2}, Lcom/diotek/ime/framework/repository/Repository;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setXt9InputEngine()Lcom/diotek/ime/framework/engine/InputEngine;
    .locals 3

    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->getXT9VerFromSecProductFeature()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/Xt9Wrapper;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/xt9/ver94/Xt994Wrapper;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showCyrillicUmlautPopup(I)Z
    .locals 5
    .param p1    # I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const/high16 v4, 0x656e0000

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v2, p1, v1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->convertCyrillicUmlaut(II)I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showNormalUmlautPopup(I)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showDlgMsgBox()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->showDlgMsgBox()V

    return-void
.end method

.method private showGestureGuideDialog()V
    .locals 6

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "fist_hwr_execution"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->showGestureGuideDialog()V

    :cond_0
    return-void
.end method

.method private showHalfFullWidthSwitchDialog()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->showHalfFullWidthSwitchDialog()V

    return-void
.end method

.method private showNordicUmlautPopup(I)Z
    .locals 4
    .param p1    # I

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v2, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->getNordicSymbolPopupKey(I)I

    move-result v0

    if-eq v0, p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-class v3, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-interface {v2, v3, v1}, Lcom/diotek/ime/framework/common/InputManager;->startHwLongPressPopup(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showNormalUmlautPopup(I)Z

    move-result v2

    goto :goto_0
.end method

.method private showNormalUmlautPopup(I)Z
    .locals 8
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {v3}, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->clone(Lcom/diotek/ime/framework/view/Keyboard$Key;)Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentKeyUmlautString(Lcom/diotek/ime/framework/view/KeboardKeyInfo;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xdf

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v5

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const-class v7, Lcom/diotek/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-interface {v6, v7, v2}, Lcom/diotek/ime/framework/common/InputManager;->startHwLongPressPopup(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    :goto_2
    return v6

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private showOneHandedGuideDialog()V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "first_one_handed_execution"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "first_trace_execution"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v5, v6, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSystemOneHandOperationSettingValue()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->showOneHandedGuideDialog()V

    :cond_2
    return-void
.end method

.method private showPenDetectionGuideDialog()V
    .locals 5

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_pen_detection_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_PEN_DETECTION"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showPenDetectionGuideDialog()V

    :cond_0
    return-void
.end method

.method private showPinchZoomGuideDialog()V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_pinch_zoom_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showPinchZoomGuideDialog()V

    :cond_0
    return-void
.end method

.method private showSwiftkeyGuideDialog()V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_swiftkey_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showSwiftkeyGuideDialog()V

    :cond_0
    return-void
.end method

.method private showTraceGuideDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_trace_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "ENABLE_TRACE_POPUP_GUIDE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->showTraceGuideDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelUpdateSuggestionDelay()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->cancelUpdateSuggestionDelay()V

    return-void
.end method

.method public changeToEmoticonMode()V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v5, :cond_1

    const-string v5, "SamsungIME"

    const-string v6, "mInputManager is null !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "SamsungIME"

    const-string v6, "Clean Up the bitmap buffer of AbsKeyboardView."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->cleanUpResources()V

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanelWithVOHWRResource()V

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8, v8}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    :goto_1
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8, v8}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v0, v3, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    goto :goto_1

    :cond_4
    const/16 v5, 0x8

    if-ne v0, v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_5
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1
.end method

.method public changeToFloatingKeyboardMode()V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    const/16 v0, 0x8

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    :goto_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    iput-boolean v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setGuestInputMode(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v0, v3, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_5
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_0
.end method

.method public changeToFullWidthSwitchMode(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setFullWidthMode(Z)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updatePredictionSettingAndEngine()V

    return-void
.end method

.method public changeToHwrMode()V
    .locals 10

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->setAvailableHWRLanguage()V

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    :cond_1
    invoke-static {v9}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getHwrPreviousInputRange()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    if-ne v0, v7, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    :goto_0
    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    if-ne v0, v7, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v5}, Lcom/diotek/ime/framework/input/InputModule;->updateVOHWRSuggestion()V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showGestureGuideDialog()V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v2, v3, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    :cond_5
    iput-boolean v9, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    return-void

    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1
.end method

.method public changeToKeyboardMode()V
    .locals 11

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isPopupInputMethod(I)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    if-ne v0, v9, :cond_2

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    :cond_2
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const/high16 v9, 0x656e0000

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v2, v3, v5, v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v8, v6, v10

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    :cond_3
    :goto_1
    iput-boolean v10, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    :cond_5
    return-void

    :cond_6
    if-ne v4, v8, :cond_7

    move v0, v4

    :goto_2
    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v0

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v0

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v7

    if-eqz v7, :cond_c

    if-ne v4, v8, :cond_e

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setFloatingToQwertyTransition(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    :cond_c
    :goto_3
    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v7

    if-nez v7, :cond_d

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :cond_d
    :goto_4
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    goto :goto_3

    :cond_f
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public changeToNormalKeyboardMode()V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v1

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    if-eqz v1, :cond_4

    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isPopupInputMethod(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    :cond_0
    iput-boolean v9, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    :goto_0
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    :cond_1
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setGuestInputMode(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iput-boolean v10, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v0

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isPopupInputMethod(I)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    :cond_6
    if-eqz v0, :cond_7

    if-ne v0, v9, :cond_8

    :cond_7
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    :cond_8
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const/high16 v9, 0x656e0000

    invoke-interface {v7, v8, v9}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v5

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v2, v3, v5, v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v8, v6, v10

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    :cond_9
    iput-boolean v10, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_b
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v7, 0x8

    if-ne v4, v7, :cond_f

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setFloatingToQwertyTransition(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    :cond_c
    :goto_1
    invoke-static {v10}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-boolean v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    :cond_d
    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_e
    invoke-static {v0}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    iput-boolean v10, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    goto :goto_1
.end method

.method public changeToSplitKeyboardMode()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    const/4 v0, 0x7

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    :goto_0
    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    :cond_0
    iput-boolean v8, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWordStartInputViewContinue()Z

    :cond_1
    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/diotek/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/diotek/ime/framework/sidesync/SideSyncManager;->setGuestInputMode(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v0, v3, v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputRange(I)V

    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/diotek/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-boolean v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/diotek/ime/framework/common/Language;)V

    :cond_6
    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_0
.end method

.method public endMultitapTimer()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    return-void
.end method

.method protected getCurrentInputEngineIndex(III)I
    .locals 11
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v10, 0x7

    const/4 v9, 0x2

    const/high16 v8, 0x6b6f0000

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "XT9_VERSION"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v3, :cond_9

    if-eqz p1, :cond_0

    if-eq p1, v10, :cond_0

    if-ne p1, v7, :cond_5

    :cond_0
    if-ne p1, v7, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x5

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-ne p1, v7, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne p3, v8, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v1, 0x5

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne p3, v8, :cond_7

    const/4 v1, 0x3

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :cond_8
    if-ne p1, v6, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_9
    if-lt v0, v9, :cond_14

    if-eqz p1, :cond_a

    if-eq p1, v10, :cond_a

    if-ne p1, v7, :cond_11

    :cond_a
    if-ne p1, v7, :cond_b

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v1, 0x5

    goto :goto_0

    :cond_b
    if-ne p3, v8, :cond_10

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v2

    if-eq v2, v6, :cond_c

    if-eq v2, v9, :cond_c

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    const/4 v3, 0x4

    if-ne v2, v3, :cond_d

    :cond_c
    const/4 v1, 0x1

    goto :goto_0

    :cond_d
    if-nez v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_e
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-ne v3, v6, :cond_f

    if-eqz p1, :cond_f

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_f

    const/4 v1, 0x1

    goto :goto_0

    :cond_f
    const/4 v1, 0x6

    goto :goto_0

    :cond_10
    const/4 v1, 0x6

    goto :goto_0

    :cond_11
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_13

    if-ne p3, v8, :cond_12

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_13
    if-ne p1, v6, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_14
    if-eqz p1, :cond_15

    if-eq p1, v10, :cond_15

    if-ne p1, v7, :cond_1c

    :cond_15
    if-ne p1, v7, :cond_16

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v1, 0x5

    goto/16 :goto_0

    :cond_16
    if-ne p3, v8, :cond_1b

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v2

    if-eq v2, v6, :cond_17

    if-eq v2, v9, :cond_17

    const/4 v3, 0x3

    if-eq v2, v3, :cond_17

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    :cond_17
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_18
    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_19
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-ne v3, v6, :cond_1a

    if-eqz p1, :cond_1a

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_1a

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_1c
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v1, 0x5

    goto/16 :goto_0

    :cond_1d
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    if-ne p3, v8, :cond_1e

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_1f
    if-ne p1, v6, :cond_1

    if-ne p3, v8, :cond_20

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_20
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected getCurrentInputModuleIndex(III)I
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, 0x6b6f0000

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v2

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setTraceStatus()V

    return v0

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    if-ne p1, v6, :cond_8

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingNumberInputKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    if-ne p3, v7, :cond_5

    const/16 v0, 0xe

    goto :goto_0

    :cond_5
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v0, 0xf

    goto :goto_0

    :cond_6
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v0, 0x1b

    goto :goto_0

    :cond_7
    const/16 v0, 0xd

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    const/4 v3, 0x7

    if-eq p1, v3, :cond_9

    if-ne p1, v6, :cond_13

    :cond_9
    if-ne p3, v7, :cond_f

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    if-eq v1, v5, :cond_a

    if-eq v1, v9, :cond_a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_a

    const/4 v3, 0x4

    if-ne v1, v3, :cond_b

    :cond_a
    const/16 v0, 0xe

    goto :goto_0

    :cond_b
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v0, 0xa

    goto :goto_0

    :cond_c
    const/16 v0, 0xb

    goto :goto_0

    :cond_d
    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    if-eqz v3, :cond_e

    if-nez v2, :cond_e

    if-ne p1, v6, :cond_e

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v3

    if-ne v3, v5, :cond_e

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_f
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_10
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_11
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_13
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_14

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_15
    if-ne p1, v5, :cond_0

    if-ne p3, v7, :cond_16

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_16
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_17
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v0, 0x1b

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_19
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "XT9_VERSION"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-lt v3, v9, :cond_2a

    if-eqz p1, :cond_1a

    const/4 v3, 0x7

    if-eq p1, v3, :cond_1a

    if-ne p1, v6, :cond_25

    :cond_1a
    if-ne p3, v7, :cond_20

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_1e

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    if-eq v1, v5, :cond_1b

    if-eq v1, v9, :cond_1b

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1b

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1c

    :cond_1b
    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_1c
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_1e
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-ne v3, v5, :cond_1f

    if-eqz p1, :cond_1f

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_1f

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0x14

    goto/16 :goto_0

    :cond_20
    if-ne p1, v6, :cond_22

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_22

    const v3, 0x7a68434e

    if-ne p3, v3, :cond_21

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_21
    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_22
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v0, 0x15

    goto/16 :goto_0

    :cond_23
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_24

    const/16 v0, 0x19

    goto/16 :goto_0

    :cond_24
    const/16 v0, 0x13

    goto/16 :goto_0

    :cond_25
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_26

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_26
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_27
    if-ne p1, v5, :cond_0

    if-ne p3, v7, :cond_28

    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_28
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_29

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_29
    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_2a
    if-eqz p1, :cond_2b

    const/4 v3, 0x7

    if-eq p1, v3, :cond_2b

    if-ne p1, v6, :cond_36

    :cond_2b
    if-ne p3, v7, :cond_31

    iget-boolean v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_2f

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    if-eq v1, v5, :cond_2c

    if-eq v1, v9, :cond_2c

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2c

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2d

    :cond_2c
    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_2d
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2e
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_2f
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v3

    if-ne v3, v5, :cond_30

    if-eqz p1, :cond_30

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_30
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_31
    if-ne p1, v6, :cond_33

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_33

    const v3, 0x7a68434e

    if-ne p3, v3, :cond_32

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_32
    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_33
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_34
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_35
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_36
    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v3, v4, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_37

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_37
    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_38
    if-ne p1, v5, :cond_0

    if-ne p3, v7, :cond_39

    const/4 v0, 0x6

    goto/16 :goto_0

    :cond_39
    invoke-static {p3}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_3a
    const/4 v0, 0x7

    goto/16 :goto_0
.end method

.method protected getDWPEngineIndex()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHWInputEngineIndex(I)I
    .locals 5
    .param p1    # I

    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "XT9_VERSION"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHWInputModuleIndex(I)I
    .locals 5
    .param p1    # I

    const/high16 v4, 0x6b6f0000

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_4

    if-ne p1, v4, :cond_0

    const/16 v0, 0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x1a

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "XT9_VERSION"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    if-ne p1, v4, :cond_5

    const/16 v0, 0x14

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x19

    goto :goto_0

    :cond_7
    const/16 v0, 0x13

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x2

    goto :goto_0

    :cond_a
    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x9

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHwrCandidateStatus()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getHwrCandidateStatus()I

    move-result v0

    return v0
.end method

.method public getSelectedWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->getSelectedWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundEffectController()Lcom/diotek/ime/framework/effect/SoundEffectController;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;

    invoke-direct {v0}, Lcom/diotek/ime/implement/effect/DefaultSoundEffectController;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/diotek/ime/framework/effect/SoundEffectController;

    return-object v0
.end method

.method public getVibrateController()Lcom/diotek/ime/framework/effect/VibrateController;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/effect/DefaultVibrateController;

    invoke-direct {v0}, Lcom/diotek/ime/implement/effect/DefaultVibrateController;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/diotek/ime/framework/effect/VibrateController;

    return-object v0
.end method

.method protected getVietValidVowelsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXt9Version()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getXt9Version()I

    move-result v0

    return v0
.end method

.method public handleRangeChange(ZZ)V
    .locals 5
    .param p1    # Z
    .param p2    # Z

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "SYMBOLS_PAGE"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->isNeedToUpdateInpuModueWithLanguage(Lcom/diotek/ime/framework/common/Language;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFullWidthSwitchMode(Z)V

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2, p2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getPreviousInputRange(Z)I

    move-result v1

    goto :goto_0
.end method

.method protected initInputEngine()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/diotek/ime/framework/input/AbstractInputController;->createInputEngineArray(I)Z

    const-string v2, "VOHWRPANEL"

    iget-boolean v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v6, :cond_5

    new-instance v3, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;-><init>()V

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;

    invoke-direct {v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;-><init>()V

    :cond_0
    :goto_0
    const/4 v6, 0x4

    invoke-virtual {p0, v6, v3, v3}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v9, v4, v3}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v6, "DHWR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;-><init>()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v9, v4, v4}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngineWithoutInit(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_1

    :cond_4
    const-string v6, "DHWR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v8, v0, v3}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    invoke-virtual {p0, v7, v0, v3}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setXt9InputEngine()Lcom/diotek/ime/framework/engine/InputEngine;

    move-result-object v5

    new-instance v1, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;

    invoke-direct {v1}, Lcom/diotek/ime/framework/engine/dwp/DWPWrapper;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {p0, v6, v1, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    const/4 v0, 0x0

    const-string v6, "NONE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v0, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;

    invoke-direct {v0}, Lcom/diotek/ime/framework/engine/dhwr/DHWRWrapper;-><init>()V

    invoke-virtual {p0, v8, v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, v7, v0, v5}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputEngine(ILcom/diotek/ime/framework/engine/InputEngine;Lcom/diotek/ime/framework/engine/InputEngine;)Z

    goto :goto_1
.end method

.method protected initInputModule()V
    .locals 4

    const/4 v3, 0x6

    const/16 v1, 0x1c

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->createInputModuleArray(I)Z

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0xb

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0xc

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x10

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyIndianInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x1a

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0xd

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0xe

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0xf

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x1b

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x11

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x12

    new-instance v2, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    :goto_0
    const/4 v1, 0x3

    new-instance v2, Lcom/diotek/ime/framework/input/HwrInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/HwrInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/4 v1, 0x4

    new-instance v2, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/CompleteHwrInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->getXT9VerFromSecProductFeature()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    new-instance v2, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/QwertyLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/4 v1, 0x1

    new-instance v2, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/QwertyKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/4 v1, 0x2

    new-instance v2, Lcom/diotek/ime/framework/input/QwertyChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/QwertyChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x9

    new-instance v2, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/QwertyIndianInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    new-instance v1, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;

    invoke-direct {v1}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v3, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/4 v1, 0x7

    new-instance v2, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/PhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x8

    new-instance v2, Lcom/diotek/ime/framework/input/PhonepadChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/PhonepadChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0x13

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x14

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x15

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x19

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9QwertyIndianInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    new-instance v1, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;

    invoke-direct {v1}, Lcom/diotek/ime/framework/input/PhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v3, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x16

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x17

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    const/16 v1, 0x18

    new-instance v2, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;

    invoke-direct {v2}, Lcom/diotek/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->setInputModule(ILcom/diotek/ime/framework/input/InputModule;)Z

    goto/16 :goto_0
.end method

.method public isEmojiLMLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->isEmojiLMLoaded()Z

    move-result v0

    return v0
.end method

.method public isFullWidthMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    return v0
.end method

.method protected isFunctionKey(I)Z
    .locals 10
    .param p1    # I

    const/high16 v9, 0x6b6d0000

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    :sswitch_0
    return v4

    :sswitch_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    move v4, v5

    goto :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const/high16 v8, 0x656e0000

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v6, 0x74680000

    if-eq v0, v6, :cond_2

    if-ne v0, v9, :cond_0

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    if-eq v0, v9, :cond_1

    move v4, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f6 -> :sswitch_0
        -0x3f5 -> :sswitch_0
        -0x3f4 -> :sswitch_0
        -0x3f3 -> :sswitch_0
        -0x3f2 -> :sswitch_0
        -0x3f0 -> :sswitch_0
        -0x3ef -> :sswitch_0
        -0x3ee -> :sswitch_0
        -0x3ed -> :sswitch_0
        -0x3ec -> :sswitch_0
        -0x3ea -> :sswitch_0
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_0
        -0x3dc -> :sswitch_0
        -0x3db -> :sswitch_0
        -0x1f4 -> :sswitch_0
        -0x1f3 -> :sswitch_0
        -0x1f2 -> :sswitch_0
        -0x1f1 -> :sswitch_0
        -0x1f0 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x149 -> :sswitch_0
        -0x148 -> :sswitch_0
        -0x147 -> :sswitch_0
        -0x146 -> :sswitch_0
        -0x145 -> :sswitch_0
        -0x144 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x138 -> :sswitch_0
        -0x137 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0x106 -> :sswitch_0
        -0x105 -> :sswitch_0
        -0x104 -> :sswitch_0
        -0xe5 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0xbe -> :sswitch_0
        -0xa6 -> :sswitch_0
        -0xa5 -> :sswitch_0
        -0xa4 -> :sswitch_0
        -0xa3 -> :sswitch_0
        -0xa2 -> :sswitch_0
        -0xa1 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x89 -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x87 -> :sswitch_0
        -0x86 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x81 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x7c -> :sswitch_0
        -0x7a -> :sswitch_1
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x3a -> :sswitch_2
    .end sparse-switch
.end method

.method public isHandWritingHasBoonUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    return v0
.end method

.method public onLongPressHwKey(I)Z
    .locals 7
    .param p1    # I

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const/high16 v6, 0x656e0000

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showNordicUmlautPopup(I)Z

    move-result v4

    :goto_0
    return v4

    :cond_0
    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showCyrillicUmlautPopup(I)Z

    move-result v4

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showNormalUmlautPopup(I)Z

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected processFunctionKey(I)V
    .locals 47
    .param p1    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "INPUT_LANGUAGE"

    const/high16 v46, 0x656e0000

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v24

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v15

    iget v0, v15, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v44, v0

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0xff0

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v44

    if-eqz v44, :cond_1

    const/16 v31, 0x7000

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    :sswitch_0
    return-void

    :cond_1
    const/16 v31, 0x0

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v44

    if-eqz v44, :cond_2

    const/16 v44, -0x3e9

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->processFunctionKey(I)V

    goto :goto_1

    :cond_2
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->isEmpty()Z

    move-result v44

    if-eqz v44, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->startSuggestionDelay()V

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setProdictionWord(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x15

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    const/16 v45, 0x1f4

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/input/InputModule;->postUpdateSequenceAndSuggestionDelayForRecapture(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v44

    if-nez v44, :cond_5

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/input/InputModule;->updateSuggestionDelay()V

    goto :goto_1

    :cond_5
    const/16 v44, 0x1

    const/16 v45, -0x1

    invoke-static/range {v44 .. v45}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getBlockCursor()I

    move-result v44

    if-nez v44, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v44

    if-eqz v44, :cond_6

    const/16 v44, -0x3ea

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->processFunctionKey(I)V

    goto/16 :goto_1

    :cond_6
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->isEmpty()Z

    move-result v44

    if-eqz v44, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->startSuggestionDelay()V

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setProdictionWord(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x16

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    const/16 v45, 0x1f4

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/input/InputModule;->postUpdateSequenceAndSuggestionDelayForRecapture(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v7

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v44

    move/from16 v0, v44

    if-ne v7, v0, :cond_8

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/input/InputModule;->updateSuggestionDelay()V

    goto/16 :goto_1

    :cond_8
    if-nez v7, :cond_9

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_9
    const/16 v44, 0x1

    const/16 v45, 0x1

    invoke-static/range {v44 .. v45}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    goto :goto_3

    :sswitch_3
    const/high16 v44, 0x74610000

    move/from16 v0, v24

    move/from16 v1, v44

    if-eq v0, v1, :cond_d

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v44

    if-nez v44, :cond_b

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    :cond_a
    :goto_4
    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "INPUT_LANGUAGE"

    const/high16 v46, 0x68690000

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v44

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/IndianInputModule;->setIndianLanguageHbScript(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleIndianLangToggle()V

    goto/16 :goto_1

    :cond_b
    sget-boolean v44, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_c

    sget-boolean v44, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    if-nez v44, :cond_c

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    const/16 v44, 0x0

    sput-boolean v44, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v44

    if-eqz v44, :cond_a

    const/16 v44, 0x1

    sput-boolean v44, Lcom/diotek/ime/implement/input/InputControllerImpl;->UseMode3:Z

    const/16 v44, 0x0

    sput-boolean v44, Lcom/diotek/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    goto :goto_4

    :cond_d
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v44

    if-nez v44, :cond_e

    const/16 v44, 0x1

    :goto_5
    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    goto :goto_4

    :cond_e
    const/16 v44, 0x0

    goto :goto_5

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, p1

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v44

    if-nez v44, :cond_11

    const/16 v44, 0x1

    :goto_6
    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantAvailable(Z)V

    sget-boolean v44, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v44, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateShiftState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    :cond_10
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v44

    if-eqz v44, :cond_0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantLongpressAvailable(Z)V

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantAvailable(Z)V

    goto/16 :goto_1

    :cond_11
    const/16 v44, 0x0

    goto :goto_6

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, p1

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    :cond_12
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v44

    if-nez v44, :cond_14

    const/16 v44, 0x1

    :goto_7
    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantLongpressAvailable(Z)V

    sget-boolean v44, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v44, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateShiftState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleIndianLangToggle()V

    goto/16 :goto_1

    :cond_14
    const/16 v44, 0x0

    goto :goto_7

    :sswitch_6
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v42

    add-int/lit8 v42, v42, -0x1

    const/16 v44, -0x1

    move/from16 v0, v42

    move/from16 v1, v44

    if-le v0, v1, :cond_0

    invoke-static/range {v42 .. v42}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleIndianVowelRowState()V

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move/from16 v1, p1

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    :cond_15
    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->getVowelRowMax()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_0

    invoke-static/range {v43 .. v43}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleIndianVowelRowState()V

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const-class v45, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const-class v45, Lcom/diotek/ime/implement/setting/HwrSettings;

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->showImePicker()V

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v44

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->resetSymbolsPage()V

    goto/16 :goto_1

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChangeToSym()V

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v44

    if-eqz v44, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v44

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getHwrPreviousInputRange()I

    move-result v44

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v44

    if-eqz v44, :cond_0

    if-eqz v12, :cond_17

    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_0

    const/16 v44, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->VOHWRInitByCursorMove(I)V

    goto/16 :goto_1

    :cond_18
    const/16 v44, 0x1

    const/16 v45, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    goto :goto_8

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v44

    if-eqz v44, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v46, 0x0

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v44

    if-nez v44, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->commitAndResetForHwr()V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    :cond_1a
    const/16 v44, 0x8

    move/from16 v0, v32

    move/from16 v1, v44

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto/16 :goto_1

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    const/16 v45, 0x2

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v44

    if-eqz v44, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v46, 0x0

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v44

    if-nez v44, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->commitAndResetForHwr()V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChangeToSym()V

    goto/16 :goto_1

    :cond_1d
    const/16 v44, 0x8

    move/from16 v0, v32

    move/from16 v1, v44

    if-ne v0, v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto/16 :goto_1

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    move/from16 v0, p1

    rsub-int v0, v0, -0x144

    move/from16 v45, v0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v46, 0x0

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v44

    if-eqz v44, :cond_1f

    if-eqz v12, :cond_1f

    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    :cond_1f
    if-nez v39, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->commitAndResetForHwr()V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v44

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setHwrPreviousInputRange(I)V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChangeToSym()V

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v46, 0x0

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v44

    if-nez v44, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->commitAndResetForHwr()V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    move/from16 v44, v0

    if-eqz v44, :cond_23

    if-eqz v38, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "SYMBOLS_PAGE"

    const/16 v46, 0x0

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_1

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v44

    if-eqz v44, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v44

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->toggleLanguage(Z)V

    goto/16 :goto_1

    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->handleShiftLong()V

    goto/16 :goto_1

    :sswitch_13
    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleArrow(Z)V

    goto/16 :goto_1

    :sswitch_14
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleArrow(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v44

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->createKeyMap()V

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v44

    if-nez v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v45, v0

    if-nez v16, :cond_25

    const/16 v44, 0x1

    :goto_9
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateShiftState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_1

    :cond_25
    const/16 v44, 0x0

    goto :goto_9

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/engine/InputEngineManager;->clearContext()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    if-eqz v12, :cond_0

    iget v14, v15, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v33, 0xc000000

    const v44, 0x400000ff

    and-int v3, v14, v44

    const/16 v44, 0x6

    move/from16 v0, v44

    if-ne v3, v0, :cond_28

    const/16 v44, 0xa0

    move/from16 v0, v41

    move/from16 v1, v44

    if-eq v0, v1, :cond_27

    const/16 v44, 0xd0

    move/from16 v0, v41

    move/from16 v1, v44

    if-eq v0, v1, :cond_27

    const/16 v44, 0xe0

    move/from16 v0, v41

    move/from16 v1, v44

    if-ne v0, v1, :cond_28

    :cond_27
    const/16 v44, 0x6

    move/from16 v0, v44

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_1

    :cond_28
    const/high16 v44, 0xc000000

    and-int v44, v44, v14

    if-nez v44, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x3d

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_1

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v44

    if-eqz v44, :cond_2a

    const/16 v44, 0x7

    move/from16 v0, v44

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_1

    :cond_2a
    const/16 v44, 0x5

    move/from16 v0, v44

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    :sswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->showLanguageSelectDialog()V

    goto/16 :goto_1

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isQuickCangieMode()Z

    move-result v19

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setQickCangjieMode(Z)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setQickCangjieMode(Z)V

    goto :goto_a

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v44

    if-nez v44, :cond_2c

    const/16 v35, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "INPUT_LANGUAGE"

    const/high16 v46, 0x656e0000

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v44

    sparse-switch v44, :sswitch_data_1

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setChineseStrokeModeOn(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->predictionWord()Z

    goto/16 :goto_1

    :cond_2c
    const/16 v35, 0x0

    goto :goto_b

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "ZH_CN_STROKE_MODE_ON"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_c

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "ZH_HK_STROKE_MODE_ON"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_c

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "ZH_TW_STROKE_MODE_ON"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_c

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->startVoiceListening()V

    goto/16 :goto_1

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move/from16 v1, p1

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v44

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v44, v0

    if-nez v44, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    if-eqz v44, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/input/InputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/input/InputModule;->initComposingBuffer()V

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_2e
    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v44

    if-eqz v44, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v44

    if-eqz v44, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v46, 0x0

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v44

    if-eqz v44, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/16 v46, -0x1

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v44

    if-eqz v44, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v44

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_31
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleClipBoardKey()V

    goto/16 :goto_1

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v18

    if-eqz v18, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v45, v0

    if-nez v18, :cond_33

    const/16 v44, 0x1

    :goto_d
    move-object/from16 v0, v45

    move/from16 v1, v44

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setPridictionFlag(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/engine/InputEngineManager;->updateEngine()I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    move/from16 v44, v0

    if-eqz v44, :cond_35

    const/high16 v44, 0x6b6f0000

    move/from16 v0, v24

    move/from16 v1, v44

    if-ne v0, v1, :cond_35

    const/16 v44, 0x1

    move/from16 v0, v32

    move/from16 v1, v44

    if-ne v0, v1, :cond_35

    const-string v45, "SETTINGS_DEFAULT_KOREAN_PREDICTION_ON"

    if-nez v18, :cond_34

    const/16 v44, 0x1

    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setBooleanToPreference(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_33
    const/16 v44, 0x0

    goto :goto_d

    :cond_34
    const/16 v44, 0x0

    goto :goto_e

    :cond_35
    const-string v45, "SETTINGS_DEFAULT_FOREIGN_PREDICTION_ON"

    if-nez v18, :cond_36

    const/16 v44, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setBooleanToPreference(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_36
    const/16 v44, 0x0

    goto :goto_f

    :sswitch_22
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->processMMKey(I)V

    goto/16 :goto_1

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const-string v45, "S001"

    const-string v46, "Handwriting SIP"

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "INPUT_LANGUAGE"

    const v46, 0x656e4742

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->isAvailableLanguage(I)Z

    move-result v44

    if-nez v44, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->showTipsHwrInstallGuideDialog()V

    goto/16 :goto_1

    :cond_37
    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    :sswitch_24
    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    :sswitch_25
    if-eqz v32, :cond_0

    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToNormalKeyboardMode()V

    goto/16 :goto_1

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const-string v45, "S001"

    const-string v46, "Voice Input"

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->startVoiceListening()V

    goto/16 :goto_1

    :sswitch_27
    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const-class v45, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_1

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const-string v45, "S001"

    const-string v46, "Clipboard"

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleClipBoardKey()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, -0x75

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto/16 :goto_1

    :sswitch_29
    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    const/16 v20, 0x1

    const/16 v21, 0x1

    const-string v44, "UnifiedSetting"

    const-string v45, "UnifiedSetting"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_38

    const/16 v20, 0x0

    const/16 v21, 0x1

    :cond_38
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    move/from16 v44, v0

    if-nez v44, :cond_3b

    if-eqz v21, :cond_39

    if-nez v20, :cond_3b

    :cond_39
    const/16 v44, 0x8

    move/from16 v0, v32

    move/from16 v1, v44

    if-ne v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/input/InputController;->changeToNormalKeyboardMode()V

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_1

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getInputController()Lcom/diotek/ime/framework/input/InputController;

    move-result-object v44

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/input/InputController;->changeToFloatingKeyboardMode()V

    goto :goto_10

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x32

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->showModeChangePopupKeyboard(I)V

    goto/16 :goto_1

    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const-string v45, "S001"

    const-string v46, "OCR"

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->handleOcrKey()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, -0x80

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto/16 :goto_1

    :sswitch_2b
    const/16 v44, 0x8

    move/from16 v0, v32

    move/from16 v1, v44

    if-eq v0, v1, :cond_0

    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto/16 :goto_1

    :sswitch_2c
    const/16 v44, 0x7

    move/from16 v0, v32

    move/from16 v1, v44

    if-eq v0, v1, :cond_0

    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToSplitKeyboardMode()V

    goto/16 :goto_1

    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const-string v45, "S001"

    const-string v46, "Emoticon"

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/common/InputManager;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->changeToEmoticonMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto/16 :goto_1

    :sswitch_2e
    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->showHalfFullWidthSwitchDialog()V

    goto/16 :goto_1

    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_3c

    const/16 v44, 0x22

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_3c
    const/16 v44, 0x27

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_1

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_3d

    const/16 v44, 0x3a

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_2

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_3d
    const/16 v44, 0x3b

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_3

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_3e

    const/16 v44, 0x5f

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_4

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_3e
    const/16 v44, 0x2d

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_5

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_3f

    const/16 v44, 0x3f

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_6

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_3f
    const/16 v44, 0x3a

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_7

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_33
    invoke-static/range {v32 .. v32}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v44, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->SearchHanja()V

    goto/16 :goto_1

    :sswitch_34
    if-eqz v22, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "INPUT_LANGUAGE"

    const/high16 v46, 0x656e0000

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    const/16 v23, 0x0

    const/16 v44, 0xd0

    move/from16 v0, v41

    move/from16 v1, v44

    if-eq v0, v1, :cond_40

    const/16 v44, 0x20

    move/from16 v0, v41

    move/from16 v1, v44

    if-eq v0, v1, :cond_40

    const/16 v44, 0x10

    move/from16 v0, v41

    move/from16 v1, v44

    if-ne v0, v1, :cond_41

    :cond_40
    const/16 v23, 0x1

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_45

    if-eqz v23, :cond_42

    const/16 v44, 0x5f

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_8

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_42
    invoke-static/range {v25 .. v25}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v44

    if-eqz v44, :cond_43

    const/16 v44, 0x21

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_9

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_44

    const v44, 0xff01

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_44
    const/16 v44, 0x21

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_a

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_46

    const v44, 0xff0c

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_47

    const/16 v44, 0x3001

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_47
    if-eqz v23, :cond_48

    const/16 v44, 0x2c

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_b

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_48
    invoke-static/range {v25 .. v25}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v44

    if-eqz v44, :cond_49

    const/16 v44, 0x60c

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_c

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_49
    const/16 v44, 0x2c

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_d

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "INPUT_LANGUAGE"

    const/high16 v46, 0x656e0000

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v44

    if-eqz v44, :cond_4b

    const/16 v44, 0x60c

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_e

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_4c

    const v44, 0xff0c

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_4c
    const/16 v44, 0x2c

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_f

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_4d

    const/16 v44, 0x55e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_10

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_4d
    const/16 v44, 0x3a

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_11

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_4e

    const/16 v44, 0x7e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_12

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_4e
    const/16 v44, 0x2d

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_13

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_4f

    const/16 v44, 0xab

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_14

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_4f
    const/16 v44, 0x55c

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_15

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_50

    const/16 v44, 0xbb

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_16

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_50
    const/16 v44, 0x55d

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_17

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_39
    if-eqz v22, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "INPUT_LANGUAGE"

    const/high16 v46, 0x656e0000

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v26

    const/16 v23, 0x0

    const/16 v44, 0xd0

    move/from16 v0, v41

    move/from16 v1, v44

    if-eq v0, v1, :cond_51

    const/16 v44, 0x20

    move/from16 v0, v41

    move/from16 v1, v44

    if-eq v0, v1, :cond_51

    const/16 v44, 0x10

    move/from16 v0, v41

    move/from16 v1, v44

    if-ne v0, v1, :cond_52

    :cond_51
    const/16 v23, 0x1

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v44

    if-eqz v44, :cond_57

    if-eqz v23, :cond_54

    const/high16 v44, 0x74680000

    move/from16 v0, v44

    if-ne v6, v0, :cond_53

    const-string v44, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_53
    const/16 v44, 0x2d

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_18

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_54
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v44

    if-eqz v44, :cond_55

    const/16 v44, 0x61f

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_19

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_56

    const v44, 0xff1f

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_56
    const/16 v44, 0x3f

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_1a

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v44

    if-nez v44, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_59

    :cond_58
    const/16 v44, 0x3002

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_59
    if-eqz v23, :cond_5a

    const/16 v44, 0x2e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_1b

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_5a
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v44

    if-eqz v44, :cond_5b

    const/16 v44, 0x2e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_1c

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_5b
    const/high16 v44, 0x68690000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_5c

    const/high16 v44, 0x626e0000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_5c

    const/high16 v44, 0x6e650000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_5c

    const/high16 v44, 0x61730000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_5c

    const/high16 v44, 0x70610000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_5c

    const/high16 v44, 0x6f720000

    move/from16 v0, v26

    move/from16 v1, v44

    if-ne v0, v1, :cond_5d

    :cond_5c
    const/16 v44, 0x964

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_5d
    const/high16 v44, 0x6b6d0000

    move/from16 v0, v44

    if-ne v6, v0, :cond_5e

    const/16 v44, 0x17d4

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_1d

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_5e
    const/16 v44, 0x2e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_1e

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "INPUT_LANGUAGE"

    const/high16 v46, 0x656e0000

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_60

    const/16 v44, 0x3002

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_62

    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->getKeyFromKeycode(I)Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v5

    if-eqz v5, :cond_61

    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    if-eqz v44, :cond_61

    iget-object v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v44

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_61
    const/16 v44, 0x2e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_1f

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_62
    invoke-static/range {v26 .. v26}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v44

    if-eqz v44, :cond_63

    const/16 v44, 0x2e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_20

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_63
    const/high16 v44, 0x6b6d0000

    move/from16 v0, v26

    move/from16 v1, v44

    if-ne v0, v1, :cond_64

    const/16 v44, 0x17d4

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_64
    const/high16 v44, 0x68690000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_65

    const/high16 v44, 0x626e0000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_65

    const/high16 v44, 0x6e650000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_65

    const/high16 v44, 0x61730000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_65

    const/high16 v44, 0x70610000

    move/from16 v0, v26

    move/from16 v1, v44

    if-eq v0, v1, :cond_65

    const/high16 v44, 0x6f720000

    move/from16 v0, v26

    move/from16 v1, v44

    if-ne v0, v1, :cond_66

    :cond_65
    const/16 v44, 0x964

    const/16 v45, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :cond_66
    const/16 v44, 0x2e

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [I

    move-object/from16 v45, v0

    fill-array-data v45, :array_21

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->showSymbolPopupKeyboard()V

    goto/16 :goto_1

    :sswitch_3b
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleMonthKey(I)V

    goto/16 :goto_1

    :sswitch_3c
    const/16 v17, 0x0

    const/16 v44, -0x3a

    move/from16 v0, p1

    move/from16 v1, v44

    if-ne v0, v1, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    const-string v29, ""

    if-eqz v12, :cond_67

    const/16 v44, 0x1

    const/16 v45, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-interface {v12, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    :cond_67
    if-nez v29, :cond_68

    const-string v29, ""

    :cond_68
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->hashCode()I

    move-result v44

    invoke-static/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->getThaiCharType(I)I

    move-result v44

    const/16 v45, 0x6

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_69

    const/16 v17, 0x1

    :cond_69
    if-eqz v17, :cond_6a

    const/16 v44, -0x3d

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleThaiRangeChange(I)V

    goto/16 :goto_1

    :cond_6a
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleThaiRangeChange(I)V

    goto/16 :goto_1

    :sswitch_3d
    const/16 v44, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateAcuteAccentState(Z)V

    goto/16 :goto_1

    :sswitch_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->closeKeyboard()V

    goto/16 :goto_1

    :sswitch_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v44

    if-eqz v44, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "IS_SPLIT_NUMBER_KEYPAD_RIGHT_SET"

    const/16 v46, 0x0

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v44, v0

    const-string v45, "IS_SPLIT_NUMBER_KEYPAD_RIGHT_SET"

    const/16 v46, 0x1

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :sswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setPrevSoftFuncKeyCode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndexByKeycode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChangedSoftFuncKbdIndex()Z

    move-result v44

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateSoftFuncKeyboardView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_1

    :sswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setPrevSoftFuncKeyCode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndexByKeycode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChangedSoftFuncKbdIndex()Z

    move-result v44

    if-eqz v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKey()Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-virtual/range {v40 .. v40}, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v45

    const/16 v46, 0x1

    invoke-interface/range {v44 .. v46}, Lcom/diotek/ime/framework/common/InputManager;->setLanguage(IZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v44, v0

    if-eqz v44, :cond_6c

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->updateInputModule()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->postPredictionWordMessage()V

    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateSoftFuncKeyboardView()V

    goto/16 :goto_1

    :sswitch_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v44

    if-eqz v44, :cond_6d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    goto :goto_11

    :sswitch_43
    sget-boolean v44, Lcom/diotek/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    if-nez v44, :cond_6e

    const/16 v44, 0x1

    :goto_12
    sput-boolean v44, Lcom/diotek/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    goto/16 :goto_1

    :cond_6e
    const/16 v44, 0x0

    goto :goto_12

    :sswitch_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v44

    if-eqz v44, :cond_70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v44

    if-nez v44, :cond_6f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setIsUserSelecting(Z)V

    :cond_6f
    const/16 v44, 0x1

    sput-boolean v44, Lcom/diotek/ime/implement/input/InputControllerImpl;->isPreviousStateShiftPress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v44

    if-eqz v44, :cond_73

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getSuggestionActiveIndex()I

    move-result v44

    add-int/lit8 v13, v44, -0x1

    if-ltz v13, :cond_71

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v44

    if-nez v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v45

    add-int/lit8 v45, v45, -0x1

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_0

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move v11, v13

    :goto_13
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-ge v11, v0, :cond_72

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_13

    :cond_72
    const/16 v44, 0x0

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    move-object/from16 v0, v36

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v44

    sub-int v44, v44, v13

    add-int/lit8 v28, v44, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_73
    const/16 v44, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    :sswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v44

    if-eqz v44, :cond_75

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v44

    if-nez v44, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setIsUserSelecting(Z)V

    :cond_74
    const/16 v44, 0x1

    sput-boolean v44, Lcom/diotek/ime/implement/input/InputControllerImpl;->isPreviousStateShiftPress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v44

    if-eqz v44, :cond_79

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->getSuggestionActiveIndex()I

    move-result v44

    add-int/lit8 v13, v44, 0x1

    if-ne v13, v9, :cond_78

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-eq v9, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v44

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_76
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move v11, v9

    :goto_14
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-ge v11, v0, :cond_77

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_77
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v44

    if-nez v44, :cond_0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_78
    if-ge v13, v9, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_79
    const/16 v44, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    :sswitch_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v44

    if-eqz v44, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v44

    if-nez v44, :cond_7c

    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v44

    if-eqz v44, :cond_7e

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v44

    if-nez v44, :cond_7e

    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v44

    if-nez v44, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->size()I

    move-result v45

    add-int/lit8 v45, v45, -0x1

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v9

    if-eqz v9, :cond_0

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move v11, v13

    :goto_15
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-ge v11, v0, :cond_7d

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    :cond_7d
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_7e
    const/16 v44, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    :sswitch_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v44

    if-eqz v44, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->updateShiftState()V

    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_80

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v44

    if-nez v44, :cond_0

    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_81

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v44

    if-nez v44, :cond_82

    :cond_81
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v44

    if-nez v44, :cond_86

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v44

    if-eqz v44, :cond_86

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v44

    if-nez v44, :cond_86

    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-eq v9, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v44

    const/16 v45, -0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_83

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v44

    if-nez v44, :cond_84

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-interface/range {v44 .. v45}, Lcom/diotek/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_84
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/CharSequence;

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    invoke-virtual/range {v36 .. v37}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-gt v13, v0, :cond_0

    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    move v11, v13

    :goto_16
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v44

    move/from16 v0, v44

    if-ge v11, v0, :cond_85

    move-object/from16 v0, v36

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    move-object/from16 v0, v34

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_85
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/input/AbstractInputController;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_86
    const/16 v44, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    :sswitch_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v44, v0

    invoke-interface/range {v44 .. v44}, Lcom/diotek/ime/framework/common/InputManager;->showModeChangePopupKeyboard()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3f6 -> :sswitch_35
        -0x3f5 -> :sswitch_38
        -0x3f4 -> :sswitch_37
        -0x3f3 -> :sswitch_36
        -0x3f2 -> :sswitch_32
        -0x3f0 -> :sswitch_31
        -0x3ef -> :sswitch_30
        -0x3ee -> :sswitch_47
        -0x3ed -> :sswitch_46
        -0x3ec -> :sswitch_48
        -0x3ea -> :sswitch_45
        -0x3e9 -> :sswitch_44
        -0x3dc -> :sswitch_43
        -0x3db -> :sswitch_42
        -0x1f4 -> :sswitch_3
        -0x1f3 -> :sswitch_4
        -0x1f2 -> :sswitch_7
        -0x1f1 -> :sswitch_6
        -0x1f0 -> :sswitch_5
        -0x193 -> :sswitch_12
        -0x192 -> :sswitch_a
        -0x191 -> :sswitch_19
        -0x149 -> :sswitch_f
        -0x148 -> :sswitch_f
        -0x147 -> :sswitch_f
        -0x146 -> :sswitch_f
        -0x145 -> :sswitch_f
        -0x144 -> :sswitch_f
        -0x143 -> :sswitch_e
        -0x142 -> :sswitch_d
        -0x141 -> :sswitch_d
        -0x138 -> :sswitch_3f
        -0x137 -> :sswitch_10
        -0x136 -> :sswitch_1f
        -0x106 -> :sswitch_2
        -0x105 -> :sswitch_1
        -0xe5 -> :sswitch_3e
        -0xe4 -> :sswitch_20
        -0xe2 -> :sswitch_15
        -0xe1 -> :sswitch_17
        -0xe0 -> :sswitch_18
        -0xd1 -> :sswitch_1b
        -0xd0 -> :sswitch_1a
        -0xbe -> :sswitch_14
        -0xa6 -> :sswitch_41
        -0xa5 -> :sswitch_41
        -0xa4 -> :sswitch_41
        -0xa3 -> :sswitch_41
        -0xa2 -> :sswitch_40
        -0xa1 -> :sswitch_40
        -0x98 -> :sswitch_3b
        -0x97 -> :sswitch_3b
        -0x96 -> :sswitch_3b
        -0x95 -> :sswitch_3b
        -0x94 -> :sswitch_3b
        -0x93 -> :sswitch_3b
        -0x92 -> :sswitch_3b
        -0x91 -> :sswitch_3b
        -0x90 -> :sswitch_3b
        -0x8f -> :sswitch_3b
        -0x8e -> :sswitch_3b
        -0x8d -> :sswitch_3b
        -0x89 -> :sswitch_33
        -0x88 -> :sswitch_29
        -0x87 -> :sswitch_2d
        -0x86 -> :sswitch_2e
        -0x85 -> :sswitch_25
        -0x84 -> :sswitch_2c
        -0x83 -> :sswitch_2b
        -0x81 -> :sswitch_2f
        -0x80 -> :sswitch_2a
        -0x7f -> :sswitch_b
        -0x7d -> :sswitch_28
        -0x7c -> :sswitch_34
        -0x7a -> :sswitch_39
        -0x79 -> :sswitch_27
        -0x78 -> :sswitch_26
        -0x77 -> :sswitch_23
        -0x76 -> :sswitch_24
        -0x75 -> :sswitch_22
        -0x70 -> :sswitch_21
        -0x6f -> :sswitch_16
        -0x6e -> :sswitch_3a
        -0x6d -> :sswitch_14
        -0x6c -> :sswitch_11
        -0x6a -> :sswitch_14
        -0x69 -> :sswitch_13
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_c
        -0x65 -> :sswitch_9
        -0x64 -> :sswitch_8
        -0x3e -> :sswitch_3d
        -0x3c -> :sswitch_3c
        -0x3b -> :sswitch_3c
        -0x3a -> :sswitch_3c
        -0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7a68434e -> :sswitch_1c
        0x7a68484b -> :sswitch_1d
        0x7a685457 -> :sswitch_1e
    .end sparse-switch

    :array_0
    .array-data 4
        0x27
        0x22
    .end array-data

    :array_1
    .array-data 4
        0x27
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x3b
        0x3a
    .end array-data

    :array_3
    .array-data 4
        0x3b
        0x3a
    .end array-data

    :array_4
    .array-data 4
        0x2d
        0x5f
    .end array-data

    :array_5
    .array-data 4
        0x2d
        0x5f
    .end array-data

    :array_6
    .array-data 4
        0x3a
        0x3f
    .end array-data

    :array_7
    .array-data 4
        0x3a
        0x3f
    .end array-data

    :array_8
    .array-data 4
        0x2c
        0x5f
    .end array-data

    :array_9
    .array-data 4
        0x60c
        0x21
    .end array-data

    :array_a
    .array-data 4
        0x2c
        0x21
    .end array-data

    :array_b
    .array-data 4
        0x2c
        0x5f
    .end array-data

    :array_c
    .array-data 4
        0x60c
        0x21
    .end array-data

    :array_d
    .array-data 4
        0x2c
        0x21
    .end array-data

    :array_e
    .array-data 4
        0x60c
        0x21
    .end array-data

    :array_f
    .array-data 4
        0x2c
        0x21
    .end array-data

    :array_10
    .array-data 4
        0x3a
        0x55e
    .end array-data

    :array_11
    .array-data 4
        0x3a
        0x55e
    .end array-data

    :array_12
    .array-data 4
        0x2d
        0x7e
    .end array-data

    :array_13
    .array-data 4
        0x2d
        0x7e
    .end array-data

    :array_14
    .array-data 4
        0x55c
        0xab
    .end array-data

    :array_15
    .array-data 4
        0x55c
        0xab
    .end array-data

    :array_16
    .array-data 4
        0x55d
        0xbb
    .end array-data

    :array_17
    .array-data 4
        0x55d
        0xbb
    .end array-data

    :array_18
    .array-data 4
        0x2e
        0x2d
    .end array-data

    :array_19
    .array-data 4
        0x2e
        0x61f
    .end array-data

    :array_1a
    .array-data 4
        0x2e
        0x3f
    .end array-data

    :array_1b
    .array-data 4
        0x2e
        0x2d
    .end array-data

    :array_1c
    .array-data 4
        0x2e
        0x61f
    .end array-data

    :array_1d
    .array-data 4
        0x17d4
        0x3f
    .end array-data

    :array_1e
    .array-data 4
        0x2e
        0x3f
    .end array-data

    :array_1f
    .array-data 4
        0x2e
        0x3f
    .end array-data

    :array_20
    .array-data 4
        0x2e
        0x61f
    .end array-data

    :array_21
    .array-data 4
        0x2e
        0x3f
    .end array-data
.end method

.method public resetHandWritingHasBoonUsed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    return-void
.end method

.method public sendDownUpKeyEvent(II)V
    .locals 24
    .param p1    # I
    .param p2    # I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v17

    const/4 v1, 0x3

    move/from16 v0, v17

    if-ne v0, v1, :cond_6

    const/16 v21, 0x0

    const/16 v16, 0x0

    const/16 v22, 0x0

    if-eqz v19, :cond_0

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v21

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    :try_start_0
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    iget-object v0, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v22, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v21, :cond_6

    if-eqz v16, :cond_6

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x16

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x15

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    :cond_2
    if-eqz v20, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x15

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x16

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    :cond_4
    const/16 v1, 0x14

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x13

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v18

    const-string v1, "InputControllerImpl"

    const-string v4, "NullPointerException in onDownKeyEvent"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v23

    if-eqz v23, :cond_7

    const-string v1, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/16 v1, 0x16

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    :cond_8
    if-eqz v19, :cond_5

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move/from16 v7, p1

    move/from16 v9, p2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-wide v7, v2

    move/from16 v10, p1

    move/from16 v12, p2

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public setEmojiPredictionEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->setEmojiPredictionEnabled(Z)V

    return-void
.end method

.method public setFullWidthMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    return-void
.end method

.method public setHwrCandidateStatus(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/input/InputModule;->setHwrCandidateStatus(IZ)V

    return-void
.end method

.method public setParameterForCapsLockState(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/input/InputModule;->setParameterForCapsLockState(Z)V

    return-void
.end method

.method public setPointingKeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTraceStatus()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v4, v5, v6}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    iget-boolean v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-nez v4, :cond_1

    const/high16 v4, 0x7a680000

    if-eq v2, v4, :cond_0

    const v4, 0x7a68434e

    if-eq v2, v4, :cond_0

    const v4, 0x7a68484b

    if-eq v2, v4, :cond_0

    const v4, 0x7a685457

    if-ne v2, v4, :cond_1

    :cond_0
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    :goto_0
    return-void

    :cond_1
    const/high16 v4, 0x6a610000

    if-ne v2, v4, :cond_2

    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_2
    const/high16 v4, 0x74720000

    if-ne v2, v4, :cond_3

    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_3
    if-ne v1, v7, :cond_7

    sparse-switch v2, :sswitch_data_0

    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v4

    if-lt v4, v10, :cond_5

    if-eq v0, v7, :cond_4

    if-ne v0, v9, :cond_5

    :cond_4
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_5
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :sswitch_1
    if-eqz v3, :cond_6

    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_6
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_7
    const/4 v4, 0x7

    if-ne v1, v4, :cond_8

    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_c

    sparse-switch v2, :sswitch_data_1

    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v4

    if-lt v4, v10, :cond_a

    if-eq v0, v7, :cond_9

    if-ne v0, v9, :cond_a

    :cond_9
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_a
    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :sswitch_3
    if-eqz v3, :cond_b

    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_b
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_c
    const/high16 v4, 0x6b6f0000

    if-ne v2, v4, :cond_d

    iget-object v4, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {v8}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto/16 :goto_0

    :cond_d
    invoke-static {v7}, Lcom/diotek/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6b6f0000 -> :sswitch_0
        0x7a68434e -> :sswitch_1
        0x7a68484b -> :sswitch_1
        0x7a685457 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x6b6f0000 -> :sswitch_2
        0x7a68434e -> :sswitch_3
        0x7a68484b -> :sswitch_3
        0x7a685457 -> :sswitch_3
    .end sparse-switch
.end method

.method public setVietnameseTelexComposing()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->setVietnameseTelexComposing()V

    :cond_0
    return-void
.end method

.method public swipeLeft()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    return-void
.end method

.method public swipeRight()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->endMultitapTimer()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/diotek/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    return-void
.end method

.method public trimSwiftkeyMemory()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->trimSwiftkeyMemory()V

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/diotek/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/diotek/ime/framework/input/InputModule;->updateVOHWRSuggestion()V

    return-void
.end method

.method public updateViewStatus()V
    .locals 10

    const/4 v5, 0x1

    const/16 v9, 0x21

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v0

    move v2, v0

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->composingText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_2
    iget-object v6, p0, Lcom/diotek/ime/framework/input/AbstractInputController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->isMultiTapRnunnig()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v7, v8, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v7, v8, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    :goto_1
    if-nez v2, :cond_7

    move v1, v4

    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    iget-object v7, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v4, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v3, v5, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    if-nez v1, :cond_4

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_4
    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursorChangingOnComposing(I)V

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    iget-object v8, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-eq v2, v6, :cond_6

    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    iget-object v8, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    iget-object v6, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/diotek/ime/implement/input/InputControllerImpl;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    iget-object v8, p0, Lcom/diotek/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_7
    move v1, v5

    goto :goto_2
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 0

    invoke-super {p0}, Lcom/diotek/ime/framework/input/AbstractInputController;->writeDBdataToFileOnFinishInput()V

    return-void
.end method
