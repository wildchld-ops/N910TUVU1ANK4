.class public Lcom/android/ex/editstyledtext/EditStyledText;
.super Landroid/widget/EditText;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/editstyledtext/EditStyledText$1;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;,
        Lcom/android/ex/editstyledtext/EditStyledText$ColorPaletteDrawable;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;,
        Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;,
        Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;,
        Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;,
        Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;,
        Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;,
        Lcom/android/ex/editstyledtext/EditStyledText$SoftKeyReceiver;,
        Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;,
        Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;,
        Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;,
        Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DEFAULT_FOREGROUND_COLOR:I = -0x1000000

.field public static final DEFAULT_TRANSPARENT_COLOR:I = 0xffffff

.field public static final HINT_MSG_BIG_SIZE_ERROR:I = 0x5

.field public static final HINT_MSG_COPY_BUF_BLANK:I = 0x1

.field public static final HINT_MSG_END_COMPOSE:I = 0x7

.field public static final HINT_MSG_END_PREVIEW:I = 0x6

.field public static final HINT_MSG_NULL:I = 0x0

.field public static final HINT_MSG_PUSH_COMPETE:I = 0x4

.field public static final HINT_MSG_SELECT_END:I = 0x3

.field public static final HINT_MSG_SELECT_START:I = 0x2

.field private static final ID_CLEARSTYLES:I = 0xffff02

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_HIDEEDIT:I = 0xffff04

.field private static final ID_HORIZONTALLINE:I = 0xffff01

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SHOWEDIT:I = 0xffff03

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_STOP_SELECTING_TEXT:I = 0x1020029

.field public static final IMAGECHAR:C = '\ufffc'

.field private static final MAXIMAGEWIDTHDIP:I = 0x12c

.field public static final MODE_ALIGN:I = 0x6

.field public static final MODE_BGCOLOR:I = 0x10

.field public static final MODE_CANCEL:I = 0x12

.field public static final MODE_CLEARSTYLES:I = 0xe

.field public static final MODE_COLOR:I = 0x4

.field public static final MODE_COPY:I = 0x1

.field public static final MODE_CUT:I = 0x7

.field public static final MODE_END_EDIT:I = 0x15

.field public static final MODE_HORIZONTALLINE:I = 0xc

.field public static final MODE_IMAGE:I = 0xf

.field public static final MODE_MARQUEE:I = 0xa

.field public static final MODE_NOTHING:I = 0x0

.field public static final MODE_PASTE:I = 0x2

.field public static final MODE_PREVIEW:I = 0x11

.field public static final MODE_RESET:I = 0x16

.field public static final MODE_SELECT:I = 0x5

.field public static final MODE_SELECTALL:I = 0xb

.field public static final MODE_SHOW_MENU:I = 0x17

.field public static final MODE_SIZE:I = 0x3

.field public static final MODE_START_EDIT:I = 0x14

.field public static final MODE_STOP_SELECT:I = 0xd

.field public static final MODE_SWING:I = 0x9

.field public static final MODE_TELOP:I = 0x8

.field public static final MODE_TEXTVIEWFUNCTION:I = 0x13

.field private static final PRESSED:I = 0x1000011

.field private static final SELECTING:Landroid/text/NoCopySpan$Concrete;

.field public static final STATE_SELECTED:I = 0x2

.field public static final STATE_SELECT_FIX:I = 0x3

.field public static final STATE_SELECT_OFF:I = 0x0

.field public static final STATE_SELECT_ON:I = 0x1

.field private static STR_CLEARSTYLES:Ljava/lang/CharSequence; = null

.field private static STR_HORIZONTALLINE:Ljava/lang/CharSequence; = null

.field private static STR_PASTE:Ljava/lang/CharSequence; = null

.field private static final TAG:Ljava/lang/String; = "EditStyledText"

.field public static final ZEROWIDTHCHAR:C = '\u2060'


# instance fields
.field private mConverter:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

.field private mESTNotifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

