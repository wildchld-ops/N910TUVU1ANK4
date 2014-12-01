.class public Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLEasyCameraSideBar.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# static fields
.field public static final FLASH_BUTTON_POS_X:I

.field public static final FLASH_BUTTON_POS_Y:I

.field public static final HDR_BUTTON_POS_X:I

.field public static final HDR_BUTTON_POS_Y:I

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field public static final MENU_HEIGHT:I

.field public static final MENU_WIDTH:I

.field public static final SWITCH_CAMERA_BUTTON_POS_X:I

.field public static final SWITCH_CAMERA_BUTTON_POS_Y:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mHDRButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f0a0185

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->MENU_WIDTH:I

    const v0, 0x7f0a0186

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->MENU_HEIGHT:I

    const v0, 0x7f0a0195

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->ITEM_WIDTH:I

    const v0, 0x7f0a0196

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->ITEM_HEIGHT:I

    const v0, 0x7f0a0197

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->SWITCH_CAMERA_BUTTON_POS_X:I

    const v0, 0x7f0a0198

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->SWITCH_CAMERA_BUTTON_POS_Y:I

    const v0, 0x7f0a0199

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->FLASH_BUTTON_POS_X:I

    const v0, 0x7f0a019a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->FLASH_BUTTON_POS_Y:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->FLASH_BUTTON_POS_X:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->HDR_BUTTON_POS_X:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->MENU_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->ITEM_HEIGHT:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->HDR_BUTTON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFI)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    new-instance v2, Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->SWITCH_CAMERA_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->SWITCH_CAMERA_BUTTON_POS_Y:I

    int-to-float v5, v5

    const v6, 0x7f020073

    const v7, 0x7f020075

    const v8, 0x7f020074

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/glview/TwGLView;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c010b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setCenterPivot(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setRotateAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0xbc3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v19

    new-instance v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xbc3

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-direct {v8, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/16 v2, 0xbc3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    add-int/lit8 v6, p6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->HDR_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->HDR_BUTTON_POS_Y:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->ITEM_HEIGHT:I

    int-to-float v7, v7

    const/4 v10, 0x6

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mHDRButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mHDRButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0xbc4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v20

    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v2, 0x6

    new-array v2, v2, [I

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mNormal:I

    aput v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mPress:I

    aput v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mDim:I

    aput v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xbc4

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/16 v2, 0xbc4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    add-int/lit8 v6, p6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    new-instance v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->FLASH_BUTTON_POS_X:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->FLASH_BUTTON_POS_Y:I

    int-to-float v13, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->ITEM_WIDTH:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->ITEM_HEIGHT:I

    int-to-float v15, v2

    const/16 v18, 0x6

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mFlashButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ea

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getSwitchCameraButton()Lcom/sec/android/glview/TwGLButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    return-object v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onCameraModeChangeSelected()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mSwitchCameraButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEasyCameraSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method
