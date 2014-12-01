.class public Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLHelpPopup.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_HEIGHT:I

.field private static final LIST_ITEM_WIDTH:I

.field private static final LIST_TOP_PADDING:I

.field private static final POPUP_HEIGHT:I

.field private static final POPUP_PORTRAIT_HEIGHT:I

.field private static final POPUP_PORTRAIT_POS_X:I

.field private static final POPUP_PORTRAIT_POS_Y:I

.field private static final POPUP_PORTRAIT_WIDTH:I

.field private static final POPUP_POS_X:I

.field private static final POPUP_POS_Y:I

.field public static final POPUP_TIMEOVER:I = 0x2710

.field private static final POPUP_WIDTH:I

.field private static final TITLE_CLOSE_LEFT_PADDING:I

.field private static final TITLE_CLOSE_POS_Y:I

.field private static final TITLE_CLOSE_WIDTH:I

.field private static final TITLE_HEIGHT:I

.field private static final TITLE_LEFT_PADDING:I

.field private static final TITLE_TEXT_COLOR:I

.field private static TITLE_TEXT_HEIGHT:I

.field private static final TITLE_TEXT_HEIGHT_SEA:I

.field private static final TITLE_TEXT_SIZE:F

.field private static final TITLE_TOP_PADDING:I


# instance fields
.field private mCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mDescriptionIconResId:I

.field private mDescriptionType:I

.field private mHasListTopBottomPadding:Z

.field private mHelpDescriptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHelpListSize:I

.field private mHelpSubTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideDescription:Ljava/lang/Runnable;

.field private mIsPopupTimeOut:Z

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mListContentHeight:I

.field private mMenuTitle:Ljava/lang/String;

.field private mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

.field private mShareshotItemStringId:I

.field private mTitle:Lcom/sec/android/glview/TwGLText;

.field private mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mTitleWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a028e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_X:I

    const v0, 0x7f0a028f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    const v0, 0x7f0a0290

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    const v0, 0x7f0a0291

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    const v0, 0x7f0a029b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_X:I

    const v0, 0x7f0a029c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_Y:I

    const v0, 0x7f0a029d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    const v0, 0x7f0a029e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    const v0, 0x7f0a0292

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    const v0, 0x7f0a0293

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    const v0, 0x7f0a0294

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT_SEA:I

    const v0, 0x7f0a0295

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    const v0, 0x7f0a0296

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TOP_PADDING:I

    const v0, 0x7f0b0057

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_SIZE:F

    const v0, 0x7f09000b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_COLOR:I

    const v0, 0x7f0a0297

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_POS_Y:I

    const v0, 0x7f0a0298

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    const v0, 0x7f0a0299

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_WIDTH:I

    const v0, 0x7f0a029f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_HEIGHT:I

    const v0, 0x7f0a029a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_TOP_PADDING:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionIconResId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHasListTopBottomPadding:Z

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->iniResources(I)V

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->isSEALanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT_SEA:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    :cond_0
    new-instance v0, Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLTitleDecorator;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p2}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v10

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TOP_PADDING:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setShadowVisibility(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    add-int/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f02004e

    const v7, 0x7f02004f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v1, 0xbcc

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->setTitle(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_TOP_PADDING:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setScrollBarResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$TwGLHelpPopupListAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLTitleDecorator;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/glview/TwGLUtil;->getFadeAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->get(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_Y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->LIST_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/glview/TwGLList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpListSize:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHasListTopBottomPadding:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionIconResId:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public getDescriptionType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    return v0
.end method

.method public getMenuTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDescriptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSubTitleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public iniResources(I)V
    .locals 18

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c01e0

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e1

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    const-string v12, "zh"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "CN"

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Ljava/util/Locale;

    const-string v13, "zh"

    const-string v14, "CN"

    invoke-direct {v12, v13, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :cond_1
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const/high16 v12, 0x7f080000

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    array-length v4, v5

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v5, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v12, v4, -0x1

    if-ge v3, v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v12, Ljava/util/Locale;

    const-string v13, "en"

    invoke-direct {v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v12, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    :cond_4
    const-string v12, "pt-BR"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v11, 0x0

    new-instance v11, Ljava/util/Locale;

    const/4 v12, 0x0

    aget-object v12, v9, v12

    const/4 v13, 0x1

    aget-object v13, v9, v13

    invoke-direct {v11, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v11, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    :cond_5
    new-instance v12, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v10, v13, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v12, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v12, 0x7f080001

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    array-length v4, v6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v13, v6, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v12, v4, -0x1

    if-ge v3, v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v12, 0x0

    invoke-virtual {v8, v1, v12}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e2

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c01e4

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e5

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e6

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e7

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e8

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01eb

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v13}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c01ec

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x78

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01ed

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01ee

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c00e7

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01ef

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c01e4

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e5

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e6

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e7

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01e8

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c01f0

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v12

    if-eqz v12, :cond_9

    const v12, 0x7f0c01f3

    :goto_4
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01f1

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01f4

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01f5

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :cond_9
    const v12, 0x7f0c01f2

    goto :goto_4

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c01f0

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v12

    if-eqz v12, :cond_a

    const v12, 0x7f0c01f3

    :goto_5
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01f1

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01f4

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01f5

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :cond_a
    const v12, 0x7f0c01f2

    goto :goto_5

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c01f0

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->isChinaFeature()Z

    move-result v12

    if-eqz v12, :cond_b

    const v12, 0x7f0c01f3

    :goto_6
    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01f1

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mShareshotItemStringId:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :cond_b
    const v12, 0x7f0c01f2

    goto :goto_6

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0115

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v15, 0x7f0c0141

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v15, 0x7f0c01f8

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0116

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0202

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0119

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01f9

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0113

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01fa

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c00fc

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01fb

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c00fd

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01fc

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0111

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01fd

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0100

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c01fe

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v13, 0x7f0c0101

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuTitle:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpSubTitleList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHelpDescriptionList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v14, 0x7f0c0200

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mDescriptionType:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xbc7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_5
        :pswitch_6
        :pswitch_e
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public isPopupTimeOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_0
    return v1
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getFirstFullyVisibleViewIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xbcc
        :pswitch_0
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 6

    const/4 v1, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setWidth(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->getContentHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->setWidth(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->getContentHeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    :goto_2
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_LEFT_PADDING:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_CLOSE_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitle:Lcom/sec/android/glview/TwGLText;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mTitleWidth:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v0, v5}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mListContentHeight:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mList:Lcom/sec/android/glview/TwGLList;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->TITLE_HEIGHT:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getPaddings()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLList;->setSize(FF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mMenuWrapper:Lcom/sec/android/glview/TwGLTitleDecorator;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->POPUP_PORTRAIT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v1, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showWaitingAnimation()V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isScreenReaderActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->isTalkbackPaused()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mIsPopupTimeOut:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpPopup;->mHideDescription:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
