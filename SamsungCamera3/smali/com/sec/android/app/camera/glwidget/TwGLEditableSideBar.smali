.class public Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLEditableSideBar.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;


# static fields
.field public static final ANCHOR_HEIGHT:I

.field public static final ANCHOR_POS_X:I

.field public static final ANCHOR_POS_Y:I

.field public static final ANCHOR_POS_Y_OFFSET:I

.field public static final ANCHOR_WIDTH:I

.field public static final DRAGBOX_FIRST_BOX_POS_Y:I

.field public static final DRAGBOX_ITEM_HEIGHT:I

.field public static final DRAGBOX_ITEM_WIDTH:I

.field public static final DRAGBOX_POS_X:I

.field public static final DRAGBOX_SIDE_MARGIN:I

.field public static final EDITABLE_AREA_POS_X:I

.field public static final EDITABLE_AREA_POS_Y:I

.field public static final EFFECT_ANCHOR_HEIGHT:I

.field public static final EFFECT_ANCHOR_WIDTH:I

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_POS_X:I

.field public static final ITEM_POS_Y:I

.field public static final ITEM_WIDTH:I

.field public static final MAX_NUMBER_OF_SIDEBAR_ITEM:I

.field public static final MENU_HEIGHT:I

.field public static final MENU_WIDTH:I

.field private static final RELOCATEITEM_ANIMATION_DURATION:I = 0xc8

.field public static final SETTING_BUTTON_POS_X:I

.field public static final SETTING_BUTTON_POS_Y:I

.field public static final SIDEBAR_BOUNDARY_LINE:I

.field public static final SWITCH_CAMERA_BUTTON_POS_X:I

.field public static final SWITCH_CAMERA_BUTTON_POS_Y:I

.field private static final TAG:Ljava/lang/String; = "TwGLEditableSideBar"


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandId:I

.field private mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

.field private mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field private mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

.field mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

.field private mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

.field private mIsLaunchSettingMenuByDragStartSideBarItem:Z

.field private mIsLocatedInSideBar:Z

.field private mItemAnchorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

.field private mNeedToRemoveBox:Z

.field private mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

.field private mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

