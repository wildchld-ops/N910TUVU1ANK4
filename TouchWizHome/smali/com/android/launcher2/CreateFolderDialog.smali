.class public Lcom/android/launcher2/CreateFolderDialog;
.super Landroid/app/DialogFragment;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;
    }
.end annotation


# static fields
.field private static final FIND_NEW_POS_KEY:Ljava/lang/String; = "FIND_NEW_POSITION"

.field private static final FOLDER_TITLE_KEY:Ljava/lang/String; = "FOLDER_TITLE"

.field private static final ITEM_DESTINATION_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_DESTINATION_CONTAINER_ID"

.field private static final ITEM_ID_KEY:Ljava/lang/String; = "ITEM_ID"

.field private static final ITEM_ORIGIN_CONTAINER_ID_KEY:Ljava/lang/String; = "ITEM_ORIGIN_CONTAINER_ID"

.field private static final ORIGINAL_CONTAINER_CELL_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_CELL"

.field private static final ORIGINAL_CONTAINER_SCREEN_KEY:Ljava/lang/String; = "ORIGINAL_CONTAINER_SCREEN"

.field private static final REMOVE_ITEM_KEY:Ljava/lang/String; = "REMOVE_ITEM"

.field static okButtonSelected:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "CreateFolderDialog"


# instance fields
.field private color:Lcom/android/launcher2/Folder$FolderColor;

.field dialog:Landroid/app/Dialog;

.field private mCreateFolderColor:I

.field mCreateFolderDialog:Landroid/widget/LinearLayout;

.field private mDestinationContainerId:J

.field private mDismissDialog:Z

.field private mFindNewPosition:Z

.field mFolderAddButton:Landroid/widget/ImageView;

.field mFolderAddButtonDivider:Landroid/widget/ImageView;

.field private mFolderChildItem:Lcom/android/launcher2/BaseItem;

.field mFolderColorDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field mFolderColorViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mFolderOptionButton:Landroid/widget/ImageView;

.field mFolderOptionView:Landroid/widget/LinearLayout;

.field mFolderTextColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/Folder$FolderColor;",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderTitle:Landroid/widget/EditText;

.field private mForlderTouchListener:Landroid/view/View$OnTouchListener;

.field private mItemId:J

.field mOnColorViewClickListener:Landroid/view/View$OnClickListener;

.field private mOriginContainerId:J

.field private mOriginalContainerCell:I

.field private mOriginalContainerScreen:I

.field private mRemoveItem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iput-wide v2, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iput v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    sget-object v0, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    new-instance v0, Lcom/android/launcher2/CreateFolderDialog$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CreateFolderDialog$1;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mOnColorViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/CreateFolderDialog$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CreateFolderDialog$2;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    iput-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mForlderTouchListener:Landroid/view/View$OnTouchListener;

    iput-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CreateFolderDialog;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 1
    .param p0    # Lcom/android/launcher2/CreateFolderDialog;

    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/CreateFolderDialog;Lcom/android/launcher2/Folder$FolderColor;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 0
    .param p0    # Lcom/android/launcher2/CreateFolderDialog;
    .param p1    # Lcom/android/launcher2/Folder$FolderColor;

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CreateFolderDialog;IIZ)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/CreateFolderDialog;
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CreateFolderDialog;->closeFolderOption(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/CreateFolderDialog;
    .param p1    # Landroid/app/Dialog;

    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doAddMoreApps(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/CreateFolderDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0    # Lcom/android/launcher2/CreateFolderDialog;

    iget-object v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/CreateFolderDialog;Landroid/app/Dialog;)V
    .locals 0
    .param p0    # Lcom/android/launcher2/CreateFolderDialog;
    .param p1    # Landroid/app/Dialog;

    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/CreateFolderDialog;)Z
    .locals 1
    .param p0    # Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {p0}, Lcom/android/launcher2/CreateFolderDialog;->isColorViewFocussed()Z

    move-result v0

    return v0
.end method

.method private closeFolderOption(IIZ)Z
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    if-nez p3, :cond_1

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButtonDivider:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "input_method"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move v3, v4

    goto :goto_0
.end method

