.class public abstract Lcom/diotek/ime/framework/view/AbstractViewController;
.super Ljava/lang/Object;
.source "AbstractViewController.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/ViewController;


# static fields
.field public static final ONE_HAND_LEFT_SET:I = 0x1

.field public static final ONE_HAND_OFF:I = 0x0

.field public static final ONE_HAND_RIGHT_SET:I = 0x2


# instance fields
.field private mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

.field protected mContext:Landroid/content/Context;

.field private mCurrentFrameLayout:Landroid/widget/FrameLayout;

.field private mCurrentLayout:Landroid/widget/LinearLayout;

.field protected mCurrentThaiVowelPageNum:I

.field private mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

.field private mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

.field private mEnableOneHandKeypad:Z

.field private mFloatingPhonepadView:Landroid/widget/FrameLayout;

.field protected mFontManager:Lcom/diotek/ime/framework/common/FontManager;

.field private mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field protected mIsKorMode:Z

.field protected mIsTabletMode:Z

.field private mOneHandDimView:Landroid/widget/ImageView;

.field private mOneHandLeftView:Landroid/widget/ImageButton;

.field private mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

.field private mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

.field private mOneHandRightView:Landroid/widget/ImageButton;

.field private mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

.field private mOneHandRightViewLayout:Landroid/widget/LinearLayout;

.field private mOneHandViewClicked:Z

.field private mPhonepadView:Landroid/widget/FrameLayout;

.field private mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

.field private mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

.field private mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

.field private mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

.field private mPrevSpaceStatus:Z

.field protected mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

.field private mSplitLeftView:Landroid/widget/FrameLayout;

.field private mSplitRightView:Landroid/widget/FrameLayout;

.field private mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