.field private mTempAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mzOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f0a0185

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_WIDTH:I

    const v0, 0x7f0a0186

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_HEIGHT:I

    const v0, 0x7f0a0187

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EDITABLE_AREA_POS_X:I

    const v0, 0x7f0a0188

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EDITABLE_AREA_POS_Y:I

    const v0, 0x7f0a0017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_WIDTH:I

    const v0, 0x7f0a0018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_HEIGHT:I

    const v0, 0x7f0a0189

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_POS_X:I

    const v0, 0x7f0a018a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_POS_Y:I

    const v0, 0x7f0a018b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_WIDTH:I

    const v0, 0x7f0a018c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    const v0, 0x7f0a018d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_POS_X:I

    const v0, 0x7f0a018e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_FIRST_BOX_POS_Y:I

    const v0, 0x7f0a0193

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_SIDE_MARGIN:I

    const v0, 0x7f0a02f5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SIDEBAR_BOUNDARY_LINE:I

    const v0, 0x7f0a018f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SWITCH_CAMERA_BUTTON_POS_X:I

    const v0, 0x7f0a0190

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SWITCH_CAMERA_BUTTON_POS_Y:I

    const v0, 0x7f0a0191

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SETTING_BUTTON_POS_X:I

    const v0, 0x7f0a0192

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SETTING_BUTTON_POS_Y:I

    const v0, 0x7f0b003b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MAX_NUMBER_OF_SIDEBAR_ITEM:I

    const v0, 0x7f0a0030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_WIDTH:I

    const v0, 0x7f0a0031

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_HEIGHT:I

    const v0, 0x7f0a0033

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_WIDTH:I

    const v0, 0x7f0a0034

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_HEIGHT:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_POS_X:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_WIDTH:I

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_X:I

    const v0, 0x7f0a0035

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_Y:I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_Y_OFFSET:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFII)V
    .locals 21

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mzOrder:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mCommandId:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mCommandId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->initSideBarItemList()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v20

    new-instance v8, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

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

    const/16 v4, 0x24

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v20

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-direct {v8, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/16 v2, 0x24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mzOrder:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SWITCH_CAMERA_BUTTON_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SWITCH_CAMERA_BUTTON_POS_Y:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_HEIGHT:I

    int-to-float v7, v7

    const/4 v10, 0x2

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v3, 0x1c21

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v19

    new-instance v16, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

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

    const/16 v4, 0x1c21

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, v19

    iget v4, v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    aput v4, v2, v3

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;-><init>([I)V

    const/16 v2, 0x1c21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mzOrder:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v17

    new-instance v10, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SETTING_BUTTON_POS_X:I

    int-to-float v12, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SETTING_BUTTON_POS_Y:I

    int-to-float v13, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_WIDTH:I

    int-to-float v14, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_HEIGHT:I

    int-to-float v15, v2

    const/16 v18, 0x2

    invoke-direct/range {v10 .. v18}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/glview/TwGLView;->setHoverPopupOffset(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    const/16 v3, 0x5351

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setHoverPopupGravity(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->refreshAnchors()V

    return-void
.end method


# virtual methods
.method public addEmptyItem(FF)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MAX_NUMBER_OF_SIDEBAR_ITEM:I

    if-lt v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->makeDragBox()Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    float-to-int v2, p2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->coordiYtoCellPosition(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const v5, 0x7f020311

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->relocateItem()V

    goto :goto_0
.end method

.method public coordiYtoCellPosition(I)I
    .locals 2

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_HEIGHT:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    div-int v0, p1, v0

    return v0
.end method

.method public getFavoriteSettingsMenu()Lcom/sec/android/app/camera/MenuBase;
    .locals 8

    const/16 v2, 0x1c21

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    return-object v1
.end method

.method public getNumberOfEditableSideBarItem()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingButton()Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    return-object v0
.end method

.method public getSwitchCameraButton()Lcom/sec/android/app/camera/glwidget/TwGLItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    return-object v0
.end method

.method public hideCameraSideBarForBendedUI()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSwitchCameraButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingButton:Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->setEditableSideBarVisibility(I)V

    return-void
.end method

.method public indexOf(I)I
    .locals 5

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    :cond_1
    return v3
.end method

.method public initSideBarItemList()V
    .locals 23

    const/4 v2, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    if-lez v3, :cond_0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_HEIGHT:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_SIDE_MARGIN:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int v20, v3, v4

    :cond_0
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_FIRST_BOX_POS_Y:I

    add-int v22, v3, v20

    const/16 v19, 0x0

    move-object/from16 v21, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_POS_X:I

    int-to-float v3, v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    const/4 v3, 0x0

    move/from16 v0, v22

    int-to-float v4, v0

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mzOrder:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v9

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_POS_X:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_POS_Y:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_WIDTH:I

    int-to-float v6, v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ITEM_HEIGHT:I

    int-to-float v7, v7

    const/4 v10, 0x2

    invoke-direct/range {v2 .. v10}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v10, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_X:I

    int-to-float v12, v3

    const/4 v13, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_WIDTH:I

    int-to-float v14, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_HEIGHT:I

    int-to-float v15, v3

    const/16 v16, 0x1

    const v17, 0x7f020311

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_Y_OFFSET:I

    add-int v5, v5, v22

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_1
    :goto_1
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    add-int v3, v3, v20

    add-int v22, v22, v3

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setOnSideBarBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;)V

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v21, v2

    goto/16 :goto_0

    :cond_3
    :try_start_2
    new-instance v10, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_HEIGHT:I

    int-to-float v14, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_WIDTH:I

    int-to-float v15, v3

    const/16 v16, 0x1

    const v17, 0x7f020312

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    new-instance v10, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_HEIGHT:I

    int-to-float v14, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_WIDTH:I

    int-to-float v15, v3

    const/16 v16, 0x1

    const v17, 0x7f02007e

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mCommandId:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/subview/SubViewManager;->getCameraEditableSideBar(I)Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mCommandId:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/subview/SubViewManager;->getCameraEditableSideBar(I)Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    move/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setAnchor(ILcom/sec/android/glview/TwGLImage;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v18

    :goto_3
    const-string v3, "TwGLEditableSideBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickSetting IndexOut for index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    return-void

    :catch_1
    move-exception v18

    move-object/from16 v2, v21

    goto :goto_3
.end method

.method public isFavoriteSettingMenu(I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mCommandId:I

    const/16 v5, 0x75

    if-ne v4, v5, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;->mFrontCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;->mFrontCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    if-ne p1, v4, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;->mRearCameraResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v4

    if-ne p1, v4, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public isLaunchSettingMenuByDragStartSideBarItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    return v0
.end method

.method public makeDragBox()Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;
    .locals 8

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_POS_X:I

    int-to-float v2, v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/16 v1, 0x63

    invoke-virtual {v7, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setOnSideBarBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox$OnSideBarBoxCancelListener;)V

    return-object v0
.end method

.method public onCancelDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 0

    return-void
.end method

.method public onDragEndItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->removeEmptyItem(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->resetOrder()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    return-void
.end method

.method public onDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->SIDEBAR_BOUNDARY_LINE:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->addEmptyItem(FF)V

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    if-eq v1, v0, :cond_3

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;->setEditableSideBarBlueAreaVisibility(I)V

    :cond_6
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mNeedToRemoveBox:Z

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->removeEmptyItem(Z)V

    goto :goto_0
.end method

.method public onDragStartItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 6

    const/16 v5, 0x1b

    const/4 v3, 0x1

    instance-of v2, p1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getViewToDrag()Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLocatedInSideBar:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->getFavoriteSettingsMenu()Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->isFavoriteSettingMenu(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;->setEditableSideBarAreaVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mFavoriteSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLFavoriteSettingsMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v2, 0x1c21

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLSettingsMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v4

    invoke-static {v5, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setshowEditableShortcutGuideDialog(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->resetOrder()V

    :cond_0
    return-void
.end method

.method public onSideBarBoxCancelListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->removeEmptyItem(Z)V

    return-void
.end method

.method public refreshAnchors()V
    .locals 11

    const/4 v10, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x6d

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    const v4, 0x7f0a011d

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_HEIGHT:I

    int-to-float v5, v5

    const/4 v6, 0x1

    const v7, 0x7f02007e

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v10}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9, v0}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isSubWindowEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->refreshAnchorsForSubWindow()V

    :cond_4
    return-void
.end method

.method public refreshAnchorsForSubWindow()V
    .locals 14

    const/4 v6, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

    const/4 v11, 0x0

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v10}, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;->getTopBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v0, v11, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    const/4 v8, 0x0

    :goto_0
    iget-object v0, v11, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    iget-object v0, v11, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->getCameraEditableSideBar(I)Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/subview/SubViewManager;->getCameraEditableSideBar(I)Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setAnchor(ILcom/sec/android/glview/TwGLImage;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v12}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_X:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->getCurrentTop()F

    move-result v3

    const v4, 0x7f0a011d

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->EFFECT_ANCHOR_WIDTH:I

    int-to-float v5, v5

    const v7, 0x7f02007e

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v12}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_HEIGHT:I

    int-to-float v4, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_WIDTH:I

    int-to-float v5, v2

    const v7, 0x7f020312

    move v2, v13

    move v3, v13

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v12}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method public relocateItem()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-gez v13, :cond_1

    :cond_0
    return-void

    :cond_1
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->MENU_HEIGHT:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x2

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    sget v14, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_SIDE_MARGIN:I

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    div-int v9, v13, v14

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_FIRST_BOX_POS_Y:I

    add-int v11, v13, v9

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v13, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v13}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v3

    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v8, v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v13, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    :cond_3
    invoke-virtual {v2, v12}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setPrevious(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    invoke-virtual {v2, v10}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNext(Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;)V

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutX()F

    move-result v6

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutY()F

    move-result v7

    const/4 v13, 0x0

    int-to-float v14, v11

    invoke-virtual {v2, v13, v14}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v14, 0x0

    sget v15, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->ANCHOR_POS_Y_OFFSET:I

    add-int/2addr v15, v11

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->DRAGBOX_ITEM_HEIGHT:I

    add-int/2addr v13, v9

    add-int/2addr v11, v13

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutX()F

    move-result v13

    sub-float v4, v13, v6

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->getLayoutY()F

    move-result v13

    sub-float v5, v13, v7

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    neg-float v13, v4

    const/4 v14, 0x0

    neg-float v15, v5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v1, v13, v14, v15, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v13

    float-to-int v13, v13

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v14

    float-to-int v14, v14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/glview/TwGLContext;->getScreenWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/glview/TwGLContext;->getScreenHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    const-wide/16 v13, 0xc8

    invoke-virtual {v1, v13, v14}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v13, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v13}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    const/16 v13, 0x63

    if-eq v3, v13, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/glview/TwGLView;->setClipRect(Landroid/graphics/Rect;)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method public removeEmptyItem(Z)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v3, 0x63

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mItemAnchorList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mTempAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->relocateItem()V

    return-void
.end method

.method public resetEditableMenu()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mCommandId:I

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->getSideBarMenuOrderByCommandId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->clear()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->initSideBarItemList()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->refreshAnchors()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    return-void
.end method

.method public resetOrder()V
    .locals 6

    const/4 v5, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setNormalBGVisibility(I)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;->setFocusBGVisibility(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->saveOrder()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->refreshAnchors()V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEditableSideBarVisibility(I)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBarDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
