.class public Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLThumbnailListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;
    }
.end annotation


# static fields
.field public static final ITEM_HEIGHT:I

.field public static final ITEM_WIDTH:I

.field private static final MENU_HEIGHT:I

.field private static final MENU_POS_X:I

.field private static final MENU_POS_Y:I

.field private static final MENU_WIDTH:I

.field private static final SCREEN_WIDTH:F

.field private static final THUMBNAIL_ITEM_HEIGHT:I

.field private static final THUMBNAIL_ITEM_WIDTH:I

.field public static final THUMBNAIL_LIST_BUTTON_WIDTH:I

.field private static final THUMBNAIL_TYPE_BUTTON_MARGIN:I


# instance fields
.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mCloseButton:Lcom/sec/android/glview/TwGLButton;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mIsMenuClosed:Z

.field private mItemList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLModeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Lcom/sec/android/glview/TwGLList;

.field private mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mMute:Z

.field private mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mShowAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v1, 0x7f0a0006

    const v0, 0x7f0a0177

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->MENU_POS_X:I

    const v0, 0x7f0a0178

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->MENU_POS_Y:I

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->MENU_WIDTH:I

    const v0, 0x7f0a0179

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->MENU_HEIGHT:I

    const v0, 0x7f0a017a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_ITEM_WIDTH:I

    const v0, 0x7f0a017b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_ITEM_HEIGHT:I

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->SCREEN_WIDTH:F

    const v0, 0x7f0a002e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_LIST_BUTTON_WIDTH:I

    const v0, 0x7f0a017c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    const v0, 0x7f0a0017

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->ITEM_WIDTH:I

    const v0, 0x7f0a0018

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->ITEM_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;IIZ)V
    .locals 12

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mIsMenuClosed:Z

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMute:Z

    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->MENU_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->MENU_POS_Y:I

    int-to-float v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    new-instance v1, Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->ITEM_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->MENU_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->MENU_HEIGHT:I

    int-to-float v6, v6

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLList;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLList;->setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLList;->setInternalFocus(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p2}, Lcom/sec/android/glview/TwGLViewGroup;->setTag(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    new-instance v1, Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_LIST_BUTTON_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    const v5, 0x7f02002c

    const v6, 0x7f02002d

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v11

    const/16 v1, 0x23

    if-ne v11, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c023b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getTitle()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setSubTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    const/16 v1, 0x2f

    if-ne v11, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    const/4 v9, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    if-eqz v10, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v10, v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->setNextFocusUpView(Lcom/sec/android/glview/TwGLView;)Z

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    const/16 v1, 0x2f

    if-ne v11, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setNextFocusDownView(Lcom/sec/android/glview/TwGLView;)Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideInAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    move/from16 v0, p7

    invoke-static {v1, v0, v2}, Lcom/sec/android/glview/TwGLUtil;->getSlideOutAnimation(Lcom/sec/android/glview/TwGLView;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnAnimationEventListener(Lcom/sec/android/glview/TwGLView$OnAnimationEventListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mResource:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMute:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/glview/TwGLList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/glview/TwGLViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_ITEM_WIDTH:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_ITEM_HEIGHT:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->THUMBNAIL_TYPE_BUTTON_MARGIN:I

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mItemList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    return-void
.end method

.method public disableAnimation()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public enableAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mShowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->setShowAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->setHideAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mViewId:I

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->disablePreviewCallbackManager()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    :cond_1
    return v2
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c023b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLButton;->requestFocus()Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->showScrollBar()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, v4}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-static {}, Lcom/sec/android/glview/TwGLUtil;->getAlphaOnAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return v4

    :cond_1
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->isActive()Z

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->showEffectMenu()V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLButton;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideWaitingAnimation()V

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->hideEffectMenu()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mIsMenuClosed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mIsMenuClosed:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onHide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->mIsThumbnailListMenuOpen:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    return-void
.end method

.method protected onShow()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->refreshMenuPosition()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mIsMenuClosed:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->getCurrentSelectedIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLList;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->requestFocus()Z

    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mCloseButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mIsMenuClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SUB_MENU_SOUND:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/Camera;->playSound(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mIsMenuClosed:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshMenuPosition()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->SCREEN_WIDTH:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->SCREEN_WIDTH:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mList:Lcom/sec/android/glview/TwGLList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLList;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000

    div-float v0, v1, v2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLThumbnailListMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    return-void
.end method
