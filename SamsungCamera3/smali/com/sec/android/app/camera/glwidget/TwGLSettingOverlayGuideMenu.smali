.class public Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLSettingOverlayGuideMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final GUIDE_BUTTON_FONT_SIZE:F

.field private static final GUIDE_BUTTON_HEIGHT:F

.field private static final GUIDE_BUTTON_WIDTH:F

.field private static final GUIDE_BUTTON_X:F

.field private static final GUIDE_BUTTON_X_PORT:F

.field private static final GUIDE_BUTTON_Y:F

.field private static final GUIDE_BUTTON_Y_PORT:F

.field private static final GUIDE_IMAGE_HEIGHT:I

.field private static final GUIDE_IMAGE_WIDTH:I

.field private static final GUIDE_IMAGE_X:I

.field private static final GUIDE_IMAGE_X_PORT:I

.field private static final GUIDE_IMAGE_Y:I

.field private static final GUIDE_IMAGE_Y_PORT:I

.field private static final GUIDE_TEXT_FONT_SIZE:F

.field private static final GUIDE_TEXT_HEIGHT:I

.field private static final GUIDE_TEXT_HEIGHT_PORT:I

.field private static final GUIDE_TEXT_WIDTH:I

.field private static final GUIDE_TEXT_WIDTH_PORT:I

.field private static final GUIDE_TEXT_X:F

.field private static final GUIDE_TEXT_X_PORT:F

.field private static final GUIDE_TEXT_Y:F

.field private static final GUIDE_TEXT_Y_PORT:F

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I

.field protected static final TAG:Ljava/lang/String; = "TwGLSettingOverlayGuideMenu"


# instance fields
.field private mCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mGuideImage:Lcom/sec/android/glview/TwGLImage;

.field private mGuideText:Lcom/sec/android/glview/TwGLText;

.field private mOrientation:I

.field private mOverlayGuideBackgroundImage:Lcom/sec/android/glview/TwGLRectangle;

.field private mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a0002

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_WIDTH:I

    const v0, 0x7f0a0003

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_HEIGHT:I

    const v0, 0x7f0a0442

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_WIDTH:I

    const v0, 0x7f0a0443

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_HEIGHT:I

    const v0, 0x7f0a0444

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_X:I

    const v0, 0x7f0a0445

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_Y:I

    const v0, 0x7f0a0446

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_X_PORT:I

    const v0, 0x7f0a0447

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_Y_PORT:I

    const v0, 0x7f0a0448

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_WIDTH:I

    const v0, 0x7f0a0449

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_HEIGHT:I

    const v0, 0x7f0a044a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_WIDTH_PORT:I

    const v0, 0x7f0a044b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_HEIGHT_PORT:I

    const v0, 0x7f0a044c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_X:F

    const v0, 0x7f0a044d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_Y:F

    const v0, 0x7f0a044e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_X_PORT:F

    const v0, 0x7f0a044f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_Y_PORT:F

    const v0, 0x7f0a0450

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_FONT_SIZE:F

    const v0, 0x7f0a0451

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_WIDTH:F

    const v0, 0x7f0a0452

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_HEIGHT:F

    const v0, 0x7f0a0453

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_X:F

    const v0, 0x7f0a0454

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_Y:F

    const v0, 0x7f0a0455

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_X_PORT:F

    const v0, 0x7f0a0456

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_Y_PORT:F

    const v0, 0x7f0a0457

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_FONT_SIZE:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 7

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    invoke-static {}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOrientation:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TwGLSettingOverlayGuideMenu"

    const-string v1, "Clear"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOverlayGuideBackgroundImage:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOverlayGuideBackgroundImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOverlayGuideBackgroundImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOverlayGuideBackgroundImage:Lcom/sec/android/glview/TwGLRectangle;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    :cond_4
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public initSettingOverlayGuide()V
    .locals 10

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f090027

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v6

    const/high16 v7, 0x3f800000

    const/4 v8, 0x3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOverlayGuideBackgroundImage:Lcom/sec/android/glview/TwGLRectangle;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_Y:I

    int-to-float v3, v3

    const v4, 0x7f020451

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_X_PORT:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_Y_PORT:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_X:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_Y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_X_PORT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_HEIGHT:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_Y_PORT:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v7, 0x7f0c021a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_FONT_SIZE:F

    const v8, 0x7f090006

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-static {}, Lcom/sec/android/app/camera/Util;->getRobotoLightFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setTextFont(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_HEIGHT_PORT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_X_PORT:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_Y_PORT:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_X:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_X_PORT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_Y_PORT:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->setAlignForOrientation()V

    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_Y:F

    const v4, 0x7f02044f

    const v5, 0x7f02044f

    const v6, 0x7f02044f

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0c0142

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_FONT_SIZE:F

    const v3, 0x7f090006

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLButton;->setText(Ljava/lang/String;FIZ)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_HEIGHT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_X_PORT:F

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_Y_PORT:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_WIDTH:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_IMAGE_X:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_Y:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x3

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_X_PORT:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_BUTTON_Y_PORT:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOverlayGuideBackgroundImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void
.end method

.method public onBack()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    return-void
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSettingOverlayHelpDialog(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideSettingOverlayHelpDialog()V

    :cond_0
    return v1
.end method

.method protected onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOrientation:I

    const-string v0, "TwGLSettingOverlayGuideMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->setAlignForOrientation()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method protected onShow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mSettingOverlayGuide:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "TwGLSettingOverlayGuideMenu"

    const-string v1, "onTouch"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public setAlignForOrientation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020451

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020452

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020453

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_WIDTH_PORT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_HEIGHT_PORT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideImage:Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f020456

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_WIDTH_PORT:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingOverlayGuideMenu;->GUIDE_TEXT_HEIGHT_PORT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
