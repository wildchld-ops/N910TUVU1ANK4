.class public Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;
.super Lcom/diotek/ime/framework/engine/AbstractInputEngine;
.source "VOHWRWrapper.java"

# interfaces
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;
.implements Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;


# static fields
.field private static final COMPOSING_RECOGNITION:Z = true

.field private static final INVALIDE_CHARACTER:Ljava/lang/Character;

.field private static final PANELTEXTSIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "VisionObject"

.field private static mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private static mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;


# instance fields
.field private backupScriptType:I

.field private mCapslockMode:Z

.field private mComposingBase:I

.field private mComposingEnd:I

.field private mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

.field private mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

.field private mCursorChanged:Z

.field private mDelayedConfiguration:Z

.field private mEndindex:I

.field private mFirstReconnition:Z

.field protected mFontManager:Lcom/diotek/ime/framework/common/FontManager;

.field private mHWRKeyboard:Landroid/widget/FrameLayout;

.field private mIsConfigurationOnGoing:Z

.field private mIsPickSuggestion:Z

.field private mPanelCursor:I

.field private mPanelIsInsertMode:Z

.field private mPanelTempText:Ljava/lang/String;

.field private mPanelText:Ljava/lang/String;

.field private mPredictions:Lcom/touchtype_fluency/Predictions;

.field private mSelectedLanguagePacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedText:Ljava/lang/CharSequence;

.field private mSequence:Lcom/touchtype_fluency/Sequence;

.field private mShiftMode:Z

.field private mStartindex:I

.field private mStringBeforeCursor:Ljava/lang/String;

.field private mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalEditText:Ljava/lang/CharSequence;

.field prevInputConnection:Landroid/view/inputmethod/InputConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xfffd

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->INVALIDE_CHARACTER:Ljava/lang/Character;

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyNormalManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyChineseManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;->getInstance()Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyJapaneseManager;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/AbstractInputEngine;-><init>()V

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingEnd:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelTempText:Ljava/lang/String;

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStringBeforeCursor:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mShiftMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCapslockMode:Z

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->backupScriptType:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFirstReconnition:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsConfigurationOnGoing:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mDelayedConfiguration:Z

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedText:Ljava/lang/CharSequence;

    new-instance v0, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v0}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    sget-object v1, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->loadVOLibrary()V

    return-void
.end method