.field private mPaddingScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->SELECTING:Landroid/text/NoCopySpan$Concrete;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mPaddingScale:F

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mPaddingScale:F

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mPaddingScale:F

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onRefreshZeoWidthChar()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/ex/editstyledtext/EditStyledText;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getPaddingScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/ex/editstyledtext/EditStyledText;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->dipToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/ex/editstyledtext/EditStyledText;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->finishComposingText()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/ex/editstyledtext/EditStyledText;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText;->notifyStateChanged(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->cancelViewManagers()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->showInsertImageSelectAlertDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/ex/editstyledtext/EditStyledText;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getMaxImageWidthPx()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->showPreview()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/ex/editstyledtext/EditStyledText;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->showMenuAlertDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/ex/editstyledtext/EditStyledText;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getMaxImageWidthDip()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/ex/editstyledtext/EditStyledText;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/ex/editstyledtext/EditStyledText;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->sendHintMessage(I)V

    return-void
.end method

.method private cancelViewManagers()V
    .locals 3

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->cancelViewManager()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dipToPx(I)I
    .locals 4

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mPaddingScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mPaddingScale:F

    :cond_0
    int-to-float v0, p1

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getPaddingScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private finishComposingText()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    # getter for: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$200(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->mTextIsFinishedFlag:Z
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$202(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;Z)Z

    :cond_0
    return-void
.end method

.method private getMaxImageWidthDip()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method private getMaxImageWidthPx()I
    .locals 1

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->dipToPx(I)I

    move-result v0

    return v0
.end method

.method private getPaddingScale()F
    .locals 2

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mPaddingScale:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mPaddingScale:F

    :cond_0
    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mPaddingScale:F

    return v0
.end method

.method private init()V
    .locals 3

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    new-instance v1, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlStandard;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$1;)V

    invoke-direct {v0, p0, p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mConverter:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {v0, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-direct {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextArrowKeyMethod;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private notifyStateChanged(II)V
    .locals 3

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->onStateChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRefreshStyles()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshStyles()V

    return-void
.end method

.method private onRefreshZeoWidthChar()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshZeoWidthChar()V

    return-void
.end method

.method private sendHintMessage(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->sendHintMsg(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->sendOnTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showInsertImageSelectAlertDialog()V
    .locals 3

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->showInsertImageSelectAlertDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method

.method private showMenuAlertDialog()V
    .locals 3

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->showMenuAlertDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method

.method private showPreview()V
    .locals 3

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->showPreview()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method

.method private static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->SELECTING:Landroid/text/NoCopySpan$Concrete;

    const v1, 0x1000011

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Lcom/android/ex/editstyledtext/EditStyledText;->SELECTING:Landroid/text/NoCopySpan$Concrete;

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addAction(ILcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->addAction(ILcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;)V

    return-void
.end method

.method public addEditStyledTextListener(Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInputExtra(ZLjava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onRefreshStyles()V

    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getEditMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    return v0
.end method

.method public getEditStyledTextManager()Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    return-object v0
.end method

.method public getForegroundColor(I)I
    .locals 4

    const/high16 v1, -0x1000000

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v1

    goto :goto_0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mConverter:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->getHtml(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtml(Ljava/util/ArrayList;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mConverter:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->getUriArray(Ljava/util/ArrayList;Landroid/text/Editable;)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mConverter:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-virtual {v0, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->getHtml(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtml(Z)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mConverter:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->getHtml(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mConverter:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->getPreviewHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectState()I
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSelectState()I

    move-result v0

    return v0
.end method

.method public isButtonsFocused()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;

    invoke-interface {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;->isButtonsFocused()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public isEditting()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isEditting()Z

    move-result v0

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isSoftKeyBlocked()Z

    move-result v0

    return v0
.end method

.method public isStyledText()Z
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isStyledText()Z

    move-result v0

    return v0
.end method

.method public onBlockSoftKey()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->blockSoftKey()V

    return-void
.end method

.method public onCancelViewManagers()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCancelViewManagers()V

    return-void
.end method

.method public onClearStyles()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onClearStyles()V

    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$MenuHandler;-><init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$1;)V

    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_HORIZONTALLINE:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    const v1, 0xffff01

    sget-object v2, Lcom/android/ex/editstyledtext/EditStyledText;->STR_HORIZONTALLINE:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isStyledText()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_CLEARSTYLES:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const v1, 0xffff02

    sget-object v2, Lcom/android/ex/editstyledtext/EditStyledText;->STR_CLEARSTYLES:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x1020022

    sget-object v2, Lcom/android/ex/editstyledtext/EditStyledText;->STR_PASTE:Ljava/lang/CharSequence;

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x76

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;Lcom/android/ex/editstyledtext/EditStyledText;)V

    iput-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onEndEdit()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onFixSelectedItem()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onFixSelectedItem()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isButtonsFocused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onEndEdit()V

    goto :goto_0
.end method

.method public onInsertHorizontalLine()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onInsertImage()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onInsertImage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onInsertImage(I)V

    return-void
.end method

.method public onInsertImage(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onInsertImage(Landroid/net/Uri;)V

    return-void
.end method

.method public onResetEdit()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p1, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->mBackgroundColor:I

    invoke-virtual {p0, v1}, Lcom/android/ex/editstyledtext/EditStyledText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;

    invoke-direct {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getBackgroundColor()I

    move-result v2

    iput v2, v0, Lcom/android/ex/editstyledtext/EditStyledText$SavedStyledTextState;->mBackgroundColor:I

    return-object v0
.end method

.method public onStartAction(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(IZ)V

    return-void
.end method

.method public onStartAlign()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartBackgroundColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartCopy()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartCut()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartEdit()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartMarquee()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartPaste()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartSelect()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelect(Z)V

    return-void
.end method

.method public onStartSelectAll()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelectAll(Z)V

    return-void
.end method

.method public onStartShowMenuAlertDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartShowMenuAlertDialog()V

    return-void
.end method

.method public onStartShowPreview()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartSize()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartSwing()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method public onStartTelop()V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->updateSpanNextToCursor(Landroid/text/Editable;III)V

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->updateSpanPreviousFromCursor(Landroid/text/Editable;III)V

    if-le p4, p3, :cond_2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setTextComposingMask(II)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p4, p3, :cond_3

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onFixSelectedItem()V

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void

    :cond_2
    if-ge p3, p4, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetTextComposingMask()V

    goto :goto_0

    :cond_3
    if-ge p4, p3, :cond_1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onAction(I)V

    goto :goto_1
.end method

.method public onTextContextMenuItem(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v0, v1

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartSelectAll()V

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartSelect()V

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->blockSoftKey()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onFixSelectedItem()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartPaste()V

    goto :goto_2

    :sswitch_4
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCopy()V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v3, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelectAll(Z)V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCopy()V

    goto :goto_2

    :sswitch_5
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCut()V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v3, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onStartSelectAll(Z)V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartCut()V

    goto :goto_2

    :sswitch_6
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onInsertHorizontalLine()V

    goto :goto_2

    :sswitch_7
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onClearStyles()V

    goto :goto_2

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    goto :goto_2

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onEndEdit()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0xffff01 -> :sswitch_6
        0xffff02 -> :sswitch_7
        0xffff03 -> :sswitch_8
        0xffff04 -> :sswitch_9
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_5
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_3
        0x1020028 -> :sswitch_1
        0x1020029 -> :sswitch_2
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->isEditting()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onStartEdit()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectState()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey(II)V

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->onCursorMoved()V

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unsetTextComposingMask()V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText;->sendOnTouchEvent(Landroid/view/MotionEvent;)V

    return v3

    :cond_2
    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v4, v2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->showSoftKey(II)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public onUnblockSoftKey()V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->unblockSoftKey()V

    return-void
.end method

.method public removeEditStyledTextListener(Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextNotifier;)V
    .locals 2

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mESTNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setAlignAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->setAlignAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setAlignment(Landroid/text/Layout$Alignment;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const v0, 0xffffff

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/android/ex/editstyledtext/EditStyledText;->onRefreshStyles()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->setBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setColorAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->setColorAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContextMenuStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    sput-object p1, Lcom/android/ex/editstyledtext/EditStyledText;->STR_HORIZONTALLINE:Ljava/lang/CharSequence;

    sput-object p2, Lcom/android/ex/editstyledtext/EditStyledText;->STR_CLEARSTYLES:Ljava/lang/CharSequence;

    sput-object p3, Lcom/android/ex/editstyledtext/EditStyledText;->STR_PASTE:Ljava/lang/CharSequence;

    return-void
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mConverter:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->SetHtml(Ljava/lang/String;)V

    return-void
.end method

.method public setItemColor(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setItemColor(IZ)V

    return-void
.end method

.method public setItemSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setItemSize(IZ)V

    return-void
.end method

.method public setMarquee(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mManager:Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setMarquee(I)V

    return-void
.end method

.method public setMarqueeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->setMarqueeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSizeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mDialog:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->setSizeAlertParams(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStyledTextHtmlConverter(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText;->mConverter:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;

    invoke-virtual {v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->setStyledTextHtmlConverter(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V

    return-void
.end method
