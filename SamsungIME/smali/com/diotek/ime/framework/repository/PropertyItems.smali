.class public Lcom/diotek/ime/framework/repository/PropertyItems;
.super Ljava/lang/Object;
.source "PropertyItems.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;


# instance fields
.field private inputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mDefaultSupportLanguages:Ljava/lang/String;

.field private mIsEnableDefaultCandidateview:Z

.field private mIsEnableTracePopupGuide:Z

.field private mIsSupportFullHandwriting:Z

.field private mIsSupportHwrTutorial:Z

.field private mIsSupportMultiTouchPanel:Z

.field private mIsSupportPreview:Z

.field private mIsSupportSpaceLanguageChange:Z

.field private mIsUsingAddtoNumberKeyFirstLine:Z

.field private mIsUsingBoldFontOnMonthEdittext:Z

.field private mIsUsingCandidateButtonOnEmailUrlMode:Z

.field private mIsUsingCandidateButtonPrevNext:Z

.field private mIsUsingChinesePhoneticSpellEffect:Z

.field private mIsUsingDownSwipe:Z

.field private mIsUsingEmoticonPopupOnEnter:Z

.field private mIsUsingExtractUi:Z

.field private mIsUsingLanguageToast:Z

.field private mIsUsingLeftSwipe:Z

.field private mIsUsingMultiFloatingKeyboard:Z

.field private mIsUsingNumberAndSymbolsKeypadType:Z

.field private mIsUsingPhonenumberZeroLongpress:Z

.field private mIsUsingPredictionOnAutocomplete:Z

.field private mIsUsingQuickPopup:Z

.field private mIsUsingRightSwipe:Z

.field private mIsUsingToggleNumberInput:Z

.field private mIsUsingUpSwipe:Z

.field private mIsUsingVietnameseTelex:Z

.field private mPreviewDismissDelay:I

.field private mPreviewShowDelay:I

.field private mRepeatablekeyPreviewDismissDelay:I

.field private mSpaceLanguageChangingThreshold:I

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private repository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewShowDelay:I

    iput v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewDismissDelay:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mRepeatablekeyPreviewDismissDelay:I

    const/16 v0, 0x500

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowHeight:I

    const/16 v0, 0x320

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowWidth:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mSpaceLanguageChangingThreshold:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportMultiTouchPanel:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportPreview:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingQuickPopup:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonPrevNext:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonOnEmailUrlMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLeftSwipe:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingUpSwipe:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingRightSwipe:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingDownSwipe:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingEmoticonPopupOnEnter:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPhonenumberZeroLongpress:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingToggleNumberInput:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingMultiFloatingKeyboard:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLanguageToast:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingExtractUi:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportSpaceLanguageChange:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPredictionOnAutocomplete:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportFullHandwriting:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableDefaultCandidateview:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableTracePopupGuide:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingAddtoNumberKeyFirstLine:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingBoldFontOnMonthEdittext:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingVietnameseTelex:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingNumberAndSymbolsKeypadType:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportHwrTutorial:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingChinesePhoneticSpellEffect:Z

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mDefaultSupportLanguages:Ljava/lang/String;

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v2, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    invoke-direct {p0}, Lcom/diotek/ime/framework/repository/PropertyItems;->init()V

    return-void
.end method

.method public static getDefaultSupportLanguages()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-object v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mDefaultSupportLanguages:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreviewDismissDelay()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewDismissDelay:I

    return v0
.end method

.method public static getPreviewShowDelay()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewShowDelay:I

    return v0
.end method

.method public static getRepeatablekeyPreviewDismissDelay()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mRepeatablekeyPreviewDismissDelay:I

    return v0
.end method

.method public static getSpaceLanguageChangingThreshold()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mSpaceLanguageChangingThreshold:I

    return v0
.end method

.method public static getWindowHeight()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowHeight:I

    return v0
.end method