.method static createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 10
    .param p0    # Landroid/app/FragmentManager;
    .param p1    # Lcom/android/launcher2/BaseItem;
    .param p2    # J
    .param p4    # J
    .param p6    # Z
    .param p7    # Z
    .param p8    # I
    .param p9    # I

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/launcher2/CreateFolderDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher2/CreateFolderDialog;

    invoke-direct {v0}, Lcom/android/launcher2/CreateFolderDialog;-><init>()V

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->init(Lcom/android/launcher2/BaseItem;JJZZII)V

    const-string v1, "CreateFolderDialog"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;Z)V
    .locals 3
    .param p0    # Landroid/app/FragmentManager;
    .param p1    # Z

    const-string v1, "CreateFolderDialog"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method private doAddMoreApps(Landroid/app/Dialog;)V
    .locals 6
    .param p1    # Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonFromHomeView(Z)V

    invoke-virtual {v3, v0}, Lcom/android/launcher2/MenuAppsGrid;->setFolderTitletoAddButton(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->setFolderColorToAddButton(I)V

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->FOLDER_SELECT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->resetPreCheckedItems()V

    iget-object v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->setCreateFolderAddButtonState(Lcom/android/launcher2/BaseItem;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/launcher2/CreateFolderDialog;->doCreateFolder(Landroid/app/Dialog;)V

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->selectAppsTab()V

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->showAllApps()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private doCreateFolder(Landroid/app/Dialog;)V
    .locals 11
    .param p1    # Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    :cond_1
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FOLDER_DEFAULT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FOLDER_GRAY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FOLDER_RED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FOLDER_YELLOW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->color:Lcom/android/launcher2/Folder$FolderColor;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FOLDER_GREEN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    :cond_7
    iget v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderColor:I

    invoke-interface {v0, v3}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->getCreateFolderColor(I)V

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iget v7, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iget v8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    return-void

    :cond_a
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    :cond_b
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    :cond_e
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto/16 :goto_0

    :cond_f
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto/16 :goto_0

    :cond_10
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private init(Lcom/android/launcher2/BaseItem;JJZZII)V
    .locals 2
    .param p1    # Lcom/android/launcher2/BaseItem;
    .param p2    # J
    .param p4    # J
    .param p6    # Z
    .param p7    # Z
    .param p8    # I
    .param p9    # I

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    iput-wide p2, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/android/launcher2/BaseItem;->mId:J

    iput-wide v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    :cond_0
    iput p8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iput p9, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    iput-wide p4, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iput-boolean p6, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iput-boolean p7, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    return-void
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1
    .param p0    # Landroid/app/FragmentManager;

    if-eqz p0, :cond_0

    const-string v0, "CreateFolderDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isColorViewFocussed()Z
    .locals 4

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public dismissAllowingStateLoss()V
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0
.end method

.method getFolderColorByView(Landroid/view/View;)Lcom/android/launcher2/Folder$FolderColor;
    .locals 6
    .param p1    # Landroid/view/View;

    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    iget-object v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/Launcher;

    const/4 v3, -0x1

    if-ne p2, v3, :cond_4

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    :cond_1
    if-eqz v9, :cond_2

    iget-object v0, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    iget-boolean v5, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    iget-boolean v6, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    iget v7, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    iget v8, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher2/CreateFolderDialog$CreateFolderInterface;->onFolderCreated(Lcom/android/launcher2/BaseItem;Ljava/lang/String;JZZII)V

    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_4
    return-void

    :cond_5
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    :cond_6
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    :cond_7
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto :goto_0

    :cond_8
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x64

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    :cond_9
    iget-object v3, v9, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/HomeView;->findItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v1

    goto :goto_0

    :cond_a
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-wide v4, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->findItemById(J)Lcom/android/launcher2/AppItem;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    iget-wide v3, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-wide/16 v5, -0x66

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 23
    .param p1    # Landroid/os/Bundle;

    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    new-instance v19, Landroid/app/Dialog;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const v21, 0x7f100003

    invoke-direct/range {v19 .. v21}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    const v20, 0x7f030006

    invoke-virtual/range {v19 .. v20}, Landroid/app/Dialog;->setContentView(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v17, v0

    const v19, 0x7f090024

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mForlderTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v19, 0x7f090023

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0f001e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    const/16 v21, 0x1e

    invoke-static/range {v20 .. v21}, Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string v19, "ITEM_ID"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    const-string v19, "ITEM_ORIGIN_CONTAINER_ID"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    const-string v19, "ITEM_DESTINATION_CONTAINER_ID"

    const-wide/16 v20, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    const-string v19, "REMOVE_ITEM"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    const-string v19, "FIND_NEW_POSITION"

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    const-string v19, "ORIGINAL_CONTAINER_SCREEN"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    const-string v19, "ORIGINAL_CONTAINER_CELL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    const-string v19, "FOLDER_TITLE"

    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x66

    cmp-long v19, v19, v21

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    move-wide/from16 v19, v0

    const-wide/16 v21, -0x66

    cmp-long v19, v19, v21

    if-nez v19, :cond_1

    :cond_0
    sget-object v19, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v19

    if-nez v19, :cond_1

    const/4 v4, 0x1

    :cond_1
    const v19, 0x7f09002a

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    const v19, 0x7f09002b

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v19, 0x7f09002c

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const v19, 0x7f090025

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_7

    const/4 v5, 0x0

    :goto_1
    if-eqz v12, :cond_4

    sget-object v19, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_8

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz v5, :cond_3

    sget-boolean v19, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v19, :cond_3

    new-instance v19, Lcom/android/launcher2/CreateFolderDialog$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$3;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v19, Lcom/android/launcher2/CreateFolderDialog$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$4;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_3
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderChildItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    sget-object v19, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppModel;->getSecretItems()Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v19

    if-gtz v19, :cond_4

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v19, 0x7f090026

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    const v19, 0x7f090028

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    const v19, 0x7f090029

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    const v19, 0x7f090027

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButtonDivider:Landroid/widget/ImageView;

    sget-boolean v19, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/CreateFolderDialog$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$5;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/FocusHelper;->CREATE_FOLDER_OPTIONS_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    const v19, 0x7f0f00c6

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/CreateFolderDialog$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/android/launcher2/CreateFolderDialog$6;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/content/res/Resources;Landroid/widget/Toast;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    const/16 v20, 0x3035

    invoke-virtual/range {v19 .. v20}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    const v20, 0x7f0c0001

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    const/16 v21, 0x19

    invoke-virtual/range {v19 .. v21}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    :cond_5
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v19, 0x7f090037

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v19, 0x7f090038

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v19, 0x7f090039

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v19, 0x7f09003a

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v19, 0x7f09003b

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mOnColorViewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v19, Lcom/android/launcher2/FocusHelper;->CREATE_FOLDER_COLOR_VIEW_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_3

    :cond_6
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const v19, 0x7f090026

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_1

    :cond_8
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorDrawables:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorDrawables:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f020058

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorDrawables:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f020059

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorDrawables:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f02005b

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorDrawables:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f02005c

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorDrawables:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f02005a

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CreateFolderDialog;->mFolderTextColors:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTextColors:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_DEFAULT:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f0b0056

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTextColors:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GRAY:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f0b0057

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTextColors:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_RED:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f0b0059

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTextColors:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_YELLOW:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f0b005a

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTextColors:Ljava/util/HashMap;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/Folder$FolderColor;->FOLDER_GREEN:Lcom/android/launcher2/Folder$FolderColor;

    const v21, 0x7f0b0058

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0f005b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/CreateFolderDialog$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v13, v2}, Lcom/android/launcher2/CreateFolderDialog$7;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/content/res/Resources;Landroid/widget/Toast;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setHoverPopupType(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    const/16 v20, 0x3035

    invoke-virtual/range {v19 .. v20}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    const v20, 0x7f0c0001

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v20

    const/16 v21, 0x19

    invoke-virtual/range {v19 .. v21}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    :cond_a
    sget-boolean v19, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v19, :cond_b

    sget-object v19, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v20, "create_folder"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/CreateFolderDialog$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$8;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v20, 0x25

    invoke-virtual/range {v19 .. v20}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/CreateFolderDialog$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CreateFolderDialog$9;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/launcher2/CreateFolderDialog$10;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/CreateFolderDialog$10;-><init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/view/View;)V

    invoke-virtual/range {v19 .. v20}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    if-eqz v4, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->dialog:Landroid/app/Dialog;

    move-object/from16 v19, v0

    return-object v19

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionButton:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderOptionView:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CreateFolderDialog;->mFolderAddButtonDivider:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher2/CreateFolderDialog$11;

    invoke-direct {v1, p0}, Lcom/android/launcher2/CreateFolderDialog$11;-><init>(Lcom/android/launcher2/CreateFolderDialog;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_1
    return-void

    :cond_2
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/CreateFolderDialog;->okButtonSelected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    goto :goto_0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I
    .param p3    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "ITEM_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mItemId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ITEM_ORIGIN_CONTAINER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginContainerId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "ITEM_DESTINATION_CONTAINER_ID"

    iget-wide v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mDestinationContainerId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "REMOVE_ITEM"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mRemoveItem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "FIND_NEW_POSITION"

    iget-boolean v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFindNewPosition:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "FOLDER_TITLE"

    iget-object v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ORIGINAL_CONTAINER_SCREEN"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerScreen:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ORIGINAL_CONTAINER_CELL"

    iget v1, p0, Lcom/android/launcher2/CreateFolderDialog;->mOriginalContainerCell:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getShowsDialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CreateFolderDialog;->mDismissDialog:Z

    invoke-virtual {p0}, Lcom/android/launcher2/CreateFolderDialog;->dismissAllowingStateLoss()V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

.method setFolderColor(Lcom/android/launcher2/Folder$FolderColor;Z)V
    .locals 11
    .param p1    # Lcom/android/launcher2/Folder$FolderColor;
    .param p2    # Z

    invoke-static {}, Lcom/android/launcher2/Folder$FolderColor;->values()[Lcom/android/launcher2/Folder$FolderColor;

    move-result-object v0

    array-length v6, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v3, v0, v4

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorViews:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02004c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTitle:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderTextColors:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v10, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mFolderColorDrawables:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, Lcom/android/launcher2/CreateFolderDialog;->mCreateFolderDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5, v8, v7, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