.field private mVOHWRKeypadView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iput v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    new-instance v0, Lcom/diotek/ime/framework/view/AbstractViewController$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/AbstractViewController$2;-><init>(Lcom/diotek/ime/framework/view/AbstractViewController;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/diotek/ime/framework/view/AbstractViewController$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/AbstractViewController$3;-><init>(Lcom/diotek/ime/framework/view/AbstractViewController;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/AbstractViewController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    return p1
.end method

.method private getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/view/Keyboard$Key;

    iget-object v4, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v4, p1, :cond_2

    move-object v0, v2

    :cond_3
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/diotek/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private isNeedSpaceUpdate()Z
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentSpaceStatusSuggestion()Z

    move-result v0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrevSpaceStatus:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrevSpaceStatus:Z

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeNewView()Landroid/view/View;
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v20, v0

    const-string v21, "NOT_CREATE_NEW_KEYBOARDVIEW"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v20

    if-eqz v20, :cond_19

    :cond_0
    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v20, v0

    const-string v21, "SETTINGS_DEFAULT_USE_FULL_HANDWRITING"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v19

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isSupportFullHandwriting()Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getSystemHandAdaptableOperationSettingValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    if-eqz v9, :cond_1

    iget v0, v9, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/diotek/ime/framework/repository/EditorStatus;->setInputType(I)V

    :cond_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setCurrentThaiVowelPageNum(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->saveLatestEmoticonList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    :cond_8
    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v20

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_1b

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_f
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->hideFullscreenHwrPanel()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v20

    if-eqz v20, :cond_14

    if-eqz v10, :cond_14

    const/4 v10, 0x0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v20

    if-eqz v20, :cond_20

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    :cond_15
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setPairView(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setIsLeftPopupKeyboard(Z)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setPairView(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v20

    if-eqz v20, :cond_48

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_46

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v10, v0, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v20, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/diotek/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const v21, 0x7f08002d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :cond_18
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v20

    if-eqz v20, :cond_55

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v20

    if-eqz v20, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    :goto_6
    return-object v20

    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_1a
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_2

    :cond_1c
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRFloatingKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getVOHWRKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v20

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRFloatingKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWRKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_3

    :cond_21
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_3

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCNFloatingKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v20, v0

    const-string v21, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-nez v20, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v20

    if-eqz v20, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v20

    if-nez v20, :cond_37

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v20

    if-eqz v20, :cond_2c

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_24

    if-eqz v10, :cond_24

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_24

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_2c

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getOneHandCNKeyboardViewRscId()I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getOeHandCNPhonepadViewRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    move/from16 v20, v0

    if-nez v20, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v20

    if-eqz v20, :cond_2a

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    :cond_25
    :goto_8
    if-eqz v11, :cond_27

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_26

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_27

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v20, v0

    const-string v21, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    goto/16 :goto_3

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :cond_2a
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_8

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCNKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_8

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getOneHandKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    move/from16 v20, v0

    if-nez v20, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v20

    if-eqz v20, :cond_33

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    :cond_2d
    :goto_a
    if-eqz v11, :cond_2f

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_2e

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_2f

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :cond_2f
    if-eqz v18, :cond_15

    if-eqz v19, :cond_15

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v10, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_30
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getFullHwrPanelViewRscId()I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    goto/16 :goto_3

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    :cond_33
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_a

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_a

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_a

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_b

    :cond_37
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-nez v20, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/diotek/ime/framework/view/AbstractViewController$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController$1;-><init>(Lcom/diotek/ime/framework/view/AbstractViewController;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    move/from16 v20, v0

    if-nez v20, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v20

    if-eqz v20, :cond_3f

    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    :cond_38
    :goto_e
    if-eqz v11, :cond_3a

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_39

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_3a

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSplitKeyboardViewRscId(Z)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setLeftKeyboardMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :cond_3a
    if-eqz v18, :cond_15

    if-eqz v19, :cond_15

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v10, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closing()V

    :cond_3b
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getFullHwrPanelViewRscId()I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    goto/16 :goto_3

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getOneHandKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_c

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightView:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_d

    :cond_3f
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    goto/16 :goto_e

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputModeForVO()Z

    move-result v20

    if-eqz v20, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getHWREmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonScrollLayoutRscId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    goto/16 :goto_e

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getEmoticonLayoutRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto :goto_10

    :cond_42
    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflateWithCache(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_e

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getKeyboardViewRscId(I)I

    move-result v21

    const/16 v22, 0x0

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_f

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    goto/16 :goto_4

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v20, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/diotek/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    const v21, 0x7f08002d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    move/from16 v20, v0

    const/16 v21, 0x780

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    move/from16 v20, v0

    const/16 v21, 0x438

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v21

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v22

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    move/from16 v20, v0

    const/16 v21, 0x780

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    move/from16 v20, v0

    const/16 v21, 0x438

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/view/View;->setPadding(IIII)V

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    goto/16 :goto_5

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v20

    if-eqz v20, :cond_49

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v20, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/diotek/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    check-cast v8, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    new-instance v7, Lcom/diotek/ime/framework/view/event/HwrActionListener;

    invoke-direct {v7}, Lcom/diotek/ime/framework/view/event/HwrActionListener;-><init>()V

    invoke-virtual {v8, v7}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setHwrActionListener(Lcom/diotek/ime/framework/view/event/HwrActionListener;)V

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getHwrRectArea()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->setHwrPanelRect(IIII)V

    goto/16 :goto_5

    :cond_49
    if-eqz v11, :cond_4e

    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_4a

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_4e

    :cond_4a
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v10, v0, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    new-instance v20, Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/diotek/ime/framework/view/PopupKeyboardView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_5

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    goto :goto_11

    :cond_4c
    const/16 v20, 0x7

    move/from16 v0, v20

    if-ne v10, v0, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitLeftView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSplitRightView:Landroid/widget/FrameLayout;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_5

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v24}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->init(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_5

    :cond_4e
    if-eqz v18, :cond_4f

    if-eqz v19, :cond_4f

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v10, v0, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getFullHwrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->init(Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v21

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v22

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrnetViewFullHwrPanel:Lcom/diotek/ime/framework/view/FullScreenHwrPanelView;

    new-instance v7, Lcom/diotek/ime/framework/view/event/HwrActionListener;

    invoke-direct {v7}, Lcom/diotek/ime/framework/view/event/HwrActionListener;-><init>()V

    invoke-virtual {v8, v7}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setHwrActionListener(Lcom/diotek/ime/framework/view/event/HwrActionListener;)V

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getHwrRectArea()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->setHwrPanelRect(IIII)V

    goto/16 :goto_5

    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    :cond_50
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandLeftRightViewWidth(Z)I

    move-result v20

    move/from16 v0, v20

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandLeftRightViewWidth(Z)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v20, v16

    check-cast v20, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandLeftRightViewHorizontalGapArrow()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandKeyboardViewWidth()I

    move-result v20

    move/from16 v0, v20

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v21

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v22

    invoke-interface/range {v20 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    new-instance v13, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;

    invoke-direct {v13}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setOnKeyboardActionListener(Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;)V

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    move/from16 v20, v0

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    check-cast v8, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    new-instance v7, Lcom/diotek/ime/framework/view/event/HwrActionListener;

    invoke-direct {v7}, Lcom/diotek/ime/framework/view/event/HwrActionListener;-><init>()V

    invoke-virtual {v8, v7}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setHwrActionListener(Lcom/diotek/ime/framework/view/event/HwrActionListener;)V

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->getHwrRectArea()Landroid/graphics/Rect;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->setHwrPanelRect(IIII)V

    goto/16 :goto_5

    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v20

    if-eqz v20, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-nez v20, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v20

    if-eqz v20, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v20

    if-nez v20, :cond_5a

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v20

    if-eqz v20, :cond_5a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_57

    if-nez v10, :cond_5a

    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v20

    if-nez v20, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_5a
    const/16 v20, 0x7

    move/from16 v0, v20

    if-eq v10, v0, :cond_5b

    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_5e

    :cond_5b
    const/16 v20, 0x8

    move/from16 v0, v20

    if-ne v10, v0, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v20

    if-nez v20, :cond_5c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5d

    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_5e
    if-eqz v18, :cond_5f

    if-eqz v19, :cond_5f

    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v10, v0, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_5f
    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v20

    if-nez v20, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-nez v20, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v20

    if-nez v20, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-nez v20, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_62

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v20

    if-eqz v20, :cond_63

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v20

    if-eqz v20, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6

    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    goto/16 :goto_6
.end method


# virtual methods
.method public changeInputMode(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->dismissPopupKeyboard()V

    invoke-static {p1}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updateKeyboard()V

    return-void
.end method

.method public changeValidSymbolsPage(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    return-void
.end method

.method public checkEnableOneHandKeypad()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v4, "UnifiedSetting"

    const-string v5, "UnifiedSetting"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    iput-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->getMangificationState()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getSystemOneHandOperationSettingValue()I

    move-result v4

    if-ne v4, v7, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    iput-boolean v7, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    goto :goto_1

    :cond_4
    iput-boolean v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    goto :goto_1
.end method

.method public closeEmoticonView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->saveLatestEmoticonList()V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    :cond_2
    return-void
.end method

.method public closeView()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    :cond_3
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->closeKeyboardView()V

    :cond_4
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/TipsDialog;->dismissAllDialog()V

    :cond_5
    return-void
.end method

.method public createPopupCandidateView()V
    .locals 0

    return-void
.end method

.method public deallocateMem()V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "deallocateMem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->deallocateMemory()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getMiniKeyboard()Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardOnScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->deallocateMemory()V

    :cond_0
    return-void
.end method

.method public dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/TipsDialog;->dismissAllDialog()V

    :cond_0
    return-void
.end method

.method public dismissPopupCandidate()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_0
    return-void
.end method

.method public dismissPopupKeyboard()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-boolean v1, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mMiniKeyboardOnScreen:Z

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_3
    return-void
.end method

.method public dismissPopupKeyboardWithoutFloatingAndSplit()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_0
    return-void
.end method

.method protected abstract getCNFloatingKeyboardViewRscId(I)I
.end method

.method protected abstract getCNKeyboardViewRscId(I)I
.end method

.method public getCandiateView(Z)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentCandidateView()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setPopupCandidateView()V

    new-instance v2, Lcom/diotek/ime/framework/view/PopupCandidateView;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/diotek/ime/framework/view/PopupCandidateView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/PopupCandidateView;->init(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    :goto_0
    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    goto :goto_0
.end method

.method public getCandidatesDisplayedCount()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidatesDisplayedCount()I

    move-result v0

    goto :goto_0
.end method

.method public getChineseLanguageCurrentView()Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getInputView(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getCurrentCandidateView()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;
.end method

.method protected abstract getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;
.end method

.method protected abstract getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getCurrentSpellView()Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;
.end method

.method public getCurrentThaiVowelPageNum()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    return v0
.end method

.method public getDefaultCandidateList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDefaultCandidateList()Ljava/util/ArrayList;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eq v0, v6, :cond_1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_2

    :cond_1
    move v3, v1

    :goto_1
    if-ne v0, v6, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDefaultCandidateList()Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected abstract getEmoticonLayoutRscId(I)I
.end method

.method protected abstract getEmoticonScrollLayoutRscId()I
.end method

.method public getEmoticonViewHeight()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getFloatingEmoticonKeyboardViewRscId(I)I
.end method

.method protected abstract getFloatingHWREmoticonLayoutRscId()I
.end method

.method protected abstract getFullHwrKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getFullHwrPanelViewRscId()I
.end method

.method public getFullScreenHwrKeyboardView()Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    return-object v0
.end method

.method protected abstract getHWREmoticonLayoutRscId(I)I
.end method

.method protected abstract getHWRFloatingKeyboardViewRscId(I)I
.end method

.method protected abstract getHWRKeyboardRscId()I
.end method

.method public getHWRKeyboardView()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getInputView(Z)Landroid/view/View;
    .locals 4

    const/4 v3, 0x7

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    :goto_0
    return-object v1

    :cond_1
    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updatePopupKeyboard()V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getSplitRightView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_8

    if-ne v0, v2, :cond_6

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    if-ne v0, v2, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_9
    if-eq v0, v3, :cond_a

    if-ne v0, v2, :cond_d

    :cond_a
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v1, :cond_c

    if-nez p1, :cond_c

    if-ne v0, v2, :cond_b

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->makeNewView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v1, :cond_e

    if-nez p1, :cond_e

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_f

    if-nez p1, :cond_f

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->makeNewView()Landroid/view/View;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getKeybaordKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getKeyboardOneHandDimView(Landroid/widget/FrameLayout;)Landroid/widget/ImageView;
.end method

.method protected abstract getKeyboardOneHandLayout(Landroid/widget/FrameLayout;)Landroid/widget/LinearLayout;
.end method

.method protected abstract getKeyboardOneHandLayoutView(Landroid/widget/LinearLayout;Z)Landroid/widget/LinearLayout;
.end method

.method protected abstract getKeyboardOneHandTalkBackDimView(Landroid/widget/LinearLayout;)Landroid/widget/ImageView;
.end method

.method protected abstract getKeyboardOneHandView(Landroid/widget/LinearLayout;Z)Landroid/widget/ImageButton;
.end method

.method protected abstract getKeyboardRscId()I
.end method

.method protected abstract getKeyboardView(Landroid/widget/LinearLayout;)Landroid/view/View;
.end method

.method protected abstract getKeyboardViewRscId(I)I
.end method

.method public getLabelFromCurrentView(I)Ljava/lang/CharSequence;
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-object v4

    :sswitch_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_0
    :goto_1
    if-nez v3, :cond_1

    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :sswitch_2
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getKeyboard()Lcom/diotek/ime/framework/view/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->getLabelFromKeyCode(ILjava/util/List;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v4, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public getLengthOfSpellText()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->getLengthOfSpellText()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getOeHandCNPhonepadViewRscId()I
.end method

.method protected abstract getOneHandCNKeyboardViewRscId()I
.end method

.method protected abstract getOneHandKeyboardViewRscId(I)I
.end method

.method protected abstract getPhoneticSpellScrollLayoutRscId()I
.end method

.method public getPhoneticSpellScrollView(Z)Landroid/view/View;
    .locals 4

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    :cond_4
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_5
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method protected abstract getPhoneticSpellScrollViewRscId()I
.end method

.method public getPopupCandidateView()Lcom/diotek/ime/framework/view/PopupCandidateView;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    return-object v0
.end method

.method public getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    return-object v0
.end method

.method public getSpellView(Z)Landroid/view/View;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentSpellView()Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    return-object v0
.end method

.method protected abstract getSplitKeyboardViewRscId(Z)I
.end method

.method public getSuggestions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getThaiTextKeyboard(I)Lcom/diotek/ime/framework/view/DefaultKeyboard;
.end method

.method protected abstract getVOHWRKeyboardViewRscId(I)I
.end method

.method public hideFullscreenHwrPanel()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->hideFullscreenHwrPanel()V

    :cond_0
    return-void
.end method

.method public initHWR()V
    .locals 3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mVOHWRKeypadView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/common/InputManager;->initHwrPanel(Landroid/widget/FrameLayout;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public initialize()V
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPrivateImeOptionsController:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsKorMode:Z

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mIsTabletMode:Z

    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {v0}, Lcom/diotek/ime/framework/view/TipsDialog;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->onInitializeFonts()V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->onInitializeCustomResources()V

    return-void
.end method

.method public invalidateKey(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKeyWithKeyCode(I)V

    :cond_3
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isAccessibilityEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDiscoverabilityShown()Z
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstance()Lcom/diotek/ime/framework/view/TipsDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnableOneHandKeypad()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    :cond_2
    iget-boolean v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEnableOneHandKeypad:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getAnyScreenRunning()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public isInRepeatKey()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isInRepeatKey()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniKeyboardOnScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardOnScreen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniKeyboardView()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isMiniKeyboardView()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOneHandKeypadRightSet()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "UnifiedSetting"

    const-string v2, "UnifiedSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "onehand_direction"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "IS_ONE_HAND_RIGHT_SET"

    invoke-interface {v1, v2, v0}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isPopupWindowShown()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_4

    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v1

    goto :goto_0
.end method

.method public isSpellViewShown()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->isSpellViewShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSymbolPopupKeyboardOnScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isSymbolPopupKeyboardOnScreen()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkbackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isTalkbackEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isTouchExplorationEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextSymbolsPage()V
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    return-void
.end method

.method public onChangeInputLanuage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 0

    return-void
.end method

.method protected abstract onInitializeCustomResources()V
.end method

.method protected onInitializeFonts()V
    .locals 0

    return-void
.end method

.method public onMagnifyStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->changeInvisiblePopupLayoutType(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->changePopupMiniKeyboardWindowLayoutType(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->changeInputMode(I)V

    :cond_1
    return-void
.end method

.method public prevSymbolsPage()V
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->setSpellViewShown(Z)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    :cond_1
    return-void
.end method

.method public releaseAllKeyPressed()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->releaseAllKeyPressed()V

    :cond_0
    return-void
.end method

.method public releaseCandidateView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupCandidateView:Lcom/diotek/ime/framework/view/PopupCandidateView;

    return-void
.end method

.method public resetMultitap()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->resetMultiTap()V

    :cond_3
    return-void
.end method

.method public resetSymbolsPage()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->setSymbolPage(I)V

    return-void
.end method

.method public sendTalkbackDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->sendTalkbackDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public setCurrentThaiVowelPageNum(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentThaiVowelPageNum:I

    return-void
.end method

.method public setEmoticonCategory(Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    const v5, 0x7f0e0312

    const v3, 0x7f080026

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v2, p1, p2}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->setEmoticonCategory(Ljava/util/ArrayList;I)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFontManager:Lcom/diotek/ime/framework/common/FontManager;

    const-string v3, "ROBOTO_KEYPAD_MEDIUM"

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-nez p2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;->getLatestEmoticonSize()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isTalkbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/view/AbstractViewController;->sendTalkbackDescription(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mEmoticonScrollLayout:Lcom/diotek/ime/framework/view/emoticon/AbstractEmoticonLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOneHandBgDim(Z)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandDimView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOneHandLayoutShown()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isEnableOneHandKeypad()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isOneHandKeypadRightSet()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :goto_0
    iget-boolean v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandViewClicked:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v3, "EMOTICON_CURRENT_CATEGORY"

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/diotek/ime/framework/view/AbstractViewController;->setOneHandLayoutShownWithOption(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOneHandLayoutShownWithOption(I)V
    .locals 5

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    packed-switch p1, :pswitch_data_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->dismissPopupKeyboard()V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->dismissPopupCandidate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v4}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCandiateView(Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/diotek/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getSuggestions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/diotek/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v0}, Lcom/diotek/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandLeftViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mOneHandRightViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    const/16 v3, 0x8

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFloatingPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, p2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoeticSpellScrollViewList(Ljava/util/ArrayList;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updateKeyboard()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPhoneticSpellScroll()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    :cond_4
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollLayoutRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhonepadView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getPhoneticSpellScrollViewRscId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->initView(Landroid/widget/LinearLayout;)V

    goto :goto_0
.end method

.method public setSecondarySymbolStatus(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->setSecondarySymbolStatus(I)V

    return-void
.end method

.method public setSuggestions(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentCandidateView()Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCandidateView:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v1, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->updateSpace()V

    return-void
.end method

.method protected abstract setSymbolPage(I)V
.end method

.method public showDiscoverability(ILandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1, p2, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverability(ILandroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showEmptyShortcutsGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showEmptyShortcutsGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showFullscreenHwrPanel()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;->showFullscreenHwrPanel()V

    :cond_0
    return-void
.end method

.method public showGestureGuideDialog()V
    .locals 5

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->hideFullscreenHwrPanel()V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/TipsDialog;->showGestureGuideDialog(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showHalfFullWidthSwitchDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showHalfFullWidthSwitchDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showLanguageSelectDialog()V
    .locals 6

    const v5, 0x656e4742

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setInputLanguage(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/TipsDialog;->showLanguageSelectDialog(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isUsePopupKeyboard()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_1
    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    :cond_3
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "INPUT_LANGUAGE"

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setInputLanguage(I)V

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v2, v3}, Lcom/diotek/ime/framework/view/TipsDialog;->showLanguageSelectDialog(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public showModeChangePopupKeyboard()V
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showModeChangePopupKeyboard()Z

    goto :goto_0
.end method

.method public showOneHandedGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showOneHandedGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showPenDetectionGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showPenDetectionGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showPinchZoomGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showPinchZoomGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showSwiftkeyGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showSwiftkeyGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showSwiftkeyRemoveTermDialog(Ljava/lang/String;I)V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1, p1, p2, v2}, Lcom/diotek/ime/framework/view/TipsDialog;->showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1, p1, p2, v2}, Lcom/diotek/ime/framework/view/TipsDialog;->showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    goto :goto_0
.end method

.method public showSymbolPopupKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showSymbolPopupKeyboard()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showSymbolPopupKeyboard()Z

    goto :goto_0
.end method

.method public showTipsDialogByIndex(I)V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, p1, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsDialogByIndex(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showTipsHwrInstallGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsHwrInstallGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showTipsOneHandedGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsOneHandedGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showTipsSwiftkeyGuideDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsSwiftkeyGuideDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showTraceGuideDialog()V
    .locals 6

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Sip_TutorialPopupType"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const-string v3, "ONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/TipsDialog;->showTraceGuideDialog(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public showXt9PersonalizerAttentionDialog()V
    .locals 2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showXt9PersonalizerAttentionDialog(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public showXt9_9RemoveTermDialog(Ljava/lang/String;I)V
    .locals 8

    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5, p1, p2, v6}, Lcom/diotek/ime/framework/view/TipsDialog;->showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v2

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-eq v0, v7, :cond_1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_3

    :cond_1
    move v3, v1

    :goto_0
    if-ne v0, v7, :cond_4

    if-eqz v2, :cond_4

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mTipsDialog:Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4, p1, p2, v5}, Lcom/diotek/ime/framework/view/TipsDialog;->showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method

.method public update()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateAll()V

    :cond_3
    return-void
.end method

.method public updateIndianLang()V
    .locals 10

    const/16 v9, 0x10

    const/16 v8, 0xf

    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    sget-boolean v3, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    const/high16 v3, 0x74610000

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v2

    const-string v3, "INPUT_LANGUAGE"

    const v4, 0x656e5553

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-boolean v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->IS_FHD:Z

    if-eqz v3, :cond_4

    const-string v3, "IS_LANDSCAPE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    const/high16 v3, 0x74610000

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x16

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x19

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1d

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    goto/16 :goto_0
.end method

.method public updateIndianVowelRow()V
    .locals 3

    sget-boolean v0, Lcom/diotek/ime/framework/input/IndianInputModule;->IS_QVGA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const/high16 v2, 0x656e0000

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->invalidateKey(I)V

    :cond_0
    return-void
.end method

.method public updateKeyboard()V
    .locals 15

    const/16 v14, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v8

    invoke-static {}, Lcom/diotek/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v4

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12, v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v12

    if-nez v12, :cond_3

    if-eqz v4, :cond_3

    move v5, v10

    :goto_0
    if-ne v8, v2, :cond_0

    if-ne v2, v14, :cond_1

    if-eqz v5, :cond_1

    :cond_0
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v13, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v13, v10}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    if-nez v5, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/repository/InputModeStatus;->setInputMethodStatus(I)V

    :cond_1
    const/4 v12, 0x7

    if-ne v2, v12, :cond_7

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v12, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v5, v11

    goto :goto_0

    :cond_4
    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitLeftKeyboardWidth()I

    move-result v7

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitRightKeyboardWidth()I

    move-result v9

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v12

    invoke-interface {v10, v7, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSplitKeyboardHeight()I

    move-result v12

    invoke-interface {v10, v9, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v12

    invoke-interface {v10, v12}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6, v7}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitLeftWidth(I)V

    invoke-virtual {v6, v9}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateSplitRightWidth(I)V

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateKeyboard()V

    :cond_5
    :goto_2
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x2

    if-eq v3, v10, :cond_2

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget v10, v10, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowHeight:I

    const/16 v12, 0x780

    if-ne v10, v12, :cond_6

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget v10, v10, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mWindowWidth:I

    const/16 v12, 0x438

    if-ne v10, v12, :cond_6

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->initHWR()V

    goto/16 :goto_1

    :cond_7
    if-ne v2, v14, :cond_8

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_2

    invoke-virtual {p0, v11}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentPopupKeyboard(Z)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v1}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v12

    iget-object v13, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v13

    invoke-interface {v10, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updateKeyboard()V

    goto :goto_2

    :cond_8
    const/4 v10, 0x4

    if-ne v2, v10, :cond_9

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mFullScreenHwrKeyboardView:Lcom/diotek/ime/framework/view/FullScreenHwrKeyboardView;

    invoke-virtual {v10, v0}, Lcom/diotek/ime/framework/view/AbstractHwrKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v0}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v12

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v13

    invoke-interface {v10, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto/16 :goto_2

    :cond_9
    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentKeyboard()Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v0}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v12

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v13

    invoke-interface {v10, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto/16 :goto_2
.end method

.method public updatePhoneticSpell(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoneticSpellScrollViewShown(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setPhoeticSpellScrollViewList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPhoneticSpellScrollView:Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractPhoneticSpellScrollLayout;->setSpellToSpellLayout(Z)V

    return-void
.end method

.method public updatePopupKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mPopupKeyboardView:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->updatePopupKeyboardView()V

    :cond_0
    return-void
.end method

.method public updateSettingValues()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateSettingValues()V

    :cond_3
    return-void
.end method

.method public updateShiftState()V
    .locals 3

    const/16 v2, 0x8

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    :cond_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_1

    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewLeft:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_2

    if-eq v0, v2, :cond_2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewRight:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->updateShiftState()V

    :cond_3
    return-void
.end method

.method public updateSpace()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->isNeedSpaceUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/view/AbstractViewController;->invalidateKey(I)V

    :cond_0
    return-void
.end method

.method public updateSpellView(Ljava/lang/CharSequence;Z)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/AbstractViewController;->getCurrentSpellView()Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->setSpellView(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mSpellView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;

    invoke-virtual {v0, p2}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->setSpellViewShown(Z)V

    :cond_1
    return-void
.end method

.method public updateThaiKeyboard(I)V
    .locals 6

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getThaiTextKeyboard(I)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboardWidth(I)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardWidth()I

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentViewFloating:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getFloatingKeyboardHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/view/AbstractViewController;->getThaiTextKeyboard(I)Lcom/diotek/ime/framework/view/DefaultKeyboard;

    move-result-object v0

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mCurrentView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3, v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->setKeyboard(Lcom/diotek/ime/framework/view/DefaultKeyboard;)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3, v0}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboard(Lcom/diotek/ime/framework/view/Keyboard;)V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/diotek/ime/framework/common/InputManager;->setKeyboardSize(II)V

    goto :goto_0
.end method

.method public useAnimationOfExpandCandidate()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    throw v1
.end method

.method public useAnimationOfMiniKeyboard()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/view/AbstractViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    throw v1
.end method
