.class public Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLEditableTopBar.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;
.implements Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox$OnSideBarBoxCancelListener;


# static fields
.field public static final ANCHOR_HEIGHT:I

.field public static final ANCHOR_POS_X:I = 0x280

.field public static final ANCHOR_POS_X_OFFSET:I = 0xf0

.field public static final ANCHOR_POS_Y:I = 0x20

.field public static final ANCHOR_WIDTH:I

.field public static final DRAGBOX_FIRST_BOX_POS_X:I

.field public static final DRAGBOX_ITEM_HEIGHT:I

.field public static final DRAGBOX_ITEM_WIDTH:I

.field public static final DRAGBOX_SIDE_MARGIN:I

.field public static final EDITABLE_AREA_POS_X:I

.field public static final EDITABLE_AREA_POS_Y:I

.field public static final EFFECT_ANCHOR_HEIGHT:I

.field public static final EFFECT_ANCHOR_WIDTH:I

.field public static final ITEM_HEIGHT:I

.field public static final ITEM_POS_X:I

.field public static final ITEM_POS_Y:I

.field public static final ITEM_WIDTH:I

.field public static final MAX_NUMBER_OF_TOPBAR_ITEM:I

.field public static final MENU_HEIGHT:I

.field public static final MENU_WIDTH:I

.field private static final TAG:Ljava/lang/String; = "TwGLEditableTopBar"

.field public static final TOPBAR_BOUNDARY_LINE:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mCommandId:I

.field private mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

.field public mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;",
            ">;"
        }
    .end annotation
.end field

.field mEditQuickSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

.field private mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

.field private mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

.field private mIsLaunchSettingMenuByDragStartSideBarItem:Z

.field private mIsLocatedInSideBar:Z

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

.field private mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

.field private mNeedToRemoveBox:Z

.field private mzOrder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a042f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->MENU_WIDTH:I

    const v0, 0x7f0a0430

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->MENU_HEIGHT:I

    const v0, 0x7f0a0431

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->EDITABLE_AREA_POS_X:I

    const v0, 0x7f0a0432

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->EDITABLE_AREA_POS_Y:I

    const v0, 0x7f0a0434

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ITEM_WIDTH:I

    const v0, 0x7f0a0435

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ITEM_HEIGHT:I

    const v0, 0x7f0a0436

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ITEM_POS_X:I

    const v0, 0x7f0a0437

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ITEM_POS_Y:I

    const v0, 0x7f0a0438

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_ITEM_WIDTH:I

    const v0, 0x7f0a0439

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_ITEM_HEIGHT:I

    const v0, 0x7f0a043a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_FIRST_BOX_POS_X:I

    const v0, 0x7f0a043b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_SIDE_MARGIN:I

    const v0, 0x7f0a0433

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->TOPBAR_BOUNDARY_LINE:I

    const v0, 0x7f0b003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->MAX_NUMBER_OF_TOPBAR_ITEM:I

    const v0, 0x7f0a0031

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ANCHOR_WIDTH:I

    const v0, 0x7f0a0030

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ANCHOR_HEIGHT:I

    const v0, 0x7f0a0033

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->EFFECT_ANCHOR_WIDTH:I

    const v0, 0x7f0a0034

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->EFFECT_ANCHOR_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFII)V
    .locals 8
    .param p1    # Lcom/sec/android/app/camera/Camera;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # I
    .param p7    # I

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLocatedInSideBar:Z

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mNeedToRemoveBox:Z

    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mzOrder:I

    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mCommandId:I

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->initTopBarItemList()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->refreshAnchors()V

    return-void
.end method


# virtual methods
.method public addEmptyItem(FF)V
    .locals 4
    .param p1    # F
    .param p2    # F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->MAX_NUMBER_OF_TOPBAR_ITEM:I

    if-lt v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->makeDragBox()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    sub-float v2, p1, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->MENU_WIDTH:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->MENU_WIDTH:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    :goto_1
    float-to-int v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->coordiXtoCellPosition(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(ILcom/sec/android/glview/TwGLView;)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->relocateItem()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v2

    sub-float v2, p1, v2

    goto :goto_1
.end method

.method public coordiXtoCellPosition(I)I
    .locals 2
    .param p1    # I

    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->MENU_WIDTH:I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    div-int v0, p1, v0

    return v0
.end method

.method public getNumberOfEditableTopBarItem()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 5
    .param p1    # I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v4, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_0

    :cond_1
    return v3
.end method

.method public initTopBarItemList()V
    .locals 14

    const/4 v1, 0x0

    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_FIRST_BOX_POS_X:I

    const/4 v11, 0x0

    move-object v12, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v2

    if-ge v11, v2, :cond_2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->MAX_NUMBER_OF_TOPBAR_ITEM:I

    if-ge v11, v2, :cond_2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_ITEM_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_ITEM_HEIGHT:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;)V

    int-to-float v2, v13

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v2, v11}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mzOrder:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v8

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ITEM_POS_X:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ITEM_POS_Y:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ITEM_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->ITEM_HEIGHT:I

    int-to-float v6, v6

    const/16 v9, 0x9

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_ITEM_WIDTH:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_SIDE_MARGIN:I

    add-int/2addr v2, v3

    add-int/2addr v13, v2

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mFirstBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mCommandId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/subview/SubViewManager;->getCameraEditableSideBar(I)Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getSubViewManager()Lcom/sec/android/app/camera/subview/SubViewManager;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mCommandId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/subview/SubViewManager;->getCameraEditableSideBar(I)Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;

    move-result-object v2

    invoke-virtual {v7}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v3

    invoke-virtual {v2, v11, v3}, Lcom/sec/android/app/camera/subview/SubViewEditableSideBar;->setEditableShortcut(II)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->setOnSideBarBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox$OnSideBarBoxCancelListener;)V

    add-int/lit8 v11, v11, 0x1

    move-object v12, v1

    goto/16 :goto_0

    :catch_0
    move-exception v10

    move-object v1, v12

    :goto_2
    const-string v2, "TwGLEditableTopBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickSetting IndexOut for index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void

    :catch_1
    move-exception v10

    goto :goto_2
