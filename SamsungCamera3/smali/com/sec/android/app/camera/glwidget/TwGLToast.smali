.class public Lcom/sec/android/app/camera/glwidget/TwGLToast;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;
    }
.end annotation


# static fields
.field private static DEFAULT_PADDING:I = 0x0

.field private static final DEFAULT_PADDING_LEFT_RIGHT:I

.field private static final DEFAULT_PADDING_UP_DOWN:I

.field private static final DEFAULT_TEXT_MAX_WIDTH:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field public static final TOAST_LENGTH_HALF:I = 0xbb8

.field public static final TOAST_LENGTH_INFINITE:I = -0x1

.field public static final TOAST_LENGTH_LONG:I = 0x1388

.field public static final TOAST_LENGTH_SHORT:I = 0x5dc


# instance fields
.field private mAnimationEnable:Z

.field private mDuration:I

.field private mH_Align:I

.field private mHideToast:Ljava/lang/Runnable;

.field private mMax_Width:I

.field private mMessage:Lcom/sec/android/glview/TwGLStringTexture;

.field private mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

.field private mParentView:Lcom/sec/android/glview/TwGLView;

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:I

.field private mV_Align:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f0a0006

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_WIDTH:I

    const v0, 0x7f0a0007

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_HEIGHT:I

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    const v0, 0x7f0a0342

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    const v0, 0x7f0a0343

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;I)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # I

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;II)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # I
    .param p3    # I

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;III)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IIII)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;IIIII)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-static {p2}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # Ljava/lang/String;

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;I)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;II)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;III)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;Ljava/lang/String;IIII)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLContext;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I

    const/16 v2, 0xd7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    const v0, 0x7f0b0037

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_TEXT_MAX_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    iput p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->initContent()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLToast;)Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/glwidget/TwGLToast;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    return-object v0
.end method

.method private declared-synchronized initContent()V
    .locals 17

    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v16, v1, v2

    iget v1, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v15, v1, v2

    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    int-to-float v4, v4

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v15

    const/4 v7, 0x2

    const/4 v8, 0x2

    const-string v9, ""

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;FI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setDynamicHeight(F)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    const v1, 0x7f0204eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setNinePatchBackground(I)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setToastAlign(II)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updateContent()V
    .locals 17

    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v16, v1, v2

    iget v1, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v15, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    int-to-float v4, v4

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v15

    const/4 v7, 0x2

    const/4 v8, 0x2

    const-string v9, ""

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/sec/android/glview/TwGLStringTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIILjava/lang/String;FIZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLStringTexture;->setText(Ljava/lang/String;FI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMax_Width:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLStringTexture;->setDynamicHeight(F)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_LEFT_RIGHT:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mMessage:Lcom/sec/android/glview/TwGLStringTexture;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->DEFAULT_PADDING_UP_DOWN:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->setToastAlign(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    return-void
.end method

.method public hide()V
    .locals 3

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    invoke-interface {v0, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;->onToastDisplay(Lcom/sec/android/app/camera/glwidget/TwGLToast;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOffAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;Z)V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    invoke-interface {v0, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;->onToastDisplay(Lcom/sec/android/app/camera/glwidget/TwGLToast;I)V

    goto :goto_0
.end method

.method public setAnimationEnable(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    return-void
.end method

.method public setOnToastDisplayListener(Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    return-void
.end method

.method public setParentView(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    return-void
.end method

.method public setText(I)V
    .locals 1
    .param p1    # I

    invoke-static {p1}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    return-void
.end method

.method public setText(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    invoke-static {p1}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    return-void
.end method

.method public setText(III)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-static {p1}, Lcom/sec/android/glview/TwGLContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    return-void
.end method

.method public setText(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mText:Ljava/lang/String;

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextSize:I

    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mTextColor:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast;->updateContent()V

    return-void
.end method

.method public setToastAlign(II)V
    .locals 11
    .param p1    # I
    .param p2    # I

    const/high16 v10, 0x40000000

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLToast;->SCREEN_HEIGHT:I

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v8

    float-to-int v4, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mParentView:Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v8

    float-to-int v3, v8

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mH_Align:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mV_Align:I

    packed-switch v8, :pswitch_data_1

    :goto_1
    const/4 v8, 0x0

    int-to-float v9, v0

    int-to-float v10, v5

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    const/4 v8, 0x1

    int-to-float v9, v7

    int-to-float v10, v2

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    const/4 v8, 0x3

    int-to-float v9, v6

    int-to-float v10, v1

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    return-void

    :pswitch_1
    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v0, v8

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v2, v8

    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v1, v8

    goto :goto_0

    :pswitch_2
    div-int/lit8 v8, v3, 0x5

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v5, v8

    mul-int/lit8 v8, v4, 0x6

    div-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    mul-int/lit8 v8, v4, 0x2

    div-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    goto :goto_1

    :pswitch_3
    div-int/lit8 v8, v3, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v5, v8

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    goto :goto_1

    :pswitch_4
    mul-int/lit8 v8, v3, 0x4

    div-int/lit8 v8, v8, 0x5

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v5, v8

    mul-int/lit8 v8, v4, 0x2

    div-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    mul-int/lit8 v8, v4, 0x6

    div-int/lit8 v8, v8, 0x8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v9

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public show()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mHideToast:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mAnimationEnable:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLToast$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLToast$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLToast;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    :goto_1
    invoke-virtual {p0, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLToast;->mOnToastDisplayListener:Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;

    invoke-interface {v0, p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLToast$OnToastDisplayListener;->onToastDisplay(Lcom/sec/android/app/camera/glwidget/TwGLToast;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_1
.end method
