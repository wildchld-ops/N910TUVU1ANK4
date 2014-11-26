.class public Lcom/sec/android/app/camera/subview/SubViewBaseMenu;
.super Lcom/sec/android/app/camera/subview/SubViewBase;
.source "SubViewBaseMenu.java"


# static fields
.field private static final BASE_BUTTONS_POS:[Landroid/graphics/PointF;

.field private static final BENDEDUI_SHUTTER_BUTTON_MOVING_THRESHOLD:F = 100.0f

.field private static final MODE_BUTTON:I = 0x2

.field private static final RECORDING_BUTTON:I = 0x1

.field private static final SHUTTER_BUTTON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SubViewBaseMenu"

.field private static mButtonVisibility:[I


# instance fields
.field private mCameraBaseMenu:Landroid/view/ViewGroup;

.field private mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

.field private mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

.field private mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

.field private mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

.field private mInitTouchPoint:Landroid/graphics/PointF;

.field private mModeBtnResIds:[I

.field private mModeButton:Landroid/widget/ImageView;

.field private mModeTextDimImageResId:I

.field private mModeTextImageResId:I

.field private mModeTextPressImageResId:I

.field private final mRecordingBtnResIds:[I

.field private mRecordingButton:Landroid/widget/ImageView;

.field private final mShutterBtnResIds:[I

.field private mShutterButton:Landroid/widget/ImageView;

.field private mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

.field mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/high16 v5, 0x44c80000

    const/high16 v4, 0x448c0000

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->BASE_BUTTONS_POS:[Landroid/graphics/PointF;

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mButtonVisibility:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x4
        0x4
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # Lcom/sec/android/app/camera/subview/SubViewManager;

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/subview/SubViewBase;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/subview/SubViewManager;)V

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    iput v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mInitTouchPoint:Landroid/graphics/PointF;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterBtnResIds:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingBtnResIds:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeBtnResIds:[I

    new-instance v0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu$1;-><init>(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->initialize()V

    return-void

    :array_0
    .array-data 4
        0x7f02024d
        0x7f020319
        0x7f020318
    .end array-data

    :array_1
    .array-data 4
        0x7f020252
        0x7f020274
        0x7f020273
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/graphics/PointF;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mInitTouchPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/subview/SubViewBaseMenu;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/sec/android/app/camera/subview/SubViewBaseMenu;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getCurrentLocaleModeText()V
    .locals 10

    const v4, 0x7f02013d

    const v9, 0x10100a7

    const v8, 0x101009e

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f020275

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020277

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020276

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    const-string v3, "as"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f02012b

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02012d

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02012c

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    :cond_0
    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    if-eqz v3, :cond_1

    new-array v3, v7, [I

    aput v9, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v7, [I

    aput v9, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020269

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    if-eqz v3, :cond_2

    new-array v3, v7, [I

    aput v8, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v7, [I

    aput v8, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020267

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    if-eqz v3, :cond_3

    new-array v3, v6, [I

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v3, v6, [I

    iget-object v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020268

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeBtnResIds:[I

    iget v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    aput v4, v3, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeBtnResIds:[I

    iget v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    aput v4, v3, v7

    iget-object v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeBtnResIds:[I

    const/4 v4, 0x2

    iget v5, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    aput v5, v3, v4

    return-void

    :cond_5
    const-string v3, "bn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f020134

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020136

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020135

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_6
    const-string v3, "az"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "sq"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "uz"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const v3, 0x7f02012e

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020130

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02012f

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_8
    const-string v3, "bg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ru"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "ky"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    const v3, 0x7f020137

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020139

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020138

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_a
    const-string v3, "cs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "sr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "sk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    iput v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02013f

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02013e

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_c
    const-string v3, "da"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const v3, 0x7f020140

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020142

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020141

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_d
    const-string v3, "de"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "no"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "nb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    const v3, 0x7f020158

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02015a

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020159

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_f
    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const v3, 0x7f020146

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020148

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020147

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_10
    const-string v3, "et"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const v3, 0x7f020149

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02014b

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02014a

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_11
    const-string v3, "eu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const v3, 0x7f020131

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020133

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020132

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_12
    const-string v3, "fa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const v3, 0x7f02014c

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02014e

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02014d

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_13
    const-string v3, "fi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const v3, 0x7f02014f

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020151

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020150

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_14
    const-string v3, "ga"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const v3, 0x7f020173

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020175

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020174

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_15
    const-string v3, "gl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "pt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "it"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "es"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const v3, 0x7f020152

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020154

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020153

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_17
    const-string v3, "gu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const v3, 0x7f02015e

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020160

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02015f

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_18
    const-string v3, "he"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    const-string v3, "iw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    const v3, 0x7f020164

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020166

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020165

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1a
    const-string v3, "hi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "mr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "ne"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    const v3, 0x7f020167

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020169

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020168

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1c
    const-string v3, "hr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const v3, 0x7f0201a3

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201a5

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201a4

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1d
    const-string v3, "hy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const v3, 0x7f020128

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02012a

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020129

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1e
    const-string v3, "ja"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const v3, 0x7f020176

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020178

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020177

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_1f
    const-string v3, "ka"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const v3, 0x7f020155

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020157

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020156

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_20
    const-string v3, "km"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const v3, 0x7f02017f

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020181

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020180

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_21
    const-string v3, "kn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const v3, 0x7f020179

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02017b

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02017a

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_22
    const-string v3, "ko"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const v3, 0x7f020182

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020184

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020183

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_23
    const-string v3, "lo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const v3, 0x7f020185

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020187

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020186

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_24
    const-string v3, "lt"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const v3, 0x7f020188

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02018a

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020189

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_25
    const-string v3, "lv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iput v4, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02013f

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02013e

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_26
    const-string v3, "mk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const v3, 0x7f02018b

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02018d

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02018c

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_27
    const-string v3, "ml"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const v3, 0x7f020191

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020193

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020192

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_28
    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "tr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "ro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :cond_29
    const v3, 0x7f02018e

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020190

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02018f

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2a
    const-string v3, "my"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const v3, 0x7f020194

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020196

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020195

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2b
    const-string v3, "nl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const v3, 0x7f020143

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020145

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020144

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2c
    const-string v3, "or"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const v3, 0x7f020197

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020199

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020198

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2d
    const-string v3, "pa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const v3, 0x7f02019d

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02019f

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02019e

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2e
    const-string v3, "pl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const v3, 0x7f02019a

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02019c

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02019b

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_2f
    const-string v3, "sl"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const v3, 0x7f0201a3

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201a5

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201a4

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_30
    const-string v3, "sv"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const v3, 0x7f0201a6

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201a8

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201a7

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_31
    const-string v3, "ta"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const v3, 0x7f0201af

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201b1

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201b0

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_32
    const-string v3, "te"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const v3, 0x7f0201b2

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201b4

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201b3

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_33
    const-string v3, "th"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const v3, 0x7f0201b5

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201b7

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201b6

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_34
    const-string v3, "vi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const v3, 0x7f0201bb

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201bd

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201bc

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_35
    const-string v3, "zh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const v3, 0x7f02013a

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02013c

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02013b

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_36
    const-string v3, "ar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    const-string v3, "ur"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_37
    const v3, 0x7f020125

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020127

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020126

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_38
    const-string v3, "el"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    const v3, 0x7f02015b

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02015d

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02015c

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_39
    const-string v3, "ha"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const v3, 0x7f020161

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020163

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020162

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3a
    const-string v3, "hu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const v3, 0x7f02016a

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02016c

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02016b

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3b
    const-string v3, "is"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const v3, 0x7f02016d

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02016f

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02016e

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3c
    const-string v3, "ig"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const v3, 0x7f020170

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f020172

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f020171

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3d
    const-string v3, "kk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const v3, 0x7f02017c

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f02017e

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f02017d

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3e
    const-string v3, "si"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const v3, 0x7f0201a0

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201a2

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201a1

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_3f
    const-string v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const v3, 0x7f0201a9

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201ab

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201aa

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_40
    const-string v3, "uk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const v3, 0x7f0201b8

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201ba

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201b9

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0

    :cond_41
    const-string v3, "yo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0201be

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextImageResId:I

    const v3, 0x7f0201c0

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextPressImageResId:I

    const v3, 0x7f0201bf

    iput v3, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeTextDimImageResId:I

    goto/16 :goto_0
.end method

.method private translateMenu()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->BASE_BUTTONS_POS:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mLastOrientation:I

    div-int/lit8 v2, v2, 0x5a

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->clear()V

    iput-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->clear()V

    return-void
.end method

.method public getBaseIndicators()Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    return-object v0
.end method

.method public getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEditableSideBar(I)Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;
    .locals 1
    .param p1    # I

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x75

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->getEditableSideBar()Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    goto :goto_0
.end method

.method public handleDimButtons()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "SubViewBaseMenu"

    const-string v1, "handleDimButtons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mbFocused:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getDim(I)Z

    move-result v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterBtnResIds:[I

    invoke-virtual {p0, v0, v3, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->setImageresource(Landroid/widget/ImageView;Z[I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getDim(I)Z

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingBtnResIds:[I

    invoke-virtual {p0, v0, v3, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->setImageresource(Landroid/widget/ImageView;Z[I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getDim(I)Z

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeBtnResIds:[I

    invoke-virtual {p0, v0, v3, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->setImageresource(Landroid/widget/ImageView;Z[I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->handleDimButtons()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->handleDimButtons()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterBtnResIds:[I

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->setImageresource(Landroid/widget/ImageView;Z[I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingBtnResIds:[I

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->setImageresource(Landroid/widget/ImageView;Z[I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getCurrentLocaleModeText()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_3
.end method

.method public handleDimButtons(Z)V
    .locals 4
    .param p1    # Z

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mbFocused:Z

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterBtnResIds:[I

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->setImageresource(Landroid/widget/ImageView;Z[I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingBtnResIds:[I

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->setImageresource(Landroid/widget/ImageView;Z[I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeBtnResIds:[I

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->setImageresource(Landroid/widget/ImageView;Z[I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->handleDimButtons(Z)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->handleDimButtons()V

    goto :goto_0
.end method

.method public hideBaseMenu()V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->hideSideBar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public hideBaseMenuForBestShot()V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->hideSideBar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public hideBaseMenuForEditQuickSettings()V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->hideSideBarForEditQuickSettings()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public hideBaseMenuForRecording()V
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->hideSideBar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public hideBaseMenuForShootingMode()V
    .locals 2

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->hideSideBar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public initLayout()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mBaseLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    const v1, 0x7f0f004c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    const v1, 0x7f0f004b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    const v1, 0x7f0f004a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSubViewOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getCurrentLocaleModeText()V

    :cond_3
    return-void
.end method

.method public initialize()V
    .locals 2

    const-string v0, "SubViewBaseMenu"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->initLayout()V

    return-void
.end method

.method public isShutterPressed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public onHide()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->hideBaseMenu()V

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onHide()V

    return-void
.end method

.method public onRestoreLayoutStatus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mButtonVisibility:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mButtonVisibility:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mButtonVisibility:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onSaveLayoutStatus()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mButtonVisibility:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    aput v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mButtonVisibility:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    aput v2, v0, v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mButtonVisibility:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    aput v2, v0, v1

    :cond_2
    return-void
.end method

.method public onShow()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->showBaseMenu()V

    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method

.method public refreshShortcutMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->refreshShortcutMenu()V

    :cond_0
    return-void
.end method

.method public resetCameraSideBar()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mbFocused:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onHide()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initEditableShortcut()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->refreshShortcutMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onShow()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onHide()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initEditableShortcut()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->refreshShortcutMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mEasyModeSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onShow()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onHide()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initEditableShortcut()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->refreshShortcutMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onShow()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->isShown()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mFrontSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onHide()V

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initLayout()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->initEditableShortcut()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->refreshShortcutMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mSideBar:Lcom/sec/android/app/camera/subview/SubViewSideBar;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->onShow()V

    goto/16 :goto_0
.end method

.method public rotateLayout()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->onSaveLayoutStatus()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->initLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->rotateLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->setOrientation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mIndicators:Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewBaseIndicators;->rotateLayout()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->handleDimButtons()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->onRestoreLayoutStatus()V

    return-void
.end method

.method public rotateMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->translateMenu()V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->rotateImagesOnLandscape(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->rotateImagesOnLandscape(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->rotateImagesOnLandscape(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mOrientationMainLCD:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->setFixedOrientation(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->setLastOrientation(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->rotateMenu()V

    :cond_0
    return-void
.end method

.method public setShutterBtnPressed(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    :cond_0
    return-void
.end method

.method public showBaseMenu()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->showSideBar()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mbLandscapeMode:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->rotateMenu()V

    :cond_4
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method

.method public showBaseMenuForEditQuickSettings()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->getSideBar()Lcom/sec/android/app/camera/subview/SubViewSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/subview/SubViewSideBar;->showSideBarForEditQuickSettings()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mShutterButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mRecordingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mModeButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/subview/SubViewBase;->onShow()V

    return-void
.end method

.method public translateMenu2()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->BASE_BUTTONS_POS:[Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mLastOrientation:I

    div-int/lit8 v2, v2, 0x5a

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x44be0000

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v0, p0, Lcom/sec/android/app/camera/subview/SubViewBaseMenu;->mCameraBaseMenu:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method
