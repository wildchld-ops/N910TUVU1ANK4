.class public Lcom/diotek/ime/framework/view/TipsDialog;
.super Ljava/lang/Object;
.source "TipsDialog.java"


# static fields
.field public static final LANGUAGE_GUIDE_POPUP:I = 0x64

.field private static mDiscoverability:Landroid/widget/PopupWindow;

.field private static sInstance:Lcom/diotek/ime/framework/view/TipsDialog;


# instance fields
.field context:Landroid/content/Context;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mAttentionDialog:Landroid/app/AlertDialog;

.field protected mCurrentInputMethod:I

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

.field private mIsCheckDontShowEmptyShortcutsGuide:Z

.field private mIsCheckDontShowGestureGuide:Z

.field private mIsCheckDontShowOneHandedGuide:Z

.field private mIsCheckDontShowPenDetectionGuide:Z

.field private mIsCheckDontShowPinchZoomGuide:Z

.field private mIsCheckDontShowTraceGuide:Z

.field private mIsCheckboxStandardData:Z

.field private mIsTipCheckDontShowAllGuide:Z

.field private mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field private mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOneHandedAnimationRunnable:Ljava/lang/Runnable;

.field private mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iput v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->windowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$1;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$4;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$4;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputModeManager()Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iput v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1    # Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    return p1
.end method