.method private CheckAndPipingPanelText(Ljava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;

    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    sget-object v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v1

    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_8

    const/4 v3, 0x0

    const-string v0, ""

    sget-object v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_4

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_2
    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    sget-object v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v5, ""

    invoke-interface {v4, v7, v3, v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sub-int v5, v1, v3

    add-int/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_2
    if-ltz v3, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_5

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_7

    :cond_5
    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_6
    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    sget-object v4, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ""

    invoke-interface {v4, v3, v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method private SetCorrectionMode(I)V
    .locals 2
    .param p1    # I

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    :cond_0
    return-void
.end method

.method private SetInsertionMode(I)V
    .locals 1
    .param p1    # I

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    return-object v0
.end method

.method private checkValideStr(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    const/4 v2, 0x0

    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    aget-char v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "VisionObject"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ Value ] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-char v4, v0, v2

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->INVALIDE_CHARACTER:Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private closeInsertMode()V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->moveCursorToVisibleIndex()Z

    goto :goto_0
.end method

.method private commitEditText(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_1
    return-void
.end method

.method private composingEditText(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eq v0, v1, :cond_1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->prevInputConnection:Landroid/view/inputmethod/InputConnection;

    goto :goto_0
.end method

.method private configure()V
    .locals 15

    const/4 v13, 0x1

    iget-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsConfigurationOnGoing:Z

    if-eqz v12, :cond_1

    iput-boolean v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mDelayedConfiguration:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v9, 0x0

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v11

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v5

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v4

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v3

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    invoke-virtual {v11, v5, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    if-ne v2, v13, :cond_5

    const-string v8, "number"

    :goto_1
    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->createUserDictionary(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    :cond_2
    if-nez v9, :cond_3

    const-string v12, "SamsungIME"

    const-string v13, "Exception no VO resource. try to load default VOLP"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "en_GB"

    invoke-virtual {v11, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v10, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :cond_3
    if-nez v9, :cond_4

    const-string v12, "SamsungIME"

    const-string v13, "Exception no VO resource. try to load default VOLP"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "en_US"

    invoke-virtual {v11, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getResources(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :cond_4
    if-nez v9, :cond_8

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->setQwertyInputMethod()V

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    const-string v8, "uri"

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    const-string v8, "email"

    goto :goto_1

    :cond_7
    const-string v8, "text"

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_2
    array-length v12, v9

    if-ge v1, v12, :cond_a

    aget-object v12, v9, v1

    if-nez v12, :cond_9

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->setQwertyInputMethod()V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_a
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v12, :cond_c

    const/4 v1, 0x0

    :goto_3
    array-length v12, v9

    if-ge v1, v12, :cond_b

    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "configuration with resouce : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v9, v1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_b
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-static {}, Lcom/visionobjects/myscript/certificate/MyCertificate;->getBytes()[B

    move-result-object v13

    invoke-interface {v12, v6, v9, v7, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->configure(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[B)V

    :cond_c
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setSwiftkeySession()V

    goto/16 :goto_0
.end method

.method private createUserDictionary(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ko"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VW] createUserDictionary - languageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[VW] lexicon : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private getColorIdByIndex(I)Ljava/lang/String;
    .locals 4
    .param p1    # I

    const-string v0, "pen_color_green"

    packed-switch p1, :pswitch_data_0

    const-string v0, "pen_color_blue"

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of pen color index error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - set default color blue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "pen_color_black"

    goto :goto_0

    :pswitch_1
    const-string v0, "pen_color_red"

    goto :goto_0

    :pswitch_2
    const-string v0, "pen_color_blue"

    goto :goto_0

    :pswitch_3
    const-string v0, "pen_color_green"

    goto :goto_0

    :pswitch_4
    const-string v0, "pen_color_brown"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEditCursorIndex()I
    .locals 5

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget v3, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int v0, v3, v4

    :cond_0
    return v0
.end method

.method private getEditExtractText()V
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private getHWRPenColor()I
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_HWR_PENCOLOR"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getHWRPenThickness()I
    .locals 6

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SETTINGS_DEFAULT_HWR_PENTHICKNESS"

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    int-to-float v3, v1

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    return v1
.end method

.method private getLibPath()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getEnginePath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRecognizeDelay()I
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SETTINGS_DEFAULT_HWR_RECOGNIZE_DELAY"

    const/16 v3, 0x1f4

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSequenceType()Lcom/touchtype_fluency/Sequence$Type;
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0xfff000

    and-int v1, v2, v3

    :cond_0
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_1

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    :goto_0
    return-object v2

    :cond_2
    sget-object v2, Lcom/touchtype_fluency/Sequence$Type;->NORMAL:Lcom/touchtype_fluency/Sequence$Type;

    goto :goto_0
.end method

.method private getfontSizes(I)[F
    .locals 6
    .param p1    # I

    const/4 v5, 0x5

    const/4 v0, 0x0

    new-array v2, v5, [F

    div-int/lit8 v0, p1, 0x5

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v5, :cond_0

    add-int/lit8 v3, v1, -0x1

    mul-int v4, v1, v0

    int-to-float v4, v4

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private initSyncHwrPaneltext(I)V
    .locals 0
    .param p1    # I

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->syncHwrPaneltext(I)V

    return-void
.end method

.method private isComposingRecongnitionMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isFullTextRecongnitionMode()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isNotSupportCursiveHWR(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 4
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v1

    iget v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->backupScriptType:I

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->backupScriptType:I

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setSwiftkeySession()V

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSwiftKeyUtilSession()Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v2

    new-instance v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper$1;-><init>(Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;II)V

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->submitTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadVOLibrary()V
    .locals 4

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getLibPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "=====VO test ====="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/system/lib/libloadStylusCore.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libStylusCore.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/stylus/core/LibLoader;->loadLib(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "/system/VODB/lib/libStylusCore.so"

    invoke-static {v1}, Lcom/visionobjects/stylus/core/LibLoader;->loadLib(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setComposingEditText(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_0
    return-void
.end method

.method private setCursorEditText(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_1
    return-void
.end method

.method private setSwiftkeySession()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyJapaneseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyNormalManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    goto :goto_0
.end method

.method private syncHwrPaneltext(I)V
    .locals 9
    .param p1    # I

    const/16 v6, 0x64

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v4, ""

    const-string v3, ""

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v2, v6, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-interface {v2, v6, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v5, p1, v5

    iput v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    const-string v5, ""

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_0

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, ""

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_6

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_5

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    :cond_5
    :goto_1
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_5

    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    goto :goto_1

    :cond_7
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_5

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_a

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    :cond_9
    :goto_2
    const-string v5, "SamsungIME"

    const-string v6, "[VW] SyncHwrPaneltext - mWidgetApi == null !!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    goto :goto_2

    :cond_b
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_9

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    iput-boolean v7, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto :goto_2
.end method


# virtual methods
.method public CommitAndInitText(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x3

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v4, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v1

    invoke-static {v1}, Lcom/diotek/ime/framework/util/Utils;->isNotSupportCursiveHWR(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->closeInsertMode()V

    :cond_2
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getEditCursorIndex()I

    move-result v1

    iput v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    const-string v1, ""

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v2, ""

    invoke-interface {v1, v2}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v3, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto :goto_0
.end method

.method public SetChangeMode(II)V
    .locals 13
    .param p1    # I
    .param p2    # I

    const/4 v12, 0x0

    sget-object v8, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v6, :cond_7

    new-instance v8, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v8}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v6, v8, v12}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v8, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v8, :cond_7

    iget-object v8, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v9, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    if-ge v8, v9, :cond_5

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v2, ""

    iget v8, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sub-int v7, v8, v9

    :goto_1
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sget-object v9, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v9

    add-int v3, v8, v9

    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    sget-object v8, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v9, ""

    invoke-interface {v8, v12, v7, v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    invoke-interface {v6}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v8, "VisionObject"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " VOHWRWrapper \"SetChangeMode\" : Exception Caught! : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget v8, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget-object v9, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    if-lt v8, v9, :cond_6

    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v9, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    sub-int/2addr v8, v9

    if-ltz v8, :cond_6

    iget-object v8, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v10, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v11, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-interface {v8, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_6
    iget v8, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v9, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int v1, v8, v9

    :cond_7
    if-eqz v0, :cond_8

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_8
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CommitAndInitText(I)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    :goto_3
    iget-boolean v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_e

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    goto/16 :goto_0

    :cond_9
    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    if-gt v8, p1, :cond_a

    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v8, p1, :cond_b

    :cond_a
    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CommitAndInitText(I)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_3

    :cond_b
    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v8, p1, :cond_c

    sget-object v8, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->SetInsertionMode(I)V

    goto :goto_3

    :cond_c
    iget v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sub-int v8, p1, v8

    invoke-direct {p0, v8}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->SetCorrectionMode(I)V

    goto :goto_3

    :cond_d
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->initSyncHwrPaneltext(I)V

    goto :goto_3

    :cond_e
    iput-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    goto/16 :goto_0
.end method

.method public SetInsertMode(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->SetInsertionMode(I)V

    goto :goto_0
.end method

.method public addTextToHWRPanel(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p1    # Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_0

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v1}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/lit8 v3, v0, -0x1

    add-int/2addr v1, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v0, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    :goto_1
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CheckAndPipingPanelText(Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v1, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v0, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_1
.end method

.method public appendText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelTempText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkChineseSequence()V
    .locals 5

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v2, 0x3f

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSwiftkeyChineseManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v2}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    :cond_0
    return-void
.end method

.method public checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V
    .locals 12
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # [I
    .param p3    # [I

    const/16 v9, 0x3f

    const/4 v11, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0, v11}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v0, v9, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v0, v9, v11}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v1, 0x0

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    aput v11, p2, v11

    aput v11, p3, v11

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStringBeforeCursor:Ljava/lang/String;

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->checkChineseSequence()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->updateSelectList()I

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Lcom/touchtype_fluency/Sequence;

    invoke-direct {v8}, Lcom/touchtype_fluency/Sequence;-><init>()V

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    new-instance v8, Lcom/touchtype_fluency/ContextCurrentWord;

    iget-object v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Lcom/touchtype_fluency/ContextCurrentWord;-><init>(Lcom/touchtype_fluency/Sequence;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    aput v11, p2, v11

    goto :goto_1

    :cond_4
    :try_start_0
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getContextCorrentWord(Ljava/lang/String;I)Lcom/touchtype_fluency/ContextCurrentWord;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v8}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    aput v9, p2, v8

    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, p2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v8}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_8

    invoke-interface {v3, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v2, Lcom/touchtype_fluency/WordBreakIterator;

    invoke-direct {v2}, Lcom/touchtype_fluency/WordBreakIterator;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/touchtype_fluency/WordBreakIterator;->setText(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/touchtype_fluency/WordBreakIterator;->next()I

    move-result v8

    aput v8, p3, v11

    aget v8, p3, v11

    invoke-interface {v3, v11, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v8}, Lcom/touchtype_fluency/ContextCurrentWord;->getContext()Lcom/touchtype_fluency/Sequence;

    move-result-object v8

    iput-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getSequenceType()Lcom/touchtype_fluency/Sequence$Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    if-eqz v1, :cond_9

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->updateSelectList()I

    goto/16 :goto_0

    :cond_8
    aput v11, p3, v11

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->restoredTouchHistory(Ljava/lang/String;)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v7

    if-nez v7, :cond_a

    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v8, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public doNextWordPredictionForXt9(Z)I
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->clearContext()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->updateSelectList()I

    move-result v0

    return v0
.end method

.method public doNoteWordDoneForXt9(I)I
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedWord()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    new-instance v2, Lcom/touchtype_fluency/Term;

    invoke-direct {v2, v0}, Lcom/touchtype_fluency/Term;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAvailableLanguages()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v11

    move-object v0, v9

    array-length v6, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v3, v0, v1

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v4, v7}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isInstallable()Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "available handwriting language = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v8
.end method

.method public getCurrentWord()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwrSuggestion(Ljava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getInstallableLanguages()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSupportLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v9

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v11

    move-object v0, v9

    array-length v7, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v7, :cond_2

    aget-object v4, v0, v1

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v5, v8}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->isInstallable()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getSuggestionForSwiftkey(Ljava/util/ArrayList;Z)V
    .locals 6
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStringBeforeCursor:Ljava/lang/String;

    const-string v4, ""

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStringBeforeCursor:Ljava/lang/String;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mContextCurrentWord:Lcom/touchtype_fluency/ContextCurrentWord;

    invoke-virtual {v1}, Lcom/touchtype_fluency/ContextCurrentWord;->getCurrentWord()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getSuggestion(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public initHwrPanel(Landroid/widget/FrameLayout;I)V
    .locals 11
    .param p1    # Landroid/widget/FrameLayout;
    .param p2    # I

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    if-ne v5, p1, :cond_1

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CommitAndInitText(I)V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->configure()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    iput-boolean v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFirstReconnition:Z

    iput-boolean v10, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    const-string v5, ""

    iput-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iput v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iput v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iput v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iput v9, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mHWRKeyboard:Landroid/widget/FrameLayout;

    const v6, 0x7f080037

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/visionobjects/textwidget/TextWidgetApi;

    sput-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v10}, Lcom/visionobjects/textwidget/TextWidgetApi;->setHoverEnabled(Z)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnConfigureListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnConfigureListener;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnRecognitionListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnRecognitionListener;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnTextChangedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnTextChangedListener;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnCursorHandleDragListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnCursorHandleDragListener;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnInsertHandleDragListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleDragListener;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnInsertHandleClickedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnInsertHandleClickedListener;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnGestureListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnGestureListener;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnSelectionChangedListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnSelectionChangedListener;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, p0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setOnUserScrollListener(Lcom/visionobjects/textwidget/TextWidgetApi$OnUserScrollListener;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getRecognizeDelay()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoTypesetDelay(I)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, "vohwr_baseline_color"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setBaselineColor(I)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getHWRPenThickness()I

    move-result v6

    int-to-float v6, v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInkWidth(F)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v10}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoHideHandleEnabled(Z)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v6, 0x7f020b47

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setScrollbarResource(I)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v6, 0x7f020b44

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setScrollbarMask(I)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v6, 0x7f020b4a

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertHandleResource(I)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v6, 0x7f020b68

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorResource(I)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const v6, 0x7f020b40

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorHandleResource(I)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v7, "HANDWRITING"

    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v6, v7, v8}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTypeface(Landroid/graphics/Typeface;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getHWRPenColor()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getColorIdByIndex(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInkColor(I)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "handwriting_floating_vopanel_font_size"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v4

    :try_start_0
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, "floating_vohwr_panel_bg"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawableID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setWritingAreaBackgroundResource(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, "handwriting_floating_vopanel_baseline_position"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setBaselinePosition(F)V

    :goto_2
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v5

    invoke-static {v5}, Lcom/diotek/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_3

    mul-int/lit8 v5, v4, 0x3

    div-int/lit8 v4, v5, 0x2

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentLanguageUseSpaceBetweenWords()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTransientSpaceEnabled(Z)V

    :cond_4
    invoke-direct {p0, v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getfontSizes(I)[F

    move-result-object v3

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v5

    if-eqz v5, :cond_7

    if-eqz v3, :cond_5

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTextSizes([F)V

    :cond_5
    :goto_3
    :try_start_1
    iget-object v5, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, "handwriting_floating_vopanel_text_margin"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollMargin(F)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v10}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollEnabled(Z)V

    :goto_5
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->configure()V

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getEditCursorIndex()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, ""

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setWritingAreaBackgroundColor(I)V

    goto/16 :goto_1

    :cond_6
    const-string v5, "handwriting_vopanel_font_size"

    invoke-static {v5}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v4

    :try_start_2
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, "vohwr_panel_bg"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getDrawableID(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setWritingAreaBackgroundResource(I)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, "handwriting_vopanel_baseline_position"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setBaselinePosition(F)V

    goto/16 :goto_2

    :catch_1
    move-exception v1

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setWritingAreaBackgroundColor(I)V

    goto :goto_6

    :cond_7
    if-eqz v3, :cond_5

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const/4 v6, 0x3

    aget v6, v3, v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTextSize(F)V

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_5

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->setTextSizes([F)V

    goto/16 :goto_3

    :cond_9
    :try_start_3
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, "handwriting_vopanel_text_margin"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollMargin(F)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, "handwriting_vopanel_text_margin"

    invoke-static {v6}, Lcom/diotek/ime/implement/resource/CustomResource;->getInteger(Ljava/lang/String;)I

    move-result v6

    int-to-float v6, v6

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollMargin(F)V

    goto/16 :goto_4

    :cond_a
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->setAutoScrollEnabled(Z)V

    goto/16 :goto_5

    :cond_b
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->getEditCursorIndex()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->initSyncHwrPaneltext(I)V

    goto/16 :goto_0

    :cond_c
    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v6, ""

    invoke-interface {v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    sget-object v5, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v5, v9}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    goto/16 :goto_0
.end method

.method public isContainInLanguageDB(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public isSentenceTermPunct(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    return v0
.end method

.method public learnSequence(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "KEY_DYNAMNIC_LM_UPDATED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isSetupWizardRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputStatus;->isKNOXStatus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->learnDynamicModel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigureBegin()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsConfigurationOnGoing:Z

    return-void
.end method

.method public onConfigureEnd(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsConfigurationOnGoing:Z

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_1

    const-string v0, "VisionObject"

    const-string v1, "Handwriting configuration : mWidgetApi is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "VisionObject"

    const-string v1, "Handwriting configuration succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mDelayedConfiguration:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mDelayedConfiguration:Z

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->configure()V

    goto :goto_0

    :cond_2
    const-string v0, "VisionObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handwriting configuration failed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v2}, Lcom/visionobjects/textwidget/TextWidgetApi;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->configure()V

    goto :goto_0
.end method

.method public onCursorHandleDrag(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0, p1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    return-void
.end method

.method public onCursorHandleDragBegin()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    :cond_0
    return-void
.end method

.method public onCursorHandleDragEnd(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedText:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto :goto_0
.end method

.method public onInsertGesture(I)V
    .locals 4
    .param p1    # I

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    :cond_1
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v2, " "

    invoke-interface {v1, p1, p1, v2}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v2, p1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v2, 0x3e

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1, p1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_0
.end method

.method public onInsertHandleClicked()V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->closeInsertMode()V

    return-void
.end method

.method public onInsertHandleDragBegin()V
    .locals 0

    return-void
.end method

.method public onInsertHandleDragEnd(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onJoinGesture(I)V
    .locals 6
    .param p1    # I

    const/16 v5, 0x20

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    move v2, p1

    move v0, p1

    if-ge p1, v1, :cond_0

    :goto_1
    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public onPinchGesture()V
    .locals 0

    return-void
.end method

.method public onRecognitionBegin()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mFirstReconnition:Z

    return-void
.end method

.method public onRecognitionEnd()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v2, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto :goto_0
.end method

.method public onReturnGesture(I)V
    .locals 2
    .param p1    # I

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSelectionChanged(II[Ljava/lang/String;I)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # [Ljava/lang/String;
    .param p4    # I

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    aget-object v1, p3, p4

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    aget-object v2, p3, p4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_6

    if-eq v0, p4, :cond_4

    aget-object v1, p3, p4

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    aget-object v2, p3, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "VisionObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "labels["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iput p2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    :goto_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    aget-object v1, p3, p4

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto/16 :goto_0

    :cond_7
    iput p2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iput p2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto/16 :goto_0
.end method

.method public onSelectionGesture(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public onSingleTapGesture(I)V
    .locals 1
    .param p1    # I

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->SetCorrectionMode(I)V

    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/String;Z)V
    .locals 15
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->checkValideStr(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v2

    if-eqz v1, :cond_2

    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    :cond_2
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelTempText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v12, ""

    iput-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelTempText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelIsInsertMode:Z

    if-eqz v12, :cond_4

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    goto :goto_0

    :cond_4
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelCursor:I

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v12, :cond_6

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v12, v13, :cond_6

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    iget v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    :cond_6
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->diff(Ljava/lang/String;Ljava/lang/String;Z)Lcom/diotek/ime/framework/engine/vohwr/TextDiff;

    move-result-object v10

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v12

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int v7, v12, v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ltz v12, :cond_a

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getOldText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v11, ""

    if-eqz v1, :cond_7

    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v11

    :cond_7
    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v12

    if-eqz v12, :cond_e

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_8

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_8

    const-string v12, " "

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "\n"

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentLanguageUseSpaceBetweenWords()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    if-nez v12, :cond_8

    const-string v12, " "

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    :cond_8
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v12

    if-eqz v12, :cond_b

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    :goto_1
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->CheckAndPipingPanelText(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    sget-object v13, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v13

    if-ne v12, v13, :cond_c

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    sget-object v13, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->getInsertIndex()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    :goto_2
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_9

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    iget-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    if-nez v12, :cond_9

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    :cond_9
    :goto_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCursorChanged:Z

    :cond_a
    :goto_4
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    :cond_b
    iget v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v12, v7

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12, v7}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_1

    :cond_c
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v12}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    goto :goto_2

    :cond_d
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_e
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getOldText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_10

    if-eqz v11, :cond_f

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_f

    const-string v12, ""

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    :cond_f
    iget v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    :goto_5
    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getNewText()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_10
    iget v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {p0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    iget v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v13

    add-int/2addr v12, v13

    iget v13, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getIndex()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v10}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getOldText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {p0, v12, v13}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    goto :goto_5

    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_a

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_12

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mTotalEditText:Ljava/lang/CharSequence;

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    if-nez v3, :cond_12

    if-nez v2, :cond_12

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/util/Utils;->isNotSupportCursiveHWR(I)Z

    move-result v12

    if-nez v12, :cond_12

    const-string v12, " "

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1f

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/util/Utils;->isNotSupportCursiveHWR(I)Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-static {}, Lcom/diotek/ime/framework/input/IndianInputModule;->getInstance()Lcom/diotek/ime/framework/input/IndianInputModule;

    move-result-object v6

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v8, -0x1

    const/4 v4, -0x1

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v4

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v4}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v4}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v12

    if-nez v12, :cond_13

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v12

    if-eqz v12, :cond_1e

    :cond_13
    if-eqz v9, :cond_15

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_15

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v8

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v12

    if-eqz v12, :cond_19

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v12

    if-nez v12, :cond_14

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v12

    if-eqz v12, :cond_15

    :cond_14
    if-ne v4, v8, :cond_15

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    :cond_15
    :goto_6
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v12, :cond_17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_16

    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    :cond_16
    sget-object v12, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    const-string v13, ""

    invoke-interface {v12, v13}, Lcom/visionobjects/textwidget/TextWidgetApi;->setText(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    :cond_17
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v12

    if-eqz v12, :cond_20

    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v12

    invoke-static {v12}, Lcom/diotek/ime/framework/util/Utils;->isNotSupportCursiveHWR(I)Z

    move-result v12

    if-nez v12, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    :cond_18
    iget-object v12, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto/16 :goto_4

    :cond_19
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v4}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v12

    if-eqz v12, :cond_15

    :cond_1a
    if-ne v4, v8, :cond_15

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_1b
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v4}, Lcom/diotek/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v12

    if-eqz v12, :cond_1d

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isIndependentVowel(II)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v12

    if-eqz v12, :cond_15

    :cond_1c
    if-ne v4, v8, :cond_15

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_1d
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12}, Lcom/diotek/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-virtual {v6, v12, v8}, Lcom/diotek/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v12

    if-eqz v12, :cond_15

    if-ne v4, v8, :cond_15

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_1e
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f
    invoke-direct/range {p0 .. p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->composingEditText(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_20
    invoke-static/range {p1 .. p1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public onUnderlineGesture(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0, p2}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    :cond_0
    return-void
.end method

.method public onUserScroll()V
    .locals 3

    const-string v1, "VisionObject"

    const-string v2, "User scroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->moveCursorToVisibleIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v0

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_0
.end method

.method public onUserScrollBegin()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    :cond_0
    return-void
.end method

.method public onUserScrollEnd(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x0

    const-string v0, "VisionObject"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User scroll ends (at end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getHwrCandidateStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedText:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v3, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    :goto_1
    if-eqz p1, :cond_4

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    :cond_2
    :goto_2
    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->isInsertionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCorrectionMode()V

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v0}, Lcom/visionobjects/textwidget/TextWidgetApi;->moveCursorToVisibleIndex()Z

    sget-object v0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    sget-object v1, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_2
.end method

.method public processWhenPickSuggestionManually(I)I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return v0
.end method

.method public setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V
    .locals 0
    .param p1    # Lcom/diotek/ime/framework/view/Keyboard;

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->loadKeyPressModelByThread(Lcom/diotek/ime/framework/view/Keyboard;)V

    return-void
.end method

.method public updateSelectList()I
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    if-lez v1, :cond_1

    sget-boolean v1, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "[SwiftkeyWrapper] mPredictions are returned rapidly"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSelectedLanguagePacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v2

    invoke-static {v2}, Lcom/diotek/ime/framework/common/LanguageID;->getCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableLanguageModel(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-object v2, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSequence:Lcom/touchtype_fluency/Sequence;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->buildPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;I)Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    iput v4, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mActiveIndex:I

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->enableAllModel()V

    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPredictions:Lcom/touchtype_fluency/Predictions;

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v1

    goto :goto_0
.end method

.method public updateShiftState()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v1

    if-nez v2, :cond_0

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mShiftMode:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCapslockMode:Z

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCurrentSwiftkeyManager:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;

    iget-boolean v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mShiftMode:Z

    iget-boolean v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mCapslockMode:Z

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyManager;->updateShiftState(ZZ)V

    :cond_3
    return-void

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_1
.end method

.method public wordSelected(ILjava/lang/CharSequence;)I
    .locals 8
    .param p1    # I
    .param p2    # Ljava/lang/CharSequence;

    const/4 v6, 0x1

    const/4 v7, 0x0

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iput-boolean v6, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mIsPickSuggestion:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isFullTextRecongnitionMode()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->isComposingRecongnitionMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    :goto_1
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->getCursorIndex()I

    move-result v0

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/lit8 v4, v0, -0x1

    if-gt v3, v4, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    invoke-interface {v3, v4, v5, v2}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v4, v0

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    :goto_2
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    :cond_2
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v7}, Lcom/diotek/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    goto/16 :goto_1

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    invoke-interface {v1, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v4, v0

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_6

    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_6

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v4, v0

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto/16 :goto_2

    :cond_6
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v3, v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setCursorEditText(I)V

    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    goto/16 :goto_2

    :cond_7
    iget v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mComposingBase:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    add-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->setComposingEditText(II)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    iget v5, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mEndindex:I

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/visionobjects/textwidget/TextWidgetApi;->replaceCharacters(IILjava/lang/String;)V

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setCursorIndex(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mPanelText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_8

    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    iget v4, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mStartindex:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/visionobjects/textwidget/TextWidgetApi;->setInsertionMode(I)Z

    :cond_8
    sget-object v3, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mWidgetApi:Lcom/visionobjects/textwidget/TextWidgetApi;

    invoke-interface {v3}, Lcom/visionobjects/textwidget/TextWidgetApi;->scrollToCursor()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->commitEditText(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/vohwr/VOHWRWrapper;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/diotek/ime/framework/engine/AbstractInputEngine;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    goto/16 :goto_0
.end method