.method public static getWindowWidth()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowWidth:I

    return v0
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "PREVIEW_SHOW_DELAY"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewShowDelay:I

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "PREVIEW_DISMISS_DELAY"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mPreviewDismissDelay:I

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "REPEATABLEKEY_PREVIEW_DISMISS_DELAY"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mRepeatablekeyPreviewDismissDelay:I

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_HEIGHT"

    const/16 v2, 0x500

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowHeight:I

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "WINDOW_WIDTH"

    const/16 v2, 0x320

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mWindowWidth:I

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_MULTI_TOUCH_PANEL"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportMultiTouchPanel:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_PREVIEW"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportPreview:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_QUICK_POPUP"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingQuickPopup:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_CANDIDATE_PREV_NEXT"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonPrevNext:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_CANDIDATE_BUTTON_ON_EMIAL_URL_MODE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonOnEmailUrlMode:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_LEFT_SWIPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLeftSwipe:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_UP_SWIPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingUpSwipe:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_RIGHT_SWIPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingRightSwipe:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_DOWN_SWIPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingDownSwipe:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_EMOTICON_POPUP_ON_ENTER"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingEmoticonPopupOnEnter:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_PHONENUMBER_ZERO_LONGPRESS"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPhonenumberZeroLongpress:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_TOGGLE_NUMBER_INPUT"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingToggleNumberInput:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_MULTI_FLOATING_KEYBOARD"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingMultiFloatingKeyboard:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "ENABLE_DEFAULT_CANDIDATEVIEW"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableDefaultCandidateview:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "ENABLE_TRACE_POPUP_GUIDE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableTracePopupGuide:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_ADDTO_NUMBER_KEY_FIRST_LINE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingAddtoNumberKeyFirstLine:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_BOLD_FONT_ON_MONTH_EDITTEXT"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingBoldFontOnMonthEdittext:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_VIETNAMESE_TELEX"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingVietnameseTelex:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingNumberAndSymbolsKeypadType:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_HWR_TUTORIAL"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportHwrTutorial:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_CHINESE_PHONETIC_SPELL_EFFECT"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingChinesePhoneticSpellEffect:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_LANGUAGE_TOAST"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLanguageToast:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "EXTRACT_UI"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingExtractUi:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "DEFAULT_SUPPORT_LANGUAGES"

    const-string v2, "EN_GB;EN_US;AZ;CA;CS;DA;DE;ET;ES;EU;EL;FR;GA;GL;KA;HR;IT;IS;KK;LV;LT;HU;NB;NL;PL;PT;RU;RO;FI;SR;SK;SL;SV;TR;UK;KO;HY;BG;MK;"

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mDefaultSupportLanguages:Ljava/lang/String;

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_SPACE_LANGUAGE_CHANGE"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportSpaceLanguageChange:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "USE_PREDICTION_ON_AUTOCOMPLETE"

    invoke-interface {v0, v1, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPredictionOnAutocomplete:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SUPPORT_FULL_HANDWRITING"

    invoke-interface {v0, v1, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportFullHandwriting:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "SPACE_LANGUAGE_CHANGING_THRESHOLD"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->mSpaceLanguageChangingThreshold:I

    :cond_0
    return-void
.end method

.method private initailize()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->inputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/repository/PropertyItems;->repository:Lcom/diotek/ime/framework/repository/Repository;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/diotek/ime/framework/repository/PropertyItems;->init()V

    :cond_1
    return-void
.end method

.method public static isEnableDefaultCandidateview()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableDefaultCandidateview:Z

    return v0
.end method

.method public static isEnableTracePopupGuide()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsEnableTracePopupGuide:Z

    return v0
.end method

.method public static isSupportFullHandwriting()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportFullHandwriting:Z

    return v0
.end method

.method public static isSupportHwrTutorial()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportHwrTutorial:Z

    return v0
.end method

.method public static isSupportMultiTouchPanel()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportMultiTouchPanel:Z

    return v0
.end method

.method public static isSupportPreview()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportPreview:Z

    return v0
.end method

.method public static isSupportSpaceLanguageChange()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsSupportSpaceLanguageChange:Z

    return v0
.end method

.method public static isUsingAddtoNumberKeyFirstLine()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingAddtoNumberKeyFirstLine:Z

    return v0
.end method

.method public static isUsingBoldFontOnMonthEdittext()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingBoldFontOnMonthEdittext:Z

    return v0
.end method

.method public static isUsingCandidateButtonOnEmailUrlMode()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonOnEmailUrlMode:Z

    return v0
.end method

.method public static isUsingCandidateButtonPrevNext()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingCandidateButtonPrevNext:Z

    return v0
.end method

.method public static isUsingChinesePhoneticSpellEffect()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingChinesePhoneticSpellEffect:Z

    return v0
.end method

.method public static isUsingDownSwipe()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingDownSwipe:Z

    return v0
.end method

.method public static isUsingEmoticonPopupOnEnter()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingEmoticonPopupOnEnter:Z

    return v0
.end method

.method public static isUsingExtractUi()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingExtractUi:Z

    return v0
.end method

.method public static isUsingLanguageToast()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLanguageToast:Z

    return v0
.end method

.method public static isUsingLeftSwipe()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingLeftSwipe:Z

    return v0
.end method

.method public static isUsingMultiFloatingKeyboard()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingMultiFloatingKeyboard:Z

    return v0
.end method

.method public static isUsingNumberAndSymbolsKeypadType()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingNumberAndSymbolsKeypadType:Z

    return v0
.end method

.method public static isUsingPhonenumberZeroLongpress()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPhonenumberZeroLongpress:Z

    return v0
.end method

.method public static isUsingPredictionOnAutocomplete()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingPredictionOnAutocomplete:Z

    return v0
.end method

.method public static isUsingQuickPopup()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingQuickPopup:Z

    return v0
.end method

.method public static isUsingRightSwipe()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingRightSwipe:Z

    return v0
.end method

.method public static isUsingToggleNumberInput()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingToggleNumberInput:Z

    return v0
.end method

.method public static isUsingUpSwipe()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingUpSwipe:Z

    return v0
.end method

.method public static isUsingVietnameseTelex()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/PropertyItems;->initailize()V

    sget-object v0, Lcom/diotek/ime/framework/repository/PropertyItems;->sInstance:Lcom/diotek/ime/framework/repository/PropertyItems;

    iget-boolean v0, v0, Lcom/diotek/ime/framework/repository/PropertyItems;->mIsUsingVietnameseTelex:Z

    return v0
.end method