.method static synthetic access$102(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    return p1
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z

    return v0
.end method

.method static synthetic access$402(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z

    return p1
.end method

.method static synthetic access$500(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    return v0
.end method

.method static synthetic access$502(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    return p1
.end method

.method static synthetic access$600(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    return v0
.end method

.method static synthetic access$602(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    return p1
.end method

.method static synthetic access$700(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    return v0
.end method

.method static synthetic access$702(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    return p1
.end method

.method static synthetic access$800(Lcom/diotek/ime/framework/view/TipsDialog;)Z
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    return v0
.end method

.method static synthetic access$802(Lcom/diotek/ime/framework/view/TipsDialog;Z)Z
    .locals 0
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    return p1
.end method

.method static synthetic access$900(Lcom/diotek/ime/framework/view/TipsDialog;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/diotek/ime/framework/view/TipsDialog;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getGuideMessageForMMKey()Ljava/lang/CharSequence;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ATT"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e02ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e02ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v5, "UnifiedSetting"

    const-string v6, "UnifiedSetting"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e02ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202c1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v0, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v4, 0x2

    const/16 v6, 0x21

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v1, v3

    goto :goto_0
.end method

.method public static getInstance()Lcom/diotek/ime/framework/view/TipsDialog;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog;

    invoke-direct {v0}, Lcom/diotek/ime/framework/view/TipsDialog;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->sInstance:Lcom/diotek/ime/framework/view/TipsDialog;

    return-object v0
.end method

.method public static getInstancePopup()Landroid/widget/PopupWindow;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private isAvailableShowXt9_9RemoveDialog(Ljava/lang/String;)Z
    .locals 16
    .param p1    # Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v12, ""

    const-string v11, ""

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const/16 v14, 0x40

    const/4 v15, 0x0

    invoke-interface {v2, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v14, 0x40

    const/4 v15, 0x0

    invoke-interface {v2, v14, v15}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_0
    if-eqz v4, :cond_0

    const/16 v14, 0x20

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    const/16 v14, 0xa

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v14, -0x1

    if-ne v10, v14, :cond_4

    const/4 v14, -0x1

    if-ne v9, v14, :cond_4

    move-object v12, v4

    :goto_1
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v1, v14, -0x1

    :goto_2
    if-ltz v1, :cond_0

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_5

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    :cond_0
    if-eqz v3, :cond_1

    const/16 v14, 0x20

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v14, -0x1

    if-ne v7, v14, :cond_6

    const/4 v14, -0x1

    if-ne v6, v14, :cond_6

    move-object v11, v3

    :goto_3
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v1, v14, :cond_1

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x27

    if-eq v14, v15, :cond_7

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x40

    if-le v14, v15, :cond_2

    const/16 v14, 0x40

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :cond_2
    if-eqz v2, :cond_8

    if-eqz v13, :cond_8

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    const/4 v14, 0x0

    invoke-interface {v2, v14}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_8

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_8

    const/4 v14, 0x0

    :goto_5
    return v14

    :cond_3
    const-string v4, ""

    const-string v3, ""

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2

    :cond_6
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_5

    :cond_9
    const/4 v14, 0x1

    goto :goto_5
.end method

.method private setCloseBtnPositionOld(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/res/Resources;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->getSystemStatusBarHeight()I

    move-result v3

    const v4, 0x7f0900a1

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int v2, v4, v3

    const v4, 0x7f08000e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private showDiscoverabilityForAutoCorrect(Landroid/view/View;)Landroid/view/View;
    .locals 20
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const v18, 0x7f030010

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v9

    if-nez p1, :cond_0

    :goto_0
    return-object v15

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v3, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    const v17, 0x7f080021

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    const/16 v17, 0x0

    aget v17, v10, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v3

    const/high16 v18, 0x3f000000

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v18, v16, v7

    div-int/lit8 v18, v18, 0x2

    add-int v8, v17, v18

    const/4 v13, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v17

    if-eqz v17, :cond_3

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v17

    if-eqz v17, :cond_4

    const v17, 0x7f09003d

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v8, v8, v17

    if-eqz v14, :cond_1

    const v17, 0x7f09003c

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v8, v8, v17

    :cond_1
    :goto_3
    if-eqz v14, :cond_2

    const v17, 0x7f080022

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v17, 0x7f090038

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v11, v12, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v8, v13, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const/high16 v3, 0x3f800000

    const-string v17, "SamsungIME"

    const-string v18, "DiscoverabilityForAutoCorrection - appScale set 1.0 because of NullPointerException"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    const v17, 0x7f09003b

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    add-int v8, v8, v17

    goto :goto_3
.end method

.method private showDiscoverabilityForAutoCorrectOld(Landroid/view/View;)Landroid/view/View;
    .locals 18
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/diotek/ime/framework/view/TipsDialog;->getSystemStatusBarHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v16, 0x7f030003

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    invoke-static {}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    move-result-object v8

    if-nez p1, :cond_0

    :goto_0
    return-object v13

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/diotek/ime/framework/view/TipsDialog;->setCloseBtnPositionOld(Landroid/view/View;Landroid/content/res/Resources;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v15

    iget v1, v15, Landroid/content/res/CompatibilityInfo;->applicationScale:F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v15, 0x2

    new-array v9, v15, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    const v15, 0x7f080010

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    const/4 v15, 0x0

    aget v15, v9, v15

    int-to-float v15, v15

    mul-float/2addr v15, v1

    const/high16 v16, 0x3f000000

    add-float v15, v15, v16

    float-to-int v15, v15

    sub-int v16, v14, v6

    div-int/lit8 v16, v16, 0x2

    add-int v7, v15, v16

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v15

    if-eqz v15, :cond_2

    const v15, 0x7f0900d0

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v7, v15

    :goto_2
    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v15

    if-nez v15, :cond_3

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v15

    if-eqz v15, :cond_3

    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_1

    const v15, 0x7f0900cf

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    :cond_1
    const v15, 0x7f08000f

    invoke-virtual {v13, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v7, v11, v15, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const/high16 v1, 0x3f800000

    const-string v15, "SamsungIME"

    const-string v16, "DiscoverabilityForAutoCorrection - appScale set 1.0 because of NullPointerException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const v15, 0x7f0900ce

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private showDiscoverabilityForLanguage()Landroid/view/View;
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v15, 0x7f030014

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v8, 0x0

    const v14, 0x7f080025

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v14

    if-eqz v14, :cond_0

    const v14, 0x7f090078

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_1
    const v14, 0x7f09009a

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v14, 0x7f090099

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v14, v8

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    const v14, 0x7f090077

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    :goto_1
    return-object v13

    :cond_3
    const v14, 0x7f090097

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v14, 0x7f090096

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v14, v8

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v14

    if-nez v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v14

    if-eqz v14, :cond_2

    :cond_5
    const v14, 0x7f080025

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const v14, 0x7f090071

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v14, 0x7f090072

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v15, 0x7f030013

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v14

    if-nez v14, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_7
    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v14

    if-eqz v14, :cond_a

    const v14, 0x7f080025

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v14

    if-eqz v14, :cond_8

    const v14, 0x7f0202ce

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const v14, 0x7f090059

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v14, 0x7f09005a

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_9
    const/4 v12, 0x0

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v14

    if-eqz v14, :cond_10

    const v14, 0x7f080025

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v14

    if-eqz v14, :cond_b

    const v14, 0x7f090078

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :cond_b
    if-eqz v12, :cond_d

    const v14, 0x7f09007b

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v14

    if-eqz v14, :cond_c

    const v14, 0x7f090091

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v14, v8

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v14, 0x7f090092

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_c
    const v14, 0x7f090086

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v14, v8

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v14, 0x7f090087

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    const v14, 0x7f09007b

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v14, 0x7f090088

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v14, v8

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v14, 0x7f090089

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v14

    if-eqz v14, :cond_f

    const v14, 0x7f09007b

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v14, 0x7f09008f

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v14, v8

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v14, 0x7f090090

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_f
    const v14, 0x7f09007b

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v14, 0x7f09007c

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    add-int/2addr v14, v8

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v14, 0x7f09007d

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_10
    if-eqz v12, :cond_13

    const v14, 0x7f080025

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v14

    if-eqz v14, :cond_11

    const v14, 0x7f0202ce

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v14

    if-eqz v14, :cond_12

    const v14, 0x7f090062

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v14, 0x7f090061

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_12
    const v14, 0x7f090053

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v14, 0x7f090055

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v14

    if-eqz v14, :cond_15

    const v14, 0x7f080025

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v14

    if-eqz v14, :cond_14

    const v14, 0x7f0202ce

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_14
    const v14, 0x7f09005f

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v14, 0x7f09005e

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_15
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    const v14, 0x7f080025

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v14

    if-eqz v14, :cond_16

    const v14, 0x7f0202ce

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_16
    const v14, 0x7f09005c

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v14, 0x7f09005b

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v14

    if-eqz v14, :cond_2

    const v14, 0x7f080025

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v14, 0x7f0202ce

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method private showDiscoverabilityForLanguageOld()Landroid/view/View;
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const v20, 0x7f03002d

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f080038

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v19, 0x7f080039

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v19, 0x7f080011

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const v19, 0x7f09011a

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v19, 0x7f09097e

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v19, 0x7f09097d

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v19, 0x7f09097f

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v19, 0x7f090980

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    const v19, 0x7f090981

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v14, v15, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Lcom/diotek/ime/framework/view/TipsDialog;->setCloseBtnPositionOld(Landroid/view/View;Landroid/content/res/Resources;)V

    return-object v18

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const v20, 0x7f03002f

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f08003a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v19

    if-eqz v19, :cond_6

    const v19, 0x7f080038

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v19, 0x7f080039

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    const v19, 0x7f090109

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v19, 0x7f0900e1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v7, v0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_2
    const v19, 0x7f0202c5

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v19

    if-eqz v19, :cond_3

    const v19, 0x7f0900f4

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    :goto_1
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v9, v0, v1, v7}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_3
    const v19, 0x7f0900f5

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    goto :goto_1

    :cond_4
    const v19, 0x7f0202c5

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v19

    if-eqz v19, :cond_5

    const v19, 0x7f0900f0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    goto :goto_1

    :cond_5
    const v19, 0x7f0900f1

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_0

    :cond_7
    const v19, 0x7f0900b3

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v8, v9, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const v20, 0x7f03002d

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v19

    if-nez v19, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v19

    if-eqz v19, :cond_a

    :cond_9
    const/16 v17, 0x1

    :goto_2
    const v19, 0x7f080038

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v19, 0x7f080039

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v19

    if-eqz v19, :cond_b

    const v19, 0x7f090111

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v19, 0x7f09010f

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v19, 0x7f090110

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_0

    :cond_a
    const/16 v17, 0x0

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v19

    if-eqz v19, :cond_13

    const v19, 0x7f0900ef

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v7, v0

    const v19, 0x7f0202d3

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v19

    if-eqz v19, :cond_c

    const v19, 0x7f0900fc

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    const v19, 0x7f0900e7

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v4, v0

    :goto_3
    const v19, 0x7f0900fe

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_4
    iput v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v9, v0, v1, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    :cond_c
    const v19, 0x7f0900fd

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    const v19, 0x7f0900e9

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v4, v0

    goto :goto_3

    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v19

    if-eqz v19, :cond_e

    const v19, 0x7f0900e4

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    const v19, 0x7f0900e8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v4, v0

    :goto_5
    const v19, 0x7f0900ec

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4

    :cond_e
    const v19, 0x7f0900e6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    const v19, 0x7f0900ea

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v4, v0

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v19

    if-eqz v19, :cond_10

    const v19, 0x7f090106

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    const v19, 0x7f090107

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v4, v0

    :goto_6
    const v19, 0x7f090108

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_4

    :cond_10
    const v19, 0x7f090104

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    const v19, 0x7f090105

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v4, v0

    goto :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v19

    if-eqz v19, :cond_12

    const v19, 0x7f0900e3

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    const v19, 0x7f0900e7

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v4, v0

    :goto_7
    const v19, 0x7f0900eb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_4

    :cond_12
    const v19, 0x7f0900e5

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v9, v0

    const v19, 0x7f0900e9

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v4, v0

    goto :goto_7

    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v19

    const-string v20, "CscFeatureSipAddCommaKeyAsDefault"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_14

    if-nez v17, :cond_14

    const v19, 0x7f0900bb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v19, 0x7f0900b5

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v19, 0x7f0900c4

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_15

    if-nez v17, :cond_15

    const v19, 0x7f0900c8

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v19, 0x7f0900ca

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_15
    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_16

    const v19, 0x7f0900c9

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v19, 0x7f0900cb

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_16
    const v19, 0x7f0900b6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v19, 0x7f0900c6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v19, 0x7f0900bc

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_0
.end method

.method private showDiscoverabilityForLanguageTalkback()Landroid/view/View;
    .locals 14

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    const v12, 0x7f0e02f0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->sendTalkbackDescription(Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f030015

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v4, 0x0

    const v11, 0x7f080025

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v11

    if-eqz v11, :cond_0

    const v11, 0x7f090078

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_1
    const v11, 0x7f09009f

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v11, 0x7f09009e

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v4

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    const v11, 0x7f090077

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :cond_2
    :goto_1
    return-object v10

    :cond_3
    const v11, 0x7f09009d

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v11, 0x7f09009c

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v4

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_4
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_5
    const v11, 0x7f080025

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f090075

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v11, 0x7f090076

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_6
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f030016

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_7
    const/4 v9, 0x1

    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v11

    if-eqz v11, :cond_d

    const v11, 0x7f080025

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v11

    if-eqz v11, :cond_8

    const v11, 0x7f090078

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_8
    const v11, 0x7f090077

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eqz v9, :cond_b

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_a

    const v11, 0x7f09008c

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v4

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    :cond_a
    const v11, 0x7f090081

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v4

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_b
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_c

    const v11, 0x7f09008a

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v4

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_c
    const v11, 0x7f09007f

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v4

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_d
    if-eqz v9, :cond_f

    const v11, 0x7f080025

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_e

    const v11, 0x7f090066

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v11, 0x7f080022

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f090063

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_e
    const v11, 0x7f090051

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_f
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_2

    const v11, 0x7f080025

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f090064

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1
.end method

.method private showDiscoverabilityForLanguageTalkbackOld()Landroid/view/View;
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v22, v0

    const v23, 0x7f0e02f0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->sendTalkbackDescription(Ljava/lang/String;)V

    const/16 v21, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    const v23, 0x7f030030

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    const v22, 0x7f08003a

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const v22, 0x7f080038

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v22

    if-eqz v22, :cond_0

    const v22, 0x7f0202c8

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v22

    if-eqz v22, :cond_5

    const v22, 0x7f0202c4

    move/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v22, 0x7f080039

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    const v22, 0x7f09011c

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v22, 0x7f09011f

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v22

    if-eqz v22, :cond_1

    const v22, 0x7f09011e

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v22

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v22

    if-eqz v22, :cond_4

    :cond_2
    const v22, 0x7f090133

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v12, v22, v16

    :goto_0
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v12, v0, v1, v9}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8}, Lcom/diotek/ime/framework/view/TipsDialog;->setCloseBtnPositionOld(Landroid/view/View;Landroid/content/res/Resources;)V

    return-object v21

    :cond_4
    const v22, 0x7f090132

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v12, v22, v16

    goto :goto_0

    :cond_5
    const v22, 0x7f090112

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v22

    if-eqz v22, :cond_7

    :cond_6
    const v22, 0x7f09011a

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v12, v0

    :goto_2
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v12, v0, v1, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_7
    const v22, 0x7f090119

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v12, v0

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    const v23, 0x7f03002e

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    const/4 v10, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v22

    if-nez v22, :cond_9

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_9
    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v22

    if-eqz v22, :cond_e

    const v22, 0x7f08003a

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v22, 0x7f080011

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v22, 0x7f080038

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v22, 0x7f09011d

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v22

    if-eqz v22, :cond_a

    const v22, 0x7f09011e

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v22

    if-eqz v22, :cond_c

    const v22, 0x7f09012c

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v12, v22, v16

    const v22, 0x7f09012d

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    const v22, 0x7f09012e

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    :goto_4
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v12, v0, v1, v9}, Landroid/view/View;->setPadding(IIII)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v19

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_c
    if-eqz v20, :cond_d

    const v22, 0x7f090129

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v12, v22, v16

    const v22, 0x7f09012a

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    const v22, 0x7f09012b

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    goto :goto_4

    :cond_d
    const v22, 0x7f090123

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v12, v22, v16

    const v22, 0x7f090124

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    const v22, 0x7f090125

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    goto :goto_4

    :cond_e
    if-eqz v20, :cond_f

    const v22, 0x7f08003a

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v22, 0x7f090117

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v12, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v10, v12, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v22

    if-eqz v22, :cond_3

    const v22, 0x7f08003a

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v22, 0x7f090118

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v12, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v10, v12, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1
.end method

.method private showDiscoverabilityForMMKey()Landroid/view/View;
    .locals 14

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->getGuideMessageForMMKey()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f030011

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f080022

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_2

    const v11, 0x7f090046

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    const v11, 0x7f090058

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    :goto_1
    return-object v10

    :cond_2
    const v11, 0x7f090057

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_3
    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f030012

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isNumberSymbolOnlyEditor()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_4
    const/4 v3, 0x1

    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v11

    if-eqz v11, :cond_a

    const v11, 0x7f080022

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f090094

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v11

    if-eqz v11, :cond_6

    const v11, 0x7f090093

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_6
    if-nez v3, :cond_9

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_9

    :cond_7
    const v11, 0x7f09009b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_3
    const v11, 0x7f090077

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    const v11, 0x7f090095

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_3

    :cond_a
    const v11, 0x7f080022

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v5, :cond_b

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v11

    if-eqz v11, :cond_c

    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v3, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f090073

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const v11, 0x7f090074

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_c
    if-nez v3, :cond_1

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_d

    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f090070

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_d
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_1

    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f090074

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_e
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v11

    array-length v11, v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_12

    const/4 v4, 0x1

    :goto_4
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const v12, 0x7f030011

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f080022

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v5, :cond_f

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v11

    if-nez v11, :cond_10

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v11

    if-eqz v11, :cond_13

    :cond_10
    const/4 v9, 0x1

    :goto_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_1b

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v11

    if-eqz v11, :cond_17

    const/4 v6, 0x0

    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v11

    if-eqz v11, :cond_11

    const v11, 0x7f090078

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_11
    if-eqz v4, :cond_15

    if-eqz v9, :cond_14

    const v11, 0x7f090080

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_6
    const v11, 0x7f090077

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_1

    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    :cond_13
    const/4 v9, 0x0

    goto :goto_5

    :cond_14
    const v11, 0x7f09007e

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    :cond_15
    if-eqz v9, :cond_16

    const v11, 0x7f090083

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    :cond_16
    const v11, 0x7f090084

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_6

    :cond_17
    if-eqz v4, :cond_19

    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v9, :cond_18

    const v11, 0x7f090052

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_7
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f09004c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_18
    const v11, 0x7f090050

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_7

    :cond_19
    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v9, :cond_1a

    const v11, 0x7f090054

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_1a
    const v11, 0x7f090046

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_1b
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v11

    if-eqz v11, :cond_24

    const/4 v6, 0x0

    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v11

    if-eqz v11, :cond_1c

    const v11, 0x7f090078

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_1c
    if-eqz v4, :cond_20

    if-eqz v9, :cond_1e

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_1d

    const v11, 0x7f09008d

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_8
    const v11, 0x7f090077

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_1

    :cond_1d
    const v11, 0x7f090080

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_8

    :cond_1e
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_1f

    const v11, 0x7f09008b

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_8

    :cond_1f
    const v11, 0x7f09007e

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_8

    :cond_20
    if-eqz v9, :cond_22

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_21

    const v11, 0x7f09008e

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_8

    :cond_21
    const v11, 0x7f090082

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_8

    :cond_22
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_23

    const v11, 0x7f090085

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_8

    :cond_23
    const v11, 0x7f09007a

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v6

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_8

    :cond_24
    if-eqz v4, :cond_28

    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v9, :cond_26

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_25

    const v11, 0x7f090067

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_9
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f09004c

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_25
    const v11, 0x7f090052

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_9

    :cond_26
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_27

    const v11, 0x7f090065

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_9

    :cond_27
    const v11, 0x7f090050

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_9

    :cond_28
    if-eqz v9, :cond_2a

    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_29

    const v11, 0x7f090060

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_29
    const v11, 0x7f090056

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    :cond_2a
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v11

    if-eqz v11, :cond_1

    const v11, 0x7f080024

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v11, 0x7f09005d

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    iput v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1
.end method

.method private showDiscoverabilityForMMKeyOld()Landroid/view/View;
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/view/TipsDialog;->getGuideMessageForMMKey()Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v28

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    const v29, 0x7f030033

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    const v28, 0x7f080011

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v28

    if-eqz v28, :cond_1

    const v28, 0x7f08003f

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const v28, 0x7f0202cc

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const v28, 0x7f08003d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const v28, 0x7f09010c

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v11, v13, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    const v28, 0x7f09010d

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const v28, 0x7f09010e

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v25

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v10}, Lcom/diotek/ime/framework/view/TipsDialog;->setCloseBtnPositionOld(Landroid/view/View;Landroid/content/res/Resources;)V

    return-object v27

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    const v29, 0x7f030034

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isNumberSymbolOnlyEditor()Z

    move-result v28

    if-nez v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v28

    if-eqz v28, :cond_6

    :cond_4
    const/4 v12, 0x1

    :goto_1
    const v28, 0x7f080011

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    if-eqz v16, :cond_5

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v28

    if-eqz v28, :cond_8

    const v28, 0x7f08003f

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout$LayoutParams;

    const v28, 0x7f090977

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v9, v0

    const v28, 0x7f090978

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    const v28, 0x7f0202d2

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v28, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v28

    if-eqz v28, :cond_7

    const v28, 0x7f09097d

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2
    const v28, 0x7f09097c

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v24, v0

    const/16 v28, 0x0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingRight()I

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const v28, 0x7f09097a

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_7
    const v28, 0x7f090979

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v28

    if-eqz v28, :cond_d

    const v28, 0x7f08003f

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const v28, 0x7f08003e

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v28

    if-nez v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v28

    if-eqz v28, :cond_b

    :cond_9
    const v28, 0x7f0900e2

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v28

    if-eqz v28, :cond_a

    const v28, 0x7f0202c7

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v28, 0x7f0900d3

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    const v28, 0x7f090102

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v6, v0

    const v28, 0x7f0900db

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    const v28, 0x7f0900dc

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v25, v0

    :goto_3
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v25

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v5, v6, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_a
    const v28, 0x7f0202c4

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v28, 0x7f0900e0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    const v28, 0x7f090103

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v6, v0

    const v28, 0x7f0900d9

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    const v28, 0x7f0900da

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v25, v0

    goto :goto_3

    :cond_b
    const v28, 0x7f0900e1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v28

    if-eqz v28, :cond_c

    const v28, 0x7f0202c6

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v28, 0x7f0900d3

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    const v28, 0x7f0900de

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v6, v0

    const v28, 0x7f0900d7

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    const v28, 0x7f0900d8

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v25, v0

    goto/16 :goto_3

    :cond_c
    const v28, 0x7f0202c5

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v28, 0x7f0900d4

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v21, v0

    const v28, 0x7f0900dd

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v6, v0

    const v28, 0x7f0900d5

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    const v28, 0x7f0900d6

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v25, v0

    goto/16 :goto_3

    :cond_d
    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v28

    if-nez v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v28

    if-eqz v28, :cond_2

    :cond_e
    const v28, 0x7f08003f

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const v28, 0x7f0202c3

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v28, 0x7f08003e

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    const v28, 0x7f0900b0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v14, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    const v29, 0x7f030033

    const/16 v30, 0x0

    invoke-interface/range {v28 .. v30}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v27

    const v28, 0x7f080011

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    if-eqz v16, :cond_10

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    const v28, 0x7f08003f

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    const v28, 0x7f08003e

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v28

    if-nez v28, :cond_11

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v28

    if-eqz v28, :cond_12

    :cond_11
    const/16 v26, 0x1

    :goto_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v28

    if-eqz v28, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v28

    if-eqz v28, :cond_1a

    const v28, 0x7f08003d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    const v28, 0x7f0900ef

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v28

    if-eqz v28, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_14

    if-nez v26, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v28

    if-eqz v28, :cond_13

    const v28, 0x7f0900fa

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    :goto_5
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v15, v1, v2, v9}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_12
    const/16 v26, 0x0

    goto :goto_4

    :cond_13
    const v28, 0x7f0900fb

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto :goto_5

    :cond_14
    if-eqz v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v28

    if-eqz v28, :cond_15

    const v28, 0x7f0900ff

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto :goto_5

    :cond_15
    const v28, 0x7f090122

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v28

    if-eqz v28, :cond_17

    const v28, 0x7f090100

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto/16 :goto_5

    :cond_17
    const v28, 0x7f090101

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v28

    if-eqz v28, :cond_19

    const v28, 0x7f0900d1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto/16 :goto_5

    :cond_19
    const v28, 0x7f0900d2

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1c

    if-nez v26, :cond_1c

    const v28, 0x7f090134

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v14, v0

    :cond_1b
    :goto_6
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_1c
    if-eqz v26, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v28

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_1b

    const v28, 0x7f090135

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v14, v0

    goto :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v28

    if-nez v28, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v28

    if-nez v28, :cond_1e

    const v28, 0x7f090136

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v14, v0

    goto :goto_6

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v28

    if-eqz v28, :cond_1b

    const v28, 0x7f090137

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v14, v0

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v28

    if-eqz v28, :cond_23

    const v28, 0x7f08003d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    const v28, 0x7f0900ef

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v9, v0

    const v28, 0x7f0900d5

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    const v28, 0x7f0900d6

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v25, v0

    if-eqz v26, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v28

    if-eqz v28, :cond_20

    const v28, 0x7f090100

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    :goto_7
    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v25

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v15, v1, v2, v9}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_20
    const v28, 0x7f090101

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto :goto_7

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v28

    if-eqz v28, :cond_22

    const v28, 0x7f0900d1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto :goto_7

    :cond_22
    const v28, 0x7f0900d2

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v15, v0

    goto :goto_7

    :cond_23
    if-eqz v26, :cond_25

    :cond_24
    :goto_8
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v28

    if-nez v28, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v28

    if-nez v28, :cond_26

    const v28, 0x7f0900a4

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v14, v0

    goto :goto_8

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v28

    if-eqz v28, :cond_24

    const v28, 0x7f08003d

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingLeft()I

    move-result v28

    const v29, 0x7f0900cc

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v29

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v13, v28, v29

    const/4 v14, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v13, v1, v2, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_8
.end method

.method private showDiscoverabilityForMMKeyTalkbackOld()Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const v19, 0x7f030033

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/diotek/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/view/TipsDialog;->getGuideMessageForMMKey()Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Lcom/diotek/ime/framework/view/TipsDialog;->setCloseBtnPositionOld(Landroid/view/View;Landroid/content/res/Resources;)V

    const v18, 0x7f080011

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->sendTalkbackDescription(Ljava/lang/String;)V

    :goto_0
    const v18, 0x7f08003f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v18, 0x7f08003e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v18

    if-eqz v18, :cond_3

    :cond_0
    const/16 v16, 0x1

    :goto_1
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v18

    if-eqz v18, :cond_7

    const v18, 0x7f08003d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const v18, 0x7f0900ef

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v4, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v18

    if-eqz v18, :cond_4

    const v18, 0x7f0900ff

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v7, v0

    :cond_1
    :goto_2
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v7, v0, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_3
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v6, v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v17

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    const v19, 0x7f0e02ec

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->sendTalkbackDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_4
    const v18, 0x7f090122

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v7, v0

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v18

    if-eqz v18, :cond_6

    const v18, 0x7f0900fa

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v7, v0

    goto :goto_2

    :cond_6
    const v18, 0x7f0900fb

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v7, v0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    if-nez v16, :cond_9

    const v18, 0x7f090134

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    :cond_8
    :goto_4
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v11, v6, v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_9
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    const v18, 0x7f090135

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v18

    if-nez v18, :cond_b

    const v18, 0x7f090136

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v18

    if-eqz v18, :cond_8

    const v18, 0x7f090137

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v18

    if-eqz v18, :cond_10

    const v18, 0x7f08003d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    const v18, 0x7f09011d

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v4, v0

    const v18, 0x7f0900d5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    const v18, 0x7f0900d6

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v15, v0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isOneHandKeypadRightSet()Z

    move-result v18

    if-eqz v18, :cond_d

    const v18, 0x7f09011e

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v18

    if-eqz v18, :cond_e

    const v18, 0x7f090121

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v18, v12

    :goto_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v14, v0, v15, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v7, v0, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    :cond_e
    if-eqz v16, :cond_f

    const v18, 0x7f090122

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v18, v12

    goto :goto_5

    :cond_f
    const v18, 0x7f090120

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v18, v12

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v18

    if-eqz v18, :cond_11

    const v18, 0x7f0900a7

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    goto/16 :goto_3

    :cond_11
    if-eqz v16, :cond_12

    const v18, 0x7f0900a6

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    goto/16 :goto_3

    :cond_12
    const v18, 0x7f0900a5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v6, v0

    goto/16 :goto_3
.end method


# virtual methods
.method public closeDiscoverability()V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->closeDiscoverability()V

    :cond_2
    return-void
.end method

.method protected getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$78;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$78;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnLanguageDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/diotek/ime/framework/view/TipsDialog$79;

    invoke-direct {v0, p0}, Lcom/diotek/ime/framework/view/TipsDialog$79;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    :cond_2
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mOnDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    goto :goto_0
.end method

.method protected getSelectedLanguageNames()[Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/diotek/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "English"

    aput-object v4, v1, v3

    :cond_1
    return-object v1
.end method

.method public getSystemStatusBarHeight()I
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/diotek/ime/framework/util/Utils;->isStatusBarShowing(Landroid/view/IWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/diotek/ime/framework/util/Utils;->getSystemStatusBarHeight(Landroid/content/Context;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v4, "SamsungIME"

    const-string v5, "getSystemStatusBarHeight - NotFoundException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "SamsungIME"

    const-string v5, "getSystemStatusBarHeight - RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isAttentionPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isDiscoverabilityShown()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public showDiscoverability(ILandroid/view/View;Landroid/view/View;)V
    .locals 17
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/View;

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowHeight()I

    move-result v7

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v8

    const/16 v12, 0x500

    if-ne v7, v12, :cond_2

    const/16 v12, 0x2d0

    if-ne v8, v12, :cond_2

    const/4 v3, 0x1

    :goto_0
    const/16 v12, 0x780

    if-ne v7, v12, :cond_3

    const/16 v12, 0x438

    if-ne v8, v12, :cond_3

    const/4 v2, 0x1

    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual/range {p0 .. p3}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityOld(ILandroid/view/View;Landroid/view/View;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move-object/from16 v0, p3

    instance-of v12, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v12, :cond_a

    move-object/from16 v12, p3

    check-cast v12, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-eqz v12, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstancePopup()Landroid/widget/PopupWindow;

    move-result-object v12

    sput-object v12, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    sget-object v12, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->windowManager:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/4 v9, 0x0

    const/16 v12, 0x20

    move/from16 v0, p1

    if-ne v0, v12, :cond_5

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    if-nez p1, :cond_d

    if-eqz p2, :cond_d

    :cond_6
    const-string v12, "first_auto_replacement_tap_execution"

    const/4 v13, 0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_d

    if-nez p2, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForAutoCorrect(Landroid/view/View;)Landroid/view/View;

    move-result-object v11

    :goto_4
    const-string v12, "first_auto_replacement_tap_execution"

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_5
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->releaseAllKeyPressed()V

    :cond_7
    sget-object v12, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v12, v11}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    sget-object v12, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget-object v12, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    const/4 v13, -0x1

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setWidth(I)V

    const v12, 0x7f08000e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$75;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$75;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_9
    sget-object v12, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    new-instance v13, Lcom/diotek/ime/framework/view/TipsDialog$76;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/diotek/ime/framework/view/TipsDialog$76;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v12, v13}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v13, "IS_POPUP_SHOW"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-object v12, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_2

    :cond_a
    if-nez p3, :cond_b

    const-string v12, "SamsungIME"

    const-string v13, "[showDiscoverability] this is auto replacement discoverity popup"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    const-string v12, "SamsungIME"

    const-string v13, "[showDiscoverability] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForAutoCorrect(Landroid/view/View;)Landroid/view/View;

    move-result-object v11

    goto/16 :goto_4

    :cond_d
    const/16 v12, -0x75

    move/from16 v0, p1

    if-ne v0, v12, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForMMKey()Landroid/view/View;

    move-result-object v11

    const-string v12, "first_mmkey_popup_help_execution"

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v12

    array-length v9, v12

    const/4 v12, 0x1

    if-le v9, v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v12

    if-eqz v12, :cond_f

    const/16 v12, 0x64

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    const-string v12, "first_languagechange_popup_help_execution"

    const/4 v13, 0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForLanguageTalkback()Landroid/view/View;

    move-result-object v11

    const-string v12, "first_languagechange_popup_help_execution"

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5

    :cond_f
    const/4 v12, 0x1

    if-le v9, v12, :cond_1

    const/16 v12, 0x64

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    const-string v12, "first_languagechange_popup_help_execution"

    const/4 v13, 0x1

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForLanguage()Landroid/view/View;

    move-result-object v11

    const-string v12, "first_languagechange_popup_help_execution"

    const/4 v13, 0x0

    invoke-interface {v5, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_5
.end method

.method public showDiscoverabilityOld(ILandroid/view/View;Landroid/view/View;)V
    .locals 12
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/View;

    const/16 v11, 0x64

    const/16 v10, -0x75

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v6

    iput v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    instance-of v6, p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v6, :cond_1

    move-object v6, p3

    check-cast v6, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->releaseAllKeyPressed()V

    :goto_0
    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v6, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-nez p3, :cond_2

    const-string v6, "SamsungIME"

    const-string v7, "[showDiscoverability] this is auto replacement discoverity popup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v6, "SamsungIME"

    const-string v7, "[showDiscoverability] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/diotek/ime/framework/view/TipsDialog;->getInstancePopup()Landroid/widget/PopupWindow;

    move-result-object v6

    sput-object v6, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->getSystemStatusBarHeight()I

    move-result v4

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->windowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v6, 0x20

    if-ne p1, v6, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    :cond_5
    const-string v6, "first_auto_replacement_tap_execution"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez p2, :cond_7

    invoke-direct {p0, p3}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForAutoCorrectOld(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    :goto_2
    const-string v6, "first_auto_replacement_tap_execution"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_3
    if-eqz v5, :cond_6

    sget-object v6, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    sget-object v6, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/TipsDialog;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    sget-object v6, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/TipsDialog;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    const v6, 0x7f08000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v6, Lcom/diotek/ime/framework/view/TipsDialog$77;

    invoke-direct {v6, p0, p1}, Lcom/diotek/ime/framework/view/TipsDialog$77;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setFocusable(Z)V

    :cond_6
    sget-object v6, Lcom/diotek/ime/framework/view/TipsDialog;->mDiscoverability:Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7, v8}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForAutoCorrectOld(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    array-length v6, v6

    if-le v6, v9, :cond_b

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    if-ne p1, v10, :cond_a

    iget v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    if-ne v6, v9, :cond_9

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForMMKeyOld()Landroid/view/View;

    move-result-object v5

    :goto_4
    const-string v6, "first_mmkey_popup_help_execution"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForMMKeyTalkbackOld()Landroid/view/View;

    move-result-object v5

    goto :goto_4

    :cond_a
    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    array-length v6, v6

    if-le v6, v9, :cond_0

    if-ne p1, v11, :cond_0

    const-string v6, "first_languagechange_popup_help_execution"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForLanguageTalkbackOld()Landroid/view/View;

    move-result-object v5

    const-string v6, "first_languagechange_popup_help_execution"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_b
    if-ne p1, v10, :cond_c

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForMMKeyOld()Landroid/view/View;

    move-result-object v5

    const-string v6, "first_mmkey_popup_help_execution"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_c
    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/diotek/ime/framework/common/Language;

    move-result-object v6

    array-length v6, v6

    if-le v6, v9, :cond_0

    if-ne p1, v11, :cond_0

    const-string v6, "first_languagechange_popup_help_execution"

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->showDiscoverabilityForLanguageOld()Landroid/view/View;

    move-result-object v5

    const-string v6, "first_languagechange_popup_help_execution"

    invoke-interface {v1, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3
.end method

.method public showEmptyShortcutsGuideDialog(Landroid/view/View;)V
    .locals 19
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showEmptyShortcutsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideLayoutRscId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideCheckBoxRscId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideDialogTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_SHORTCUT_GUIDE_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v16, "first_empty_shortcuts_guide_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_6

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowEmptyShortcutsGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getEmptyShortcutsGuideDialogContent()Ljava/lang/String;

    move-result-object v11

    const v16, 0x7f080043

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$68;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$68;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_4

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$69;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/diotek/ime/framework/view/TipsDialog$69;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$70;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$70;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$71;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$71;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v16, 0x3f000000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-object v6, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v9

    sget-boolean v16, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_0

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_0

    iput-object v6, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showGestureGuideDialog(Landroid/view/View;)V
    .locals 17
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_2

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getGestureGuideLayoutRscId()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getGestureGuideCheckBoxRscId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getGestureGuideDialogTitle()Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_1

    if-eqz v5, :cond_1

    if-nez v6, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v14, "SamsungIME"

    const-string v15, "[showGestureGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v14, "fist_hwr_execution"

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowGestureGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v9, v7, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v14, 0x1020016

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_4

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_4
    const v14, 0x104000a

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$5;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$5;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v14, 0x1040000

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$6;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$7;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14, v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->adjustGestureGuideText(Landroid/view/View;)V

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_5

    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$8;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v3, v14}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    const/high16 v14, 0x3f000000

    invoke-virtual {v12, v14}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    iput-object v14, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    iget-object v14, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-eqz v14, :cond_1

    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_1

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    iput-object v14, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showHalfFullWidthSwitchDialog(Landroid/view/View;)V
    .locals 13
    .param p1    # Landroid/view/View;

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v10, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v10, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "SamsungIME"

    const-string v11, "[showHalfFullWidthSwitchDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "IS_POPUP_SHOW"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v10

    iput v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v10, Landroid/view/ContextThemeWrapper;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v11

    invoke-direct {v10, v2, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0e01d1

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e02d5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e02d6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    const/4 v10, 0x1

    aput-object v4, v6, v10

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->isFullWidthMode()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x0

    :goto_1
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$74;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$74;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v6, v10, v11}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0e02d4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v11, 0x7

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_6

    :cond_3
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v10, 0x3eb

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, -0x2

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v10, 0x3f000000

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v10, v7}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v10}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v9, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v3

    sget-boolean v10, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showLanguageSelectDialog(Landroid/view/View;)V
    .locals 9
    .param p1    # Landroid/view/View;

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v5

    iput v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    instance-of v5, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v5, :cond_2

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v6, "IS_POPUP_SHOW"

    invoke-interface {v5, v6, v8}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v7}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/diotek/ime/framework/view/TipsDialog$72;

    invoke-direct {v6, p0}, Lcom/diotek/ime/framework/view/TipsDialog$72;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/TipsDialog;->getSelectedLanguageNames()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v6}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getLanguageIndexOfSupportedThings()I

    move-result v6

    new-instance v7, Lcom/diotek/ime/framework/view/TipsDialog$73;

    invoke-direct {v7, p0}, Lcom/diotek/ime/framework/view/TipsDialog$73;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getLanguageSelectDialogTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Landroid/view/Window;->addFlags(I)V

    const/high16 v5, 0x3f000000

    invoke-virtual {v3, v5}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_0
    const/16 v5, 0x3eb

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    :try_start_0
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/diotek/ime/framework/common/InputManager;->setLangPopupShown(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v5, "SamsungIME"

    const-string v6, "[showLanguageSelectDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public showOneHandedGuideDialog(Landroid/view/View;)V
    .locals 20
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showOneHandedGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideCheckBoxRscId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandGuideAnimationDrawbleRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v16, "first_one_handed_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_7

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    check-cast v16, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$15;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$15;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$16;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/TipsDialog$16;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$17;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$17;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v16, 0x3f000000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x1f4

    invoke-virtual/range {v16 .. v19}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v5

    sget-boolean v16, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_6

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showPenDetectionGuideDialog(Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;

    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v11, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showPenDetectionGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-nez v11, :cond_0

    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideLayoutRscId()I

    move-result v8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideCheckBoxRscId()I

    move-result v6

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPenDetectionGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v13, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$18;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$18;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0e0117

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$19;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$19;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_6

    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_PENDETECTIONGUIDE_CHECKBOX_CHECKED"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPenDetectionGuide:Z

    :cond_5
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$20;

    invoke-direct {v11, p0, v2}, Lcom/diotek/ime/framework/view/TipsDialog$20;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$21;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$21;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_7

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_8

    :cond_7
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showPinchZoomGuideDialog(Landroid/view/View;)V
    .locals 21
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v17, "SamsungIME"

    const-string v18, "[showPinchZoomGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->isShowing()Z

    move-result v17

    if-nez v17, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideDialogTitle()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getPinchZoomGuideAnimationDrawbleRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getMovingGuideAnimationDrawbleRscId()I

    move-result v10

    if-eqz v12, :cond_0

    if-eqz v5, :cond_0

    if-eqz v11, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "IS_POPUP_SHOW"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v17, "first_pinch_zoom_execution"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowPinchZoomGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v9, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v17, 0x1020016

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_4

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mMotionTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mMovingTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    const v17, 0x104000a

    new-instance v18, Lcom/diotek/ime/framework/view/TipsDialog$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$2;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$3;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_2
    const/16 v17, 0x3eb

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v4

    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_6

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showSwiftkeyGuideDialog(Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;

    const/4 v13, 0x1

    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->releaseAllKeyPressed()V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    iput v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showSwiftkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideLayoutRscId()I

    move-result v8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v12

    invoke-direct {v11, v3, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v11, 0x7f080072

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    invoke-virtual {v2, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$12;

    invoke-direct {v11, p0, v2}, Lcom/diotek/ime/framework/view/TipsDialog$12;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$13;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$13;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$14;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$14;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    const/high16 v11, 0x3f000000

    invoke-virtual {v9, v11}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_4

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_6

    :cond_4
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_6
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_5

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showSwiftkeyRemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V
    .locals 12
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Landroid/view/View;

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v8, p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v8, :cond_1

    check-cast p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p3, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "SamsungIME"

    const-string v9, "[showSwiftkeyRemoveTermDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    iput v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/diotek/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKeyboardView()V

    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "IS_POPUP_SHOW"

    invoke-interface {v8, v9, v11}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v9

    invoke-direct {v8, v2, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyRemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$64;

    invoke-direct {v9, p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog$64;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;I)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$65;

    invoke-direct {v9, p0}, Lcom/diotek/ime/framework/view/TipsDialog$65;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v10}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_4

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_6

    :cond_4
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v8, 0x3eb

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v8, 0x3f000000

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v6, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v4}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showTipsCMkeyGuideDialog(Landroid/view/View;)V
    .locals 17
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsCMkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideLayoutRscId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideCheckBoxRscId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsCMkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v5, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v5, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v10, v4, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0800e7

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "2. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0e014f

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$43;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$43;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0e0245

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$44;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$44;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0e014e

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$45;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$45;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$46;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7}, Lcom/diotek/ime/framework/view/TipsDialog$46;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$47;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$47;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$48;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$48;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$49;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$49;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    iput-object v6, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v14, 0x3f000000

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v12, v13}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    iput-object v6, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsDialogByIndex(ILandroid/view/View;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/View;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsTraceGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsCMkeyGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsSwiftKeyLearnsGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/view/TipsDialog;->showTipsRemoveWordsGuideDialog(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showTipsHwrInstallGuideDialog(Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;

    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    iput v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, -0x2

    invoke-virtual {v11, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v11, ""

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showTipsHwrInstallGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v11

    if-nez v11, :cond_0

    const v6, 0x7f03003c

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v12}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v12

    invoke-direct {v11, v2, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v7, v6, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0e01d1

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$30;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$30;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$31;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$31;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    const/high16 v11, 0x3f000000

    invoke-virtual {v9, v11}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_3

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_5

    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowSwiftkeyGuideConsecutively(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_4

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showTipsOneHandedGuideDialog(Landroid/view/View;)V
    .locals 21
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v17, "SamsungIME"

    const-string v18, "[showTipsOneHandedGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->isShowing()Z

    move-result v17

    if-nez v17, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideCheckBoxRscId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandGuideAnimationDrawbleRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getOneHandedGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "IS_POPUP_SHOW"

    const/16 v19, 0x1

    invoke-interface/range {v17 .. v19}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v17, "first_one_handed_execution"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_8

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowOneHandedGuide:Z

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v17, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v8, v12, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/AnimationDrawable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedTutorialAnimationDrawble:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v17, 0x104000a

    new-instance v18, Lcom/diotek/ime/framework/view/TipsDialog$32;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$32;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_4

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$33;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/view/TipsDialog$33;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$34;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$34;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/diotek/ime/framework/view/TipsDialog$35;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$35;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v17, 0x3f000000

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_6
    :goto_2
    const/16 v17, 0x3eb

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v17, -0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mOneHandedAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x1f4

    invoke-virtual/range {v17 .. v20}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v16

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2

    :catch_0
    move-exception v5

    sget-boolean v17, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v17, :cond_7

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public showTipsRemoveWordsGuideDialog(Landroid/view/View;)V
    .locals 17
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsRemoveWordsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideLayoutRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideCheckBoxRscId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsRemoveWordsGuideDialogTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0800e9

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "4. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0e014f

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$57;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$57;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0e0245

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$58;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$58;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0e014e

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$59;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$59;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$60;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/diotek/ime/framework/view/TipsDialog$60;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$61;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$61;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$62;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$62;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$63;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$63;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    const/high16 v14, 0x3f000000

    invoke-virtual {v12, v14}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsSwiftKeyLearnsGuideDialog(Landroid/view/View;)V
    .locals 17
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v14, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v14, "SamsungIME"

    const-string v15, "[showTipsSwiftKeyLearnsGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-nez v14, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideLayoutRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideCheckBoxRscId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsSwiftKeyLearnsGuideDialogTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v10, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v7, v10, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0800eb

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "3. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v14, 0x7f0e014f

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$50;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$50;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0e0245

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$51;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$51;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v14, 0x7f0e014e

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$52;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$52;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$53;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v4}, Lcom/diotek/ime/framework/view/TipsDialog$53;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$54;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$54;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$55;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$55;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$56;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$56;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Landroid/view/Window;->addFlags(I)V

    const/high16 v14, 0x3f000000

    invoke-virtual {v12, v14}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v14, 0x3eb

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    iput-object v3, v13, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsSwiftkeyGuideDialog(Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;

    instance-of v11, p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v11, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p1, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v11, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "SamsungIME"

    const-string v12, "[showTipsSwiftkeyGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v11

    iput v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-nez v11, :cond_0

    :cond_3
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideLayoutRscId()I

    move-result v8

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    iget-object v13, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v13}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v13

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v11, 0x7f080072

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_4

    iget-boolean v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckboxStandardData:Z

    invoke-virtual {v2, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$25;

    invoke-direct {v11, p0, v2}, Lcom/diotek/ime/framework/view/TipsDialog$25;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v11, 0x104000a

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$26;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$26;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v11, 0x7f0e0117

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$27;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$27;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v11, Lcom/diotek/ime/framework/view/TipsDialog$28;

    invoke-direct {v11, p0}, Lcom/diotek/ime/framework/view/TipsDialog$28;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v12, Lcom/diotek/ime/framework/view/TipsDialog$29;

    invoke-direct {v12, p0}, Lcom/diotek/ime/framework/view/TipsDialog$29;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/view/Window;->addFlags(I)V

    const/high16 v11, 0x3f000000

    invoke-virtual {v9, v11}, Landroid/view/Window;->setDimAmount(F)V

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_5

    iget v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v12, 0x8

    if-ne v11, v12, :cond_8

    :cond_5
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_7
    :goto_1
    const/16 v11, 0x3eb

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v11, -0x2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v11, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "IS_POPUP_SHOW"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    iput-object v1, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTipsTraceGuideDialog(Landroid/view/View;)V
    .locals 18
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v15, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-nez v15, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v15, "SamsungIME"

    const-string v16, "[showTipsTraceGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->isShowing()Z

    move-result v15

    if-nez v15, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideLayoutRscId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideCheckBoxRscId()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTipsTraceGuideDialogTitle()Ljava/lang/String;

    move-result-object v11

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x1

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v15}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v15, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/4 v15, 0x0

    invoke-virtual {v8, v12, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0800ed

    invoke-virtual {v7, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "1. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v15, 0x7f0e014f

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$36;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$36;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0e0245

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$37;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$37;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v15, 0x7f0e014e

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$38;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$38;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v15

    const-string v16, "CscFeature_Sip_TraceGuideDialogCheckDefault"

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "true"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    if-eqz v15, :cond_5

    :cond_4
    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mIsTipCheckDontShowAllGuide:Z

    :cond_5
    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$39;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v5}, Lcom/diotek/ime/framework/view/TipsDialog$39;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$40;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$40;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$41;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$41;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$42;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$42;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v15}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    iput-object v3, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v15, 0x3eb

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v15, -0x2

    iput v15, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v15, 0x3f000000

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v13, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v15}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v15, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v15, :cond_0

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v15}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v16, "IS_POPUP_SHOW"

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    iput-object v3, v14, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method public showTraceGuideDialog(Landroid/view/View;)V
    .locals 19
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v16, "SamsungIME"

    const-string v17, "[showTraceGuideDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->isShowing()Z

    move-result v16

    if-nez v16, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTraceGuideLayoutRscId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTraceGuideCheckBoxRscId()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getTraceGuideDialogTitle()Ljava/lang/String;

    move-result-object v12

    if-eqz v13, :cond_0

    if-eqz v11, :cond_0

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_POPUP_SHOW"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v16, "first_trace_execution"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    if-nez v16, :cond_9

    const/16 v16, 0x1

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v16, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v18

    invoke-direct/range {v16 .. v18}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    const-string v17, "layout_inflater"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v13, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v12}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v16, 0x104000a

    new-instance v17, Lcom/diotek/ime/framework/view/TipsDialog$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$9;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v16

    const-string v17, "CscFeature_Sip_TraceGuideDialogCheckDefault"

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v16, v0

    const-string v17, "IS_INTERMEDIATE_TRACEGUIDE_CHECKBOX_TICKED"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mIsCheckDontShowTraceGuide:Z

    :cond_5
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/diotek/ime/framework/view/TipsDialog$10;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Landroid/widget/CheckBox;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    new-instance v16, Lcom/diotek/ime/framework/view/TipsDialog$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog$11;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v16, 0x3f000000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/Window;->setDimAmount(F)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    move/from16 v16, v0

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_8
    :goto_2
    const/16 v16, 0x3eb

    move/from16 v0, v16

    iput v0, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, -0x2

    move/from16 v0, v16

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAlertDialog:Landroid/app/AlertDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    sget-boolean v16, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_0

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_2
.end method

.method public showXt9PersonalizerAttentionDialog(Landroid/view/View;)V
    .locals 17
    .param p1    # Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->isShowing()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v15, -0x2

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v14, ""

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v14, :cond_6

    check-cast p1, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->isTipsPopup()Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getXt9PersonalizerAttentionGuideLayoutRscId()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getSwiftkeyGuideDialogTitle()Ljava/lang/String;

    move-result-object v10

    if-eqz v13, :cond_0

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v15, "IS_POPUP_SHOW"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v14, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v16

    invoke-direct/range {v14 .. v16}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const/4 v14, 0x0

    invoke-virtual {v6, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v14, 0x104000a

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$22;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$22;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->context:Landroid/content/Context;

    const-string v15, "keyguard"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v14

    if-nez v14, :cond_2

    const v14, 0x7f0e0117

    new-instance v15, Lcom/diotek/ime/framework/view/TipsDialog$23;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/diotek/ime/framework/view/TipsDialog$23;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    new-instance v14, Lcom/diotek/ime/framework/view/TipsDialog$24;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/diotek/ime/framework/view/TipsDialog$24;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v2, v14}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Landroid/view/Window;->addFlags(I)V

    const/high16 v14, 0x3f000000

    invoke-virtual {v11, v14}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v15, 0x7

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v15, 0x8

    if-ne v14, v15, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_4
    :goto_1
    const/16 v14, 0x3eb

    iput v14, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v14, -0x2

    iput v14, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mAttentionDialog:Landroid/app/AlertDialog;

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Lcom/diotek/ime/framework/common/InputManager;->setDontShowXt9PersonalizerAttentionConsecutively(Z)V

    goto/16 :goto_0

    :cond_6
    const-string v14, "SamsungIME"

    const-string v15, "[showXt9PersonalizerAttentionDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, v12, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v4

    sget-boolean v14, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v14, :cond_5

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public showXt9_9RemoveTermDialog(Ljava/lang/String;ILandroid/view/View;)V
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Landroid/view/View;

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v8, p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-eqz v8, :cond_1

    check-cast p3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iput-object p3, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v8, "SamsungIME"

    const-string v9, "[showXt9_9RemoveTermDialog] Bad object casting. the mCurrentView is not a instanceof AbstractKeyboardView "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/TipsDialog;->isAvailableShowXt9_9RemoveDialog(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->removeAllMsg()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    iput v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getXt9_9RemoveTermDialogTitle()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v9, "IS_POPUP_SHOW"

    invoke-interface {v8, v9, v10}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v9}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getDialogTheme()I

    move-result v9

    invoke-direct {v8, v2, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->getXt9_9RemoveTermDialogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v8, 0x104000a

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$66;

    invoke-direct {v9, p0, p1}, Lcom/diotek/ime/framework/view/TipsDialog$66;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v8, 0x1040000

    new-instance v9, Lcom/diotek/ime/framework/view/TipsDialog$67;

    invoke-direct {v9, p0}, Lcom/diotek/ime/framework/view/TipsDialog$67;-><init>(Lcom/diotek/ime/framework/view/TipsDialog;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/diotek/ime/framework/view/TipsDialog;->getOnDismissListener(Z)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_3

    iget v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mCurrentInputMethod:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_5

    :cond_3
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/diotek/ime/framework/view/PopupKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :goto_1
    const/16 v8, 0x3eb

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v8, -0x2

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v8, 0x3f000000

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    :try_start_0
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8, v4}, Lcom/diotek/ime/framework/common/InputManager;->setPopupDialog(Landroid/app/Dialog;)V

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/diotek/ime/framework/view/TipsDialog;->mkeyboardView:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method
