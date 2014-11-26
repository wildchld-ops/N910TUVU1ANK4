.class public Lcom/android/launcher2/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Hotseat$3;
    }
.end annotation


# static fields
.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Hotseat"


# instance fields
.field private isFromDND:Z

.field private isSecretItem:Z

.field private isWidgetItem:Z

.field private itemFromMenu:Z

.field private mBackground:Landroid/view/View;

.field mContent:Lcom/android/launcher2/CellLayoutHotseat;

.field private mDragInContentArea:Z

.field private mEntered:Z

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIsLandscape:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMaxCellCount:I

.field private mShowHotseatTitle:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private tmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher2/Hotseat$2;

    invoke-direct {v0}, Lcom/android/launcher2/Hotseat$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/launcher2/Hotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Hotseat$1;-><init>(Lcom/android/launcher2/Hotseat;)V

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isSecretItem:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeView;
    .locals 1
    .param p0    # Lcom/android/launcher2/Hotseat;

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Hotseat;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/Hotseat;

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    return v0
.end method

.method public static normalizeContents(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v3, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eq v3, v1, :cond_0

    iput v1, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {p0, v0}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/HomeItem;)Z
    .locals 1
    .param p1    # Lcom/android/launcher2/HomeItem;

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutHotseat;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0
.end method

.method checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z
    .locals 9
    .param p1    # Lcom/android/launcher2/DragState;
    .param p2    # I
    .param p3    # Landroid/view/View;

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_3

    :cond_0
    move v2, v5

    :goto_0
    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_1
    move v5, v6

    :cond_2
    :goto_2
    return v5

    :cond_3
    move v2, v6

    goto :goto_0

    :pswitch_0
    iget-object v7, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v7

    if-eqz v7, :cond_4

    instance-of v7, p3, Lcom/android/launcher2/AllappsIcon;

    if-nez v7, :cond_2

    :cond_4
    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_5
    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-nez v7, :cond_6

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_6
    if-nez v3, :cond_8

    if-nez v2, :cond_8

    if-eq p3, v4, :cond_8

    if-eqz p3, :cond_8

    iget-object v7, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v7

    if-eqz v7, :cond_8

    instance-of v6, p3, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_7

    invoke-static {v4}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v1

    instance-of v6, v1, Lcom/android/launcher2/CellLayoutNoGap;

    if-nez v6, :cond_2

    :cond_7
    invoke-virtual {p1, p3}, Lcom/android/launcher2/DragState;->initiateSwap(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_1

    goto :goto_2

    :pswitch_1
    iget-boolean v7, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v7, :cond_1

    if-nez v3, :cond_2

    if-eqz p3, :cond_1

    if-eq p3, v4, :cond_1

    goto :goto_2

    :pswitch_2
    iput-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    goto :goto_1

    :pswitch_3
    iget-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v5, :cond_1

    iput-boolean v6, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    goto :goto_1

    :pswitch_4
    if-eqz p3, :cond_1

    instance-of v5, p3, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_1

    check-cast p3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {p3}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 12
    .param p1    # Lcom/android/launcher2/Workspace;
    .param p2    # Lcom/android/launcher2/Workspace$State;
    .param p3    # Lcom/android/launcher2/Workspace$State;
    .param p4    # Lcom/android/launcher2/BaseItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v8, :cond_a

    const/4 v7, 0x1

    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v8, :cond_0

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v9, :cond_1

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v9, :cond_1

    move-object/from16 v0, p4

    instance-of v8, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v8, :cond_c

    :cond_1
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getFromDND()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    move-object/from16 v0, p4

    iget-boolean v8, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isSecretItem:Z

    :cond_2
    if-nez v7, :cond_3

    if-eqz v4, :cond_d

    :cond_3
    const v8, 0x7f050001

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v8, 0x7f05000c

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->setAllAppsIconDimState(ZZZ)V

    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    if-eqz v8, :cond_6

    :cond_5
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V

    :cond_6
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isSecretItem:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V

    :cond_7
    :goto_2
    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq p3, v8, :cond_8

    sget-object v8, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v8, :cond_11

    :cond_8
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v6

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_11

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8, v5}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v8, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v8, :cond_9

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    sget-object v8, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v8, :cond_0

    if-eqz p4, :cond_b

    const/4 v4, 0x1

    :goto_4
    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    goto :goto_4

    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_d
    const/high16 v8, 0x7f050000

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v8, 0x7f05000d

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->setAllAppsIconDimState(ZZZ)V

    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v8

    if-nez v8, :cond_f

    :cond_e
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    if-nez v8, :cond_f

    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    if-eqz v8, :cond_10

    :cond_f
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    :cond_10
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isSecretItem:Z

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V

    goto/16 :goto_2

    :cond_11
    const v8, 0x7f050001

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getCellXFromOrder(I)I
    .locals 1
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method getCellYFromOrder(II)I
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    sub-int v0, p2, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    :cond_0
    return p1
.end method

.method public getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    return-object v0
.end method

.method isLandscape()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1    # Landroid/animation/Animator;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1    # Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8
    .param p1    # Landroid/animation/Animator;

    const/4 v7, 0x2

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/BaseItem;

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 8
    .param p1    # Landroid/view/DragEvent;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/View;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    :pswitch_1
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    move-object v0, v3

    :goto_1
    iget-object v3, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v3, p0, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    :pswitch_2
    iget-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutHotseat;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iput-boolean v7, v3, Lcom/android/launcher2/CellLayout;->mDrawDragOutlines:Z

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->cancelRealTimeReorder()V

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-static {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->create(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/HotseatSwapAnimator;

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedView;->isHoveringAreaX(F)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/PagedView;->setHoveringSpenIcon(I)V

    const/4 v1, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->isTouchResizeFrame(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reapplyIconViewStyles()V
    .locals 12

    const v11, 0x7f100019

    const v10, 0x7f100018

    const v2, 0x7f100018

    const v8, 0x7f100019

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v4, v10}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v4, v11}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v4, v11}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v6

    iget-object v10, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    :goto_0
    if-ltz v9, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10, v9}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v10, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v10, :cond_1

    move-object v7, v3

    check-cast v7, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v7, v6, v5}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-virtual {v7}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_1
    instance-of v10, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v10, :cond_0

    check-cast v3, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3, v1, v0}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    :cond_2
    invoke-static {v1, v0}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-static {v6, v5}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method resetLayout()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/Utilities;->isCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a0014

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher2/CellLayoutHotseat;->inflateAllAppsIcon(Lcom/android/launcher2/Hotseat;Z)Lcom/android/launcher2/AllappsIcon;

    return-void

    :cond_0
    const v1, 0x7f0a0015

    goto :goto_0
.end method

.method public setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V
    .locals 4
    .param p1    # Lcom/android/launcher2/CellLayoutHotseat;
    .param p2    # Z
    .param p3    # Z

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getPageChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setDragInContentArea(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 4
    .param p1    # Lcom/android/launcher2/HomeView;

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x320

    if-lt v2, v3, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    :goto_0
    const v1, 0x7f0e0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0e0027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayout;->setHomeView(Lcom/android/launcher2/HomeView;)V

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    iget v3, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->setup(ZI)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    goto :goto_0
.end method