.end method

.method public isLaunchSettingMenuByDragStartSideBarItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    return v0
.end method

.method public makeDragBox()Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_ITEM_WIDTH:I

    int-to-float v4, v3

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_ITEM_HEIGHT:I

    int-to-float v5, v3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mLastBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;-><init>(Lcom/sec/android/app/camera/Camera;FFFFLcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->setNormalBGVisibility(I)V

    new-instance v7, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    const/16 v1, 0x63

    invoke-virtual {v7, v1}, Lcom/sec/android/glview/TwGLView;->setTag(I)V

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->addView(Lcom/sec/android/glview/TwGLView;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDragDropBoxListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDragDropBoxListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setOnDropListener(Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox$OnDropListener;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->setOnSideBarBoxCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox$OnSideBarBoxCancelListener;)V

    return-object v0
.end method

.method public onCancelDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 0
    .param p1    # Lcom/sec/android/glview/TwGLView;

    return-void
.end method

.method public onDragEndItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mNeedToRemoveBox:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mNeedToRemoveBox:Z

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->removeEmptyItem(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->resetOrder()V

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    return-void
.end method

.method public onDragItemInDragDropBox(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 4
    .param p1    # Lcom/sec/android/glview/TwGLView;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F

    const/4 v3, 0x1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->TOPBAR_BOUNDARY_LINE:I

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLocatedInSideBar:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mNeedToRemoveBox:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->addEmptyItem(FF)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLocatedInSideBar:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLocatedInSideBar:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLocatedInSideBar:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->setNormalBGVisibility(I)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mNeedToRemoveBox:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->removeEmptyItem(Z)V

    goto :goto_0
.end method

.method public onDragStartItemInDragDropBox(Lcom/sec/android/glview/TwGLView;)V
    .locals 5
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/16 v4, 0x87

    const/4 v2, 0x1

    instance-of v1, p1, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    :cond_0
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLocatedInSideBar:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mIsLaunchSettingMenuByDragStartSideBarItem:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mEditQuickSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mEditQuickSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mEditQuickSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mEditQuickSettingMenu:Lcom/sec/android/app/camera/glwidget/TwGLEditQuickSettingsMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    invoke-static {v4, v1, v2, v3}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()Z

    :cond_2
    return-void
.end method

.method public onDrop(Lcom/sec/android/glview/TwGLView;)V
    .locals 2
    .param p1    # Lcom/sec/android/glview/TwGLView;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setshowEditableShortcutGuideDialog(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->resetOrder()V

    :cond_0
    return-void
.end method

.method public onSideBarBoxCancelListener(Lcom/sec/android/glview/TwGLView;)V
    .locals 1
    .param p1    # Lcom/sec/android/glview/TwGLView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->removeEmptyItem(Z)V

    return-void
.end method

.method public refreshAnchors()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getSideBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraBaseMenu()Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseMenu;->getSideBar()Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableSideBar;->refreshAnchorsForSubWindow()V

    :cond_0
    return-void
.end method

.method public relocateItem()V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-gez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_FIRST_BOX_POS_X:I

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v6, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    :cond_3
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->setPrevious(Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;)V

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->setNext(Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;)V

    int-to-float v6, v4

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/glview/TwGLView;->moveLayoutAbsolute(FF)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/sec/android/glview/TwGLViewGroup;->updateLayout(Z)V

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_ITEM_WIDTH:I

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->DRAGBOX_SIDE_MARGIN:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLContext;->getRootView()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLView;->getClipRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/glview/TwGLView;->setClipRect(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeEmptyItem(Z)V
    .locals 4
    .param p1    # Z

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    check-cast v3, Lcom/sec/android/app/camera/glwidget/TwGLItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItem;->getCommandId()I

    move-result v1

    const/16 v3, 0x63

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragBox:Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    if-eq v3, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->relocateItem()V

    return-void
.end method

.method public resetEditableMenu()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->refreshAnchors()V

    return-void
.end method

.method public resetOrder()V
    .locals 6

    const/4 v5, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->setNormalBGVisibility(I)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;->setFocusBGVisibility(I)V

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
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->resetOrder(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mEditableResource:Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/resourcedata/EditableResourceDataBase;->saveOrder()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->refreshAnchors()V

    return-void
.end method

.method public setDraggable(Z)V
    .locals 3
    .param p1    # Z

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBar;->mDragDropBoxList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLEditableTopBarDragDropBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDragDropBox;->setDraggable(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
